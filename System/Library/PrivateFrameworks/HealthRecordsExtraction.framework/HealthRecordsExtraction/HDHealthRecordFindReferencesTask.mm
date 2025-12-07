@interface HDHealthRecordFindReferencesTask
- (BOOL)_canProcessResource:(id)resource;
- (BOOL)_isIrretrievableReference:(id)reference serverBaseURL:(id)l;
- (BOOL)_resourceReference:(id)reference containedInResource:(id)resource;
- (BOOL)processContainedResourcesInProcessingContext:(id)context error:(id *)error;
- (HDHealthRecordFindReferencesTask)init;
- (HDHealthRecordFindReferencesTask)initWithRuleset:(id)ruleset;
- (id)_filterResources:(id)resources;
- (id)_processedContainReferencesResourceWithResource:(id)resource processingContext:(id)context rule:(id)rule allResources:(id)resources;
- (id)_processedRetrieveReferencesResourceWithResource:(id)resource processingContext:(id)context rule:(id)rule allResources:(id)resources;
- (id)_resourceForReference:(id)reference containedInResource:(id)resource error:(id *)error;
- (id)_resourceReference:(id)reference presentInResources:(id)resources;
- (id)debugDescription;
- (id)processResourcesForReferenceExtractionRequest:(id)request error:(id *)error;
@end

@implementation HDHealthRecordFindReferencesTask

- (HDHealthRecordFindReferencesTask)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthRecordFindReferencesTask)initWithRuleset:(id)ruleset
{
  rulesetCopy = ruleset;
  if (!rulesetCopy)
  {
    [(HDHealthRecordFindReferencesTask *)a2 initWithRuleset:?];
  }

  v10.receiver = self;
  v10.super_class = HDHealthRecordFindReferencesTask;
  v7 = [(HDHealthRecordFindReferencesTask *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_ruleset, ruleset);
  }

  return v8;
}

- (id)processResourcesForReferenceExtractionRequest:(id)request error:(id *)error
{
  v122 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = objc_alloc_init(HDReferenceExtractionProcessingContext);
  v94 = objc_alloc_init(HKHealthRecordsExtractionRouter);
  resources = [requestCopy resources];
  if (resources)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    resources2 = [requestCopy resources];
    v91 = [v8 initWithArray:resources2];
  }

  else
  {
    v91 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v95 = v6;
  selfCopy = self;

  v93 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [requestCopy serverBaseURL];
  v90 = v89 = requestCopy;
  [requestCopy FHIRResourceData];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v10 = v111 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v108 objects:v121 count:16];
  v92 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v109;
    v15 = 0x277D12000uLL;
    while (1)
    {
      v16 = 0;
      obj = v12;
      do
      {
        if (*v109 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v108 + 1) + 8 * v16);
        v18 = *(v15 + 880);
        v107 = 0;
        v19 = [v18 objectWithResourceData:v17 error:&v107];
        incompleteResources = v107;
        if (!v19)
        {
          v41 = v13;
          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v85 = v42;
            v86 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
            v87 = [v17 debugDescription];
            *buf = 138543874;
            v116 = v86;
            v117 = 2114;
            v118 = v87;
            v119 = 2114;
            v120 = incompleteResources;
            _os_log_error_impl(&dword_251CC8000, v85, OS_LOG_TYPE_ERROR, "%{public}@: failed to parse JSON data %{public}@: %{public}@", buf, 0x20u);
          }

          v43 = [MEMORY[0x277CCA9B8] hrs_resourceParsingErrorWithUnderlyingError:incompleteResources];
          nextPageURL = v43;
          v45 = v89;
          v46 = v95;
          if (v43)
          {
            if (error)
            {
              v47 = v43;
              v48 = 0;
              *error = nextPageURL;
LABEL_59:
              unresolvableReferences = nextPageURL;
              v83 = v92;
              completeResources = v92;
              goto LABEL_60;
            }

            _HKLogDroppedError();
          }

          v48 = 0;
          goto LABEL_59;
        }

        detectedResourceType = [v19 detectedResourceType];
        v22 = [detectedResourceType isEqualToString:@"Bundle"];

        if (!v22)
        {
          v25 = v14;
          v26 = v13;
          v27 = MEMORY[0x277D12380];
          jSONObject = [v19 JSONObject];
          sourceURL = [v19 sourceURL];
          fHIRVersion = [v19 FHIRVersion];
          v105 = incompleteResources;
          v31 = [v27 resourceObjectWithJSONObject:jSONObject sourceURL:sourceURL FHIRVersion:fHIRVersion receivedDate:v93 extractionHints:0 error:&v105];
          v24 = v105;

          if (v31)
          {
            [v91 addObject:v31];
            v10 = v92;
            goto LABEL_17;
          }

          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC2C0];
          v10 = v92;
          v13 = v26;
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v36 = v34;
            v37 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
            *buf = 138543618;
            v116 = v37;
            v117 = 2114;
            v118 = v24;
            _os_log_error_impl(&dword_251CC8000, v36, OS_LOG_TYPE_ERROR, "%{public}@: invalid resourceObject error: %{public}@", buf, 0x16u);

LABEL_17:
            v13 = v26;
          }

          v14 = v25;
          v15 = 0x277D12000;
          v12 = obj;
          goto LABEL_22;
        }

        if (v13)
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            [(HDHealthRecordFindReferencesTask *)v113 processResourcesForReferenceExtractionRequest:v23 error:selfCopy, &v114];
          }

          v24 = incompleteResources;
        }

        else
        {
          v106 = incompleteResources;
          v13 = [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:v19 serverBaseURL:v90 error:&v106];
          v24 = v106;

          if (v13)
          {
            entries = [v13 entries];
            v33 = [(HDHealthRecordFindReferencesTask *)selfCopy _filterResources:entries];

            [v91 addObjectsFromArray:v33];
          }

          else
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              v38 = v35;
              v39 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
              *buf = 138543618;
              v116 = v39;
              v117 = 2114;
              v118 = v24;
              _os_log_error_impl(&dword_251CC8000, v38, OS_LOG_TYPE_ERROR, "%{public}@: invalid bundle error: %{public}@", buf, 0x16u);
            }

            v13 = 0;
          }
        }

LABEL_22:

        v16 = v16 + 1;
      }

      while (v12 != v16);
      v40 = [v10 countByEnumeratingWithState:&v108 objects:v121 count:16];
      v12 = v40;
      if (!v40)
      {
        goto LABEL_36;
      }
    }
  }

  v13 = 0;
LABEL_36:
  v88 = v13;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obja = v91;
  v49 = [obja countByEnumeratingWithState:&v101 objects:v112 count:16];
  v46 = v95;
  p_isa = &selfCopy->super.isa;
  if (v49)
  {
    v51 = v49;
    v52 = *v102;
    do
    {
      v53 = 0;
      v98 = v51;
      do
      {
        if (*v102 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v101 + 1) + 8 * v53);
        if ([p_isa _canProcessResource:v54])
        {
          v55 = [p_isa[1] rulesetForFHIRResourceObject:v54];
          if (v55)
          {
            v56 = [p_isa _processedContainReferencesResourceWithResource:v54 processingContext:v46 rule:v55 allResources:obja];
            v57 = [p_isa _processedRetrieveReferencesResourceWithResource:v56 processingContext:v46 rule:v55 allResources:obja];

            [(HDReferenceExtractionProcessingContext *)v46 recordProcessedResource:v57];
          }

          else
          {
            releaseSupport = [p_isa[1] releaseSupport];
            fHIRRelease = [releaseSupport FHIRRelease];
            v63 = [(HKHealthRecordsExtractionRouter *)v94 supportedResourceTypesForRelease:fHIRRelease];
            identifier = [v54 identifier];
            resourceType = [identifier resourceType];
            v66 = [v63 containsObject:resourceType];

            if (v66)
            {
              _HKInitializeLogging();
              v67 = *MEMORY[0x277CCC2C0];
              p_isa = &selfCopy->super.isa;
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v72 = v67;
                v73 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
                identifier2 = [v54 identifier];
                resourceType2 = [identifier2 resourceType];
                *buf = 138543618;
                v116 = v73;
                v117 = 2114;
                v118 = resourceType2;
                _os_log_debug_impl(&dword_251CC8000, v72, OS_LOG_TYPE_DEBUG, "%{public}@ processResourcesForReferenceExtractionRequest: resource type %{public}@. Skipping Reference extraction.", buf, 0x16u);
              }

              v46 = v95;
              [(HDReferenceExtractionProcessingContext *)v95 recordProcessedResource:v54];
            }

            else
            {
              identifier3 = [v54 identifier];
              resourceType3 = [identifier3 resourceType];
              v70 = [resourceType3 isEqualToString:@"Medication"];

              v46 = v95;
              p_isa = &selfCopy->super.isa;
              if ((v70 & 1) == 0)
              {
                _HKInitializeLogging();
                v71 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                {
                  v76 = v71;
                  v77 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
                  identifier4 = [v54 identifier];
                  resourceType4 = [identifier4 resourceType];
                  *buf = 138543618;
                  v116 = v77;
                  v117 = 2114;
                  v118 = resourceType4;
                  _os_log_error_impl(&dword_251CC8000, v76, OS_LOG_TYPE_ERROR, "%{public}@ processResourcesForReferenceExtractionRequest: no extraction rules for resource type %{public}@", buf, 0x16u);
                }
              }
            }
          }

          v51 = v98;
        }

        else
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v59 = v58;
            v60 = [p_isa debugDescription];
            *buf = 138543618;
            v116 = v60;
            v117 = 2114;
            v118 = v54;
            _os_log_error_impl(&dword_251CC8000, v59, OS_LOG_TYPE_ERROR, "%{public}@ processResourcesForReferenceExtractionRequest: cannot process resource: %{public}@", buf, 0x16u);
          }
        }

        ++v53;
      }

      while (v51 != v53);
      v51 = [obja countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v51);
  }

  v80 = objc_alloc(MEMORY[0x277D123C8]);
  completeResources = [(HDReferenceExtractionProcessingContext *)v46 completeResources];
  incompleteResources = [(HDReferenceExtractionProcessingContext *)v46 incompleteResources];
  unresolvableReferences = [(HDReferenceExtractionProcessingContext *)v46 unresolvableReferences];
  v41 = v88;
  nextPageURL = [v88 nextPageURL];
  v48 = [v80 initWithCompleteResources:completeResources incompleteResources:incompleteResources unresolvableReferences:unresolvableReferences nextSearchResultURL:nextPageURL];
  v45 = v89;
  v83 = v92;
LABEL_60:

  return v48;
}

- (id)_processedContainReferencesResourceWithResource:(id)resource processingContext:(id)context rule:(id)rule allResources:(id)resources
{
  v86 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  contextCopy = context;
  ruleCopy = rule;
  resourcesCopy = resources;
  identifier = [resourceCopy identifier];
  resourceType = [identifier resourceType];

  serverBaseURL = [resourceCopy serverBaseURL];
  v15 = resourceCopy;
  v16 = contextCopy;
  v17 = serverBaseURL;
  v18 = v15;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v47 = ruleCopy;
  obj = [ruleCopy containReferences];
  v48 = v18;
  v52 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v52)
  {
    v51 = *v71;
    v62 = v16;
    v60 = serverBaseURL;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        jSONObject = [v18 JSONObject];
        v69 = 0;
        v22 = [HDFHIRReferenceProcessor referencesAtKeyPath:v20 resourceDictionary:jSONObject error:&v69];
        v23 = v69;

        if (v22)
        {
          v53 = v23;
          v54 = v22;
          v55 = i;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = v22;
          v24 = [v63 countByEnumeratingWithState:&v65 objects:v84 count:16];
          v17 = v60;
          v25 = MEMORY[0x277CCC2C0];
          if (v24)
          {
            v26 = v24;
            v27 = *v66;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v66 != v27)
                {
                  objc_enumerationMutation(v63);
                }

                v29 = *(*(&v65 + 1) + 8 * j);
                if ([(HDHealthRecordFindReferencesTask *)self _isIrretrievableReference:v29 serverBaseURL:v17])
                {
                  [v16 recordUnresolvableReference:v29 forResource:v18 hint:1];
                }

                else if ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v29 containedInResource:v18])
                {
                  _HKInitializeLogging();
                  v30 = *v25;
                  if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                  {
                    [HDHealthRecordFindReferencesTask _processedContainReferencesResourceWithResource:v74 processingContext:v30 rule:self allResources:&v75];
                  }
                }

                else
                {
                  if ([HDFHIRReferenceProcessor referenceRequiresContaining:v29]|| ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v29 presentInResources:resourcesCopy], (v31 = objc_claimAutoreleasedReturnValue()) == 0))
                  {
                    _HKInitializeLogging();
                    v37 = *v25;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = v37;
                      v40 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                      *buf = 138543618;
                      v77 = v40;
                      v78 = 2114;
                      v79 = v29;
                      _os_log_debug_impl(&dword_251CC8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ containReferences: referenced resource not present, marking unresolved: %{public}@", buf, 0x16u);
                    }

                    [v16 recordUnresolvedReference:v29 forResource:v18];
                  }

                  else
                  {
                    v32 = v31;
                    _HKInitializeLogging();
                    v33 = *v25;
                    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                    {
                      v41 = v33;
                      v42 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                      *buf = 138543618;
                      v77 = v42;
                      v78 = 2114;
                      v79 = v32;
                      _os_log_debug_impl(&dword_251CC8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ containReferences: found resource %{public}@, containing", buf, 0x16u);

                      v25 = MEMORY[0x277CCC2C0];
                    }

                    v64 = 0;
                    v34 = [HDFHIRReferenceProcessor newResourceFromResource:v18 containingResource:v32 reference:v29 error:&v64];
                    v35 = v64;
                    if (v34)
                    {
                      v36 = v34;

                      [v62 recordContainedResource:v32];
                      v18 = v36;
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v38 = *v25;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        log = v38;
                        v57 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                        identifier2 = [v32 identifier];
                        resourceType2 = [identifier2 resourceType];
                        *buf = 138544130;
                        v77 = v57;
                        v78 = 2114;
                        v79 = resourceType2;
                        v80 = 2114;
                        v81 = resourceType;
                        v82 = 2114;
                        v83 = v35;
                        _os_log_error_impl(&dword_251CC8000, log, OS_LOG_TYPE_ERROR, "%{public}@ containReferences: failed to contain resource %{public}@ in resource %{public}@: %{public}@", buf, 0x2Au);
                      }

                      [v62 recordUnresolvedReference:v29 forResource:v18];
                    }

                    v16 = v62;
                    v17 = v60;
                  }

                  v25 = MEMORY[0x277CCC2C0];
                }
              }

              v26 = [v63 countByEnumeratingWithState:&v65 objects:v84 count:16];
            }

            while (v26);
          }

          v22 = v54;
          i = v55;
          v23 = v53;
        }

        else
        {
          _HKInitializeLogging();
          v43 = *MEMORY[0x277CCC2C0];
          v17 = v60;
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v44 = v43;
            v45 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
            *buf = 138543874;
            v77 = v45;
            v78 = 2114;
            v79 = resourceType;
            v80 = 2114;
            v81 = v23;
            _os_log_error_impl(&dword_251CC8000, v44, OS_LOG_TYPE_ERROR, "%{public}@ containReferences: invalid reference on %{public}@ resource: %{public}@", buf, 0x20u);

            v17 = v60;
          }

          [v16 recordUnresolvableReference:v20 forResource:v18 hint:2];
        }
      }

      v52 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v52);
  }

  return v18;
}

- (id)_processedRetrieveReferencesResourceWithResource:(id)resource processingContext:(id)context rule:(id)rule allResources:(id)resources
{
  v84 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  contextCopy = context;
  ruleCopy = rule;
  v12 = resourceCopy;
  v13 = ruleCopy;
  resourcesCopy = resources;
  identifier = [resourceCopy identifier];
  resourceType = [identifier resourceType];

  serverBaseURL = [resourceCopy serverBaseURL];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v50 = v13;
  obj = [v13 retrieveReferences];
  v54 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v54)
  {
    v53 = *v71;
    v62 = resourceCopy;
    do
    {
      v16 = 0;
      do
      {
        if (*v71 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v70 + 1) + 8 * v16);
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
        {
          v46 = v18;
          v47 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138543874;
          v76 = v47;
          v77 = 2114;
          v78 = v17;
          v79 = 2114;
          v80 = v62;
          _os_log_debug_impl(&dword_251CC8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: attempting to retrieve %{public}@ in %{public}@", buf, 0x20u);
        }

        v56 = v16;
        jSONObject = [v62 JSONObject];
        v69 = 0;
        v20 = [HDFHIRReferenceProcessor referencesAtKeyPath:v17 resourceDictionary:jSONObject error:&v69];
        v21 = v69;

        if (!v20)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v23 = v28;
          v24 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138544130;
          v76 = v24;
          v77 = 2114;
          v78 = v17;
          v79 = 2114;
          v80 = resourceType;
          v81 = 2114;
          v82 = v21;
          v25 = v23;
          v26 = "%{public}@ retrieveReferences: invalid reference at %{public}@ on %{public}@ resource: %{public}@";
          v27 = 42;
          goto LABEL_40;
        }

        v12 = v62;
        if (![v20 count])
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
LABEL_13:
            v12 = v62;
            [contextCopy recordUnresolvableReference:v17 forResource:v62 hint:2];
            goto LABEL_14;
          }

          v23 = v22;
          v24 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138543874;
          v76 = v24;
          v77 = 2114;
          v78 = v17;
          v79 = 2114;
          v80 = resourceType;
          v25 = v23;
          v26 = "%{public}@ retrieveReferences: reference %{public}@ on %{public}@ not present";
          v27 = 32;
LABEL_40:
          _os_log_error_impl(&dword_251CC8000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);

          goto LABEL_13;
        }

LABEL_14:
        v55 = v21;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v29 = v20;
        v30 = [v29 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (!v30)
        {
          goto LABEL_37;
        }

        v31 = v30;
        v32 = *v66;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v65 + 1) + 8 * i);
            if ([(HDHealthRecordFindReferencesTask *)self _isIrretrievableReference:v34 serverBaseURL:serverBaseURL])
            {
              [contextCopy recordUnresolvableReference:v34 forResource:v12 hint:1];
              continue;
            }

            v35 = serverBaseURL;
            v64 = 0;
            v36 = [(HDHealthRecordFindReferencesTask *)self _resourceForReference:v34 containedInResource:v12 error:&v64];
            v37 = v64;
            if (v36)
            {
              _HKInitializeLogging();
              v38 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v43 = v38;
                v44 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                *buf = 138543618;
                v76 = v44;
                v77 = 2114;
                v78 = v36;
                _os_log_debug_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: resource %{public}@ was contained", buf, 0x16u);
              }

              [contextCopy recordContainedResource:v36];
            }

            else
            {
              if ([HDFHIRReferenceProcessor referenceRequiresContaining:v34]|| ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v34 presentInResources:resourcesCopy], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                _HKInitializeLogging();
                v42 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                {
                  loga = v42;
                  v57 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                  v58 = HKSensitiveLogItem();
                  *buf = 138543618;
                  v76 = v57;
                  v77 = 2114;
                  v78 = v58;
                  _os_log_debug_impl(&dword_251CC8000, loga, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: referenced resource not present, marking unresolved: %{public}@", buf, 0x16u);
                }

                v12 = v62;
                [contextCopy recordUnresolvedReference:v34 forResource:v62];
                goto LABEL_34;
              }

              v40 = v39;
              _HKInitializeLogging();
              v41 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v45 = v41;
                log = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                *buf = 138543618;
                v76 = log;
                v77 = 2114;
                v78 = v40;
                _os_log_debug_impl(&dword_251CC8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: found resource %{public}@", buf, 0x16u);
              }

              [contextCopy recordProcessedResource:v40];
            }

            v12 = v62;
LABEL_34:

            serverBaseURL = v35;
          }

          v31 = [v29 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v31);
LABEL_37:

        v16 = v56 + 1;
      }

      while (v56 + 1 != v54);
      v48 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      v54 = v48;
    }

    while (v48);
  }

  return v12;
}

- (BOOL)processContainedResourcesInProcessingContext:(id)context error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [contextCopy resources];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v5 = v71 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v69;
    v9 = 0x2796E1000uLL;
    selfCopy = self;
    v46 = *v69;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v69 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v68 + 1) + 8 * i);
        if ([(HDHealthRecordFindReferencesTask *)self _canProcessResource:v11])
        {
          v12 = [(HDHealthRecordRuleset *)self->_ruleset rulesetForFHIRResourceObject:v11];
          if (!v12)
          {
            continue;
          }

          v13 = v12;
          v67 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          obj = [v12 retrieveReferences];
          v51 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
          if (v51)
          {
            v53 = *v65;
            v47 = i;
            v48 = v5;
            v45 = v7;
            v49 = v13;
            do
            {
              for (j = 0; j != v51; ++j)
              {
                if (*v65 != v53)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v64 + 1) + 8 * j);
                _HKInitializeLogging();
                v16 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                {
                  v35 = v16;
                  v36 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                  *buf = 138543874;
                  v74 = v36;
                  v75 = 2114;
                  v76 = v15;
                  v77 = 2114;
                  v78 = v11;
                  _os_log_debug_impl(&dword_251CC8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@ processContainedResources: looking at %{public}@ in %{public}@", buf, 0x20u);
                }

                v17 = *(v9 + 3552);
                jSONObject = [v11 JSONObject];
                v63 = 0;
                v19 = [v17 referencesAtKeyPath:v15 resourceDictionary:jSONObject error:&v63];
                v20 = v63;

                if (v19)
                {
                  v52 = v20;
                  v50 = j;
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v21 = v19;
                  v22 = [v21 countByEnumeratingWithState:&v59 objects:v72 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v60;
                    while (2)
                    {
                      for (k = 0; k != v23; ++k)
                      {
                        if (*v60 != v24)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v26 = *(*(&v59 + 1) + 8 * k);
                        v58 = 0;
                        v27 = [(HDHealthRecordFindReferencesTask *)self _resourceForReference:v26 containedInResource:v11 error:&v58];
                        v28 = v58;
                        if (v27)
                        {
                          v29 = [v27 copyWithOriginDataFrom:v11];
                          _HKInitializeLogging();
                          v30 = *MEMORY[0x277CCC2C0];
                          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                          {
                            v32 = v30;
                            v33 = [(HDHealthRecordFindReferencesTask *)selfCopy debugDescription];
                            *buf = 138543618;
                            v74 = v33;
                            v75 = 2114;
                            v76 = v29;
                            _os_log_debug_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ processContainedResources: found contained resource %{public}@", buf, 0x16u);
                          }

                          v31 = [contextCopy foundResource:v29 parentResource:v11 error:error];

                          self = selfCopy;
                          if (!v31)
                          {

                            v43 = 0;
                            v5 = v48;
                            goto LABEL_41;
                          }
                        }
                      }

                      v23 = [v21 countByEnumeratingWithState:&v59 objects:v72 count:16];
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v9 = 0x2796E1000;
                  i = v47;
                  j = v50;
                  v20 = v52;
                }

                else
                {
                  _HKInitializeLogging();
                  v34 = *MEMORY[0x277CCC2C0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                  {
                    v37 = v34;
                    v38 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                    resourceName = [v49 resourceName];
                    *buf = 138544130;
                    v74 = v38;
                    v75 = 2114;
                    v76 = v15;
                    v77 = 2114;
                    v78 = resourceName;
                    v79 = 2114;
                    v80 = v20;
                    _os_log_error_impl(&dword_251CC8000, v37, OS_LOG_TYPE_ERROR, "%{public}@ processContainedResources: invalid reference at %{public}@ on %{public}@ resource: %{public}@", buf, 0x2Au);

                    self = selfCopy;
                  }
                }
              }

              v5 = v48;
              v13 = v49;
              v8 = v46;
              v7 = v45;
              v51 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
            }

            while (v51);
          }
        }

        else
        {
          _HKInitializeLogging();
          v40 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          v13 = v40;
          [(HDHealthRecordFindReferencesTask *)self debugDescription];
          v42 = v41 = v7;
          *buf = 138543618;
          v74 = v42;
          v75 = 2114;
          v76 = v11;
          _os_log_error_impl(&dword_251CC8000, v13, OS_LOG_TYPE_ERROR, "%{public}@ processContainedResources: cannot process resource: %{public}@", buf, 0x16u);

          v7 = v41;
          v8 = v46;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v68 objects:v82 count:16];
      v43 = 1;
      if (!v7)
      {
        goto LABEL_41;
      }
    }
  }

  v43 = 1;
LABEL_41:

  return v43;
}

- (BOOL)_canProcessResource:(id)resource
{
  fHIRVersion = [resource FHIRVersion];
  fHIRRelease = [fHIRVersion FHIRRelease];

  fHIRRelease2 = [(HDHealthRecordRuleset *)self->_ruleset FHIRRelease];
  LOBYTE(self) = fHIRRelease == fHIRRelease2;

  return self;
}

- (id)_filterResources:(id)resources
{
  v3 = [resources hk_filter:&__block_literal_global_1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

uint64_t __53__HDHealthRecordFindReferencesTask__filterResources___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 resourceType];
  v4 = [v3 isEqualToString:@"OperationOutcome"];

  return v4 ^ 1u;
}

- (BOOL)_isIrretrievableReference:(id)reference serverBaseURL:(id)l
{
  referenceCopy = reference;
  lCopy = l;
  if (lCopy && [HDFHIRReferenceProcessor referenceIsAbsolute:referenceCopy])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:referenceCopy];
    v9 = v8 == 0;
    if (!v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [(HDHealthRecordFindReferencesTask *)v10 _isIrretrievableReference:referenceCopy serverBaseURL:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_resourceReference:(id)reference containedInResource:(id)resource
{
  v11 = 0;
  v5 = [HDFHIRReferenceProcessor resourceContainedInResource:resource reference:reference error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [(HDHealthRecordFindReferencesTask *)v9 _resourceReference:v7 containedInResource:?];
    }
  }

  return v5 != 0;
}

- (id)_resourceReference:(id)reference presentInResources:(id)resources
{
  v20 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  resourcesCopy = resources;
  v7 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        identifier = [v10 identifier];
        v13 = [HDFHIRReferenceProcessor reference:referenceCopy matchesIdentifier:identifier];

        if (v13)
        {
          v7 = v10;
          objc_autoreleasePoolPop(v11);
          goto LABEL_11;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_resourceForReference:(id)reference containedInResource:(id)resource error:(id *)error
{
  referenceCopy = reference;
  resourceCopy = resource;
  v9 = [HDFHIRReferenceProcessor resourceContainedInResource:resourceCopy reference:referenceCopy error:error];
  if (v9 && [HDFHIRReferenceProcessor referenceRequiresContaining:referenceCopy])
  {
    jSONObject = [v9 JSONObject];
    v11 = [jSONObject mutableCopy];

    v12 = [HDFHIRReferenceProcessor identifierForResource:v9 containedInResource:resourceCopy error:error];
    if (v12)
    {
      v13 = v12;
      identifier = [v12 identifier];
      [v11 setObject:identifier forKeyedSubscript:@"id"];

      v15 = MEMORY[0x277D12380];
      fHIRVersion = [v9 FHIRVersion];
      receivedDate = [v9 receivedDate];
      v18 = [v15 resourceObjectWithJSONObject:v11 serverBaseURL:0 FHIRVersion:fHIRVersion receivedDate:receivedDate error:error];

      v9 = v11;
    }

    else
    {
      v18 = 0;
      v13 = v11;
    }

    v9 = v18;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  fHIRRelease = [(HDHealthRecordRuleset *)self->_ruleset FHIRRelease];
  v6 = [v3 initWithFormat:@"<%@ [%@]>", v4, fHIRRelease];

  return v6;
}

@end