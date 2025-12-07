@interface _PSPredictionContext
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsZKWSuggestions;
- (NSDate)suggestionDate;
- (_PSPredictionContext)init;
- (_PSPredictionContext)initWithCoder:(id)coder;
- (unint64_t)hash;
- (unint64_t)totalHashOfElementsFromArray:(id)array;
- (void)encodeWithCoder:(id)coder;
- (void)sync:(id)sync;
@end

@implementation _PSPredictionContext

- (_PSPredictionContext)init
{
  v25.receiver = self;
  v25.super_class = _PSPredictionContext;
  v2 = [(_PSPredictionContext *)&v25 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = 0;

    suggestionDate = v3->_suggestionDate;
    v3->_suggestionDate = 0;

    locationUUID = v3->_locationUUID;
    v3->_locationUUID = 0;

    locationUUIDs = v3->_locationUUIDs;
    v3->_locationUUIDs = 0;

    bundleID = v3->_bundleID;
    v3->_bundleID = 0;

    accountIdentifier = v3->_accountIdentifier;
    v3->_accountIdentifier = 0;

    seedRecipients = v3->_seedRecipients;
    v3->_seedRecipients = 0;

    attachments = v3->_attachments;
    v3->_attachments = 0;

    priorityContacts = v3->_priorityContacts;
    v3->_priorityContacts = 0;

    photoSuggestedPeople = v3->_photoSuggestedPeople;
    v3->_photoSuggestedPeople = 0;

    *&v3->_showPotentialFamilyMembers = 0;
    searchPrefix = v3->_searchPrefix;
    v3->_searchPrefix = 0;

    suggestionsFilteredByBundleIds = v3->_suggestionsFilteredByBundleIds;
    v3->_suggestionPurpose = 0;
    v3->_suggestionsFilteredByBundleIds = 0;

    seedContactIdentifiers = v3->_seedContactIdentifiers;
    v3->_seedContactIdentifiers = 0;

    v3->_isCollaborationAvailable = 0;
    linkMetadataFromClient = v3->_linkMetadataFromClient;
    v3->_linkMetadataFromClient = 0;

    peopleInPhotoIdentifiers = v3->_peopleInPhotoIdentifiers;
    v3->_peopleInPhotoIdentifiers = 0;

    sceneTagsInPhotoIdentifiers = v3->_sceneTagsInPhotoIdentifiers;
    v3->_sceneTagsInPhotoIdentifiers = 0;

    *&v3->_isFallbackFetch = 0;
    v3->_timedOut = 0;
    suggestionCompletionDate = v3->_suggestionCompletionDate;
    v3->_suggestionCompletionDate = 0;

    suggestionPath = v3->_suggestionPath;
    v3->_suggestionPath = 0;

    v3->_isPSRActive = 0;
    supportedBundleIds = v3->_supportedBundleIds;
    v3->_supportedBundleIds = 0;

    currentSpanId = v3->_currentSpanId;
    v3->_currentSpanId = 0;

    v3->_feedBack = -1;
    atomic_store(0, &v3->_isCancelled);
    v3->_bypassIDSFilter = 0;
  }

  return v3;
}

- (BOOL)supportsZKWSuggestions
{
  if (supportsZKWSuggestions_onceToken != -1)
  {
    [_PSPredictionContext supportsZKWSuggestions];
  }

  v3 = supportsZKWSuggestions_supportedBundleIds;
  bundleID = [(_PSPredictionContext *)self bundleID];
  LOBYTE(v3) = [v3 containsObject:bundleID];

  return v3;
}

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = date;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSPredictionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v130.receiver = self;
  v130.super_class = _PSPredictionContext;
  v5 = [(_PSPredictionContext *)&v130 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"locationUUIDs"];
    locationUUIDs = v5->_locationUUIDs;
    v5->_locationUUIDs = v16;

    v5->_locationType = [coderCopy decodeIntegerForKey:@"locationType"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"seedRecipients"];
    seedRecipients = v5->_seedRecipients;
    v5->_seedRecipients = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"priorityContacts"];
    priorityContacts = v5->_priorityContacts;
    v5->_priorityContacts = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
    appBundleIdsToShareExtensionBundleIdsMapping = v5->_appBundleIdsToShareExtensionBundleIdsMapping;
    v5->_appBundleIdsToShareExtensionBundleIdsMapping = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"photoSuggestedPeople"];
    photoSuggestedPeople = v5->_photoSuggestedPeople;
    v5->_photoSuggestedPeople = v48;

    v5->_showPotentialFamilyMembers = [coderCopy decodeBoolForKey:@"showPotentialFamilyMembers"];
    v5->_isSharePlayAvailable = [coderCopy decodeBoolForKey:@"isSharePlayAvailable"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchPrefix"];
    searchPrefix = v5->_searchPrefix;
    v5->_searchPrefix = v50;

    v5->_suggestionPurpose = [coderCopy decodeInt64ForKey:@"suggestionPurpose"];
    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"suggestionsFilteredByBundleIds"];
    suggestionsFilteredByBundleIds = v5->_suggestionsFilteredByBundleIds;
    v5->_suggestionsFilteredByBundleIds = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"seedContactIdentifiers"];
    seedContactIdentifiers = v5->_seedContactIdentifiers;
    v5->_seedContactIdentifiers = v60;

    v5->_isCollaborationAvailable = [coderCopy decodeBoolForKey:@"isCollaborationAvailable"];
    if ([coderCopy containsValueForKey:@"linkMetadataFromClient"])
    {
      v62 = MEMORY[0x1E695DFD8];
      v63 = objc_opt_class();
      v136 = 0;
      v137 = &v136;
      v138 = 0x2050000000;
      v64 = getLPLinkMetadataClass_softClass;
      v139 = getLPLinkMetadataClass_softClass;
      if (!getLPLinkMetadataClass_softClass)
      {
        v131 = MEMORY[0x1E69E9820];
        v132 = 3221225472;
        v133 = __getLPLinkMetadataClass_block_invoke;
        v134 = &unk_1E7C23BF0;
        v135 = &v136;
        __getLPLinkMetadataClass_block_invoke(&v131);
        v64 = v137[3];
      }

      v65 = v64;
      _Block_object_dispose(&v136, 8);
      v66 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
      v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"linkMetadataFromClient"];
      linkMetadataFromClient = v5->_linkMetadataFromClient;
      v5->_linkMetadataFromClient = v67;
    }

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = [coderCopy decodeObjectOfClasses:v71 forKey:@"peopleInPhotoIdentifiers"];
    peopleInPhotoIdentifiers = v5->_peopleInPhotoIdentifiers;
    v5->_peopleInPhotoIdentifiers = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"sceneTagsInPhotoIdentifiers"];
    sceneTagsInPhotoIdentifiers = v5->_sceneTagsInPhotoIdentifiers;
    v5->_sceneTagsInPhotoIdentifiers = v77;

    v5->_isFallbackFetch = [coderCopy decodeBoolForKey:@"isFallbackFetch"];
    v5->_isCoreMLValidationFetch = [coderCopy decodeBoolForKey:@"isCoreMLValidationFetch"];
    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = [v79 setWithObjects:{v80, v81, v82, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"scoredCoreMLCandidates"];
    scoredCoreMLCandidates = v5->_scoredCoreMLCandidates;
    v5->_scoredCoreMLCandidates = v84;

    if ([coderCopy containsValueForKey:@"coreMLInputFeatureTensor"])
    {
      v86 = MEMORY[0x1E695DFD8];
      v136 = 0;
      v137 = &v136;
      v138 = 0x2050000000;
      v87 = getMLMultiArrayClass_softClass_1;
      v139 = getMLMultiArrayClass_softClass_1;
      if (!getMLMultiArrayClass_softClass_1)
      {
        v131 = MEMORY[0x1E69E9820];
        v132 = 3221225472;
        v133 = __getMLMultiArrayClass_block_invoke_1;
        v134 = &unk_1E7C23BF0;
        v135 = &v136;
        __getMLMultiArrayClass_block_invoke_1(&v131);
        v87 = v137[3];
      }

      v88 = v87;
      _Block_object_dispose(&v136, 8);
      v89 = [v86 setWithObjects:{objc_opt_class(), 0}];
      v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"coreMLInputFeatureTensor"];
      coreMLInputFeatureTensor = v5->_coreMLInputFeatureTensor;
      v5->_coreMLInputFeatureTensor = v90;
    }

    v92 = MEMORY[0x1E695DFD8];
    v93 = objc_opt_class();
    v94 = [v92 setWithObjects:{v93, objc_opt_class(), 0}];
    v95 = [coderCopy decodeObjectOfClasses:v94 forKey:@"coreMLModelFeatureOrder"];
    coreMLModelFeatureOrder = v5->_coreMLModelFeatureOrder;
    v5->_coreMLModelFeatureOrder = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = objc_opt_class();
    v100 = [v97 setWithObjects:{v98, v99, objc_opt_class(), 0}];
    v101 = [coderCopy decodeObjectOfClasses:v100 forKey:@"coreMLTensorIndexToCandidate"];
    coreMLTensorIndexToCandidate = v5->_coreMLTensorIndexToCandidate;
    v5->_coreMLTensorIndexToCandidate = v101;

    v103 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreMLNumberOfCandidates"];
    coreMLNumberOfCandidates = v5->_coreMLNumberOfCandidates;
    v5->_coreMLNumberOfCandidates = v103;

    v105 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialExperimentId"];
    trialExperimentId = v5->_trialExperimentId;
    v5->_trialExperimentId = v105;

    v107 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialTreatmentId"];
    trialTreatmentId = v5->_trialTreatmentId;
    v5->_trialTreatmentId = v107;

    v109 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialDeploymentId"];
    trialDeploymentId = v5->_trialDeploymentId;
    v5->_trialDeploymentId = v109;

    v111 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSpanId"];
    currentSpanId = v5->_currentSpanId;
    v5->_currentSpanId = v111;

    v113 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v113;

    v5->_timedOut = [coderCopy decodeBoolForKey:@"timedOut"];
    v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionCompletionDate"];
    suggestionCompletionDate = v5->_suggestionCompletionDate;
    v5->_suggestionCompletionDate = v115;

    v117 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionPath"];
    suggestionPath = v5->_suggestionPath;
    v5->_suggestionPath = v117;

    v5->_isPSRActive = [coderCopy decodeBoolForKey:@"isPSRActive"];
    v119 = MEMORY[0x1E695DFD8];
    v120 = objc_opt_class();
    v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
    v122 = [coderCopy decodeObjectOfClasses:v121 forKey:@"supportedBundleIds"];
    supportedBundleIds = v5->_supportedBundleIds;
    v5->_supportedBundleIds = v122;

    v124 = objc_autoreleasePoolPush();
    v125 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v124);
    v126 = [coderCopy decodeObjectOfClasses:v125 forKey:@"queryStartDate"];
    queryStartDate = v5->_queryStartDate;
    v5->_queryStartDate = v126;

    v5->_feedBack = [coderCopy decodeIntegerForKey:@"feedBack"];
    v5->_bypassIDSFilter = [coderCopy decodeBoolForKey:@"bypassIDSFilter"];
    v128 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];
  [coderCopy encodeObject:self->_suggestionDate forKey:@"suggestionDate"];
  [coderCopy encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [coderCopy encodeObject:self->_locationUUIDs forKey:@"locationUUIDs"];
  [coderCopy encodeInteger:self->_locationType forKey:@"locationType"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_seedRecipients forKey:@"seedRecipients"];
  [coderCopy encodeObject:self->_attachments forKey:@"attachments"];
  [coderCopy encodeObject:self->_priorityContacts forKey:@"priorityContacts"];
  [coderCopy encodeObject:self->_appBundleIdsToShareExtensionBundleIdsMapping forKey:@"appBundleIdsToShareExtensionBundleIdsMapping"];
  [coderCopy encodeObject:self->_photoSuggestedPeople forKey:@"photoSuggestedPeople"];
  [coderCopy encodeBool:self->_showPotentialFamilyMembers forKey:@"showPotentialFamilyMembers"];
  [coderCopy encodeBool:self->_isSharePlayAvailable forKey:@"isSharePlayAvailable"];
  [coderCopy encodeObject:self->_searchPrefix forKey:@"searchPrefix"];
  [coderCopy encodeInt64:self->_suggestionPurpose forKey:@"suggestionPurpose"];
  [coderCopy encodeObject:self->_suggestionsFilteredByBundleIds forKey:@"suggestionsFilteredByBundleIds"];
  [coderCopy encodeObject:self->_seedContactIdentifiers forKey:@"seedContactIdentifiers"];
  [coderCopy encodeBool:self->_isCollaborationAvailable forKey:@"isCollaborationAvailable"];
  [coderCopy encodeObject:self->_linkMetadataFromClient forKey:@"linkMetadataFromClient"];
  [coderCopy encodeObject:self->_peopleInPhotoIdentifiers forKey:@"peopleInPhotoIdentifiers"];
  [coderCopy encodeObject:self->_sceneTagsInPhotoIdentifiers forKey:@"sceneTagsInPhotoIdentifiers"];
  [coderCopy encodeBool:self->_isFallbackFetch forKey:@"isFallbackFetch"];
  [coderCopy encodeBool:self->_isCoreMLValidationFetch forKey:@"isCoreMLValidationFetch"];
  [coderCopy encodeObject:self->_scoredCoreMLCandidates forKey:@"scoredCoreMLCandidates"];
  [coderCopy encodeObject:self->_coreMLInputFeatureTensor forKey:@"coreMLInputFeatureTensor"];
  [coderCopy encodeObject:self->_coreMLModelFeatureOrder forKey:@"coreMLModelFeatureOrder"];
  [coderCopy encodeObject:self->_coreMLTensorIndexToCandidate forKey:@"coreMLTensorIndexToCandidate"];
  [coderCopy encodeObject:self->_coreMLNumberOfCandidates forKey:@"coreMLNumberOfCandidates"];
  [coderCopy encodeObject:self->_trialExperimentId forKey:@"trialExperimentId"];
  [coderCopy encodeObject:self->_trialTreatmentId forKey:@"trialTreatmentId"];
  [coderCopy encodeObject:self->_trialDeploymentId forKey:@"trialDeploymentId"];
  [coderCopy encodeObject:self->_currentSpanId forKey:@"currentSpanId"];
  [coderCopy encodeObject:self->_reasonType forKey:@"reasonType"];
  [coderCopy encodeBool:self->_timedOut forKey:@"timedOut"];
  [coderCopy encodeObject:self->_suggestionCompletionDate forKey:@"suggestionCompletionDate"];
  [coderCopy encodeObject:self->_suggestionPath forKey:@"suggestionPath"];
  [coderCopy encodeBool:self->_isPSRActive forKey:@"isPSRActive"];
  [coderCopy encodeObject:self->_supportedBundleIds forKey:@"supportedBundleIds"];
  [coderCopy encodeObject:self->_queryStartDate forKey:@"queryStartDate"];
  [coderCopy encodeInteger:self->_feedBack forKey:@"feedBack"];
  [coderCopy encodeBool:self->_bypassIDSFilter forKey:@"bypassIDSFilter"];
}

- (unint64_t)totalHashOfElementsFromArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 ^= [*(*(&v11 + 1) + 8 * i) hash];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v46 = *MEMORY[0x1E69E9840];
  seedRecipients = [(_PSPredictionContext *)self seedRecipients];
  v35 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:seedRecipients];

  locationUUIDs = [(_PSPredictionContext *)self locationUUIDs];
  v34 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:locationUUIDs];

  attachments = [(_PSPredictionContext *)self attachments];
  v33 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:attachments];

  suggestionsFilteredByBundleIds = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
  v32 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:suggestionsFilteredByBundleIds];

  seedContactIdentifiers = [(_PSPredictionContext *)self seedContactIdentifiers];
  v31 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:seedContactIdentifiers];

  linkMetadataFromClient = [(_PSPredictionContext *)self linkMetadataFromClient];
  v30 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:linkMetadataFromClient];

  peopleInPhotoIdentifiers = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
  v10 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:peopleInPhotoIdentifiers];

  sceneTagsInPhotoIdentifiers = [(_PSPredictionContext *)self sceneTagsInPhotoIdentifiers];
  v12 = [(_PSPredictionContext *)self totalHashOfElementsFromArray:sceneTagsInPhotoIdentifiers];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = self->_photoSuggestedPeople;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v40 + 1) + 8 * i) objectForKeyedSubscript:{@"contactIdentifier", v30}];
        v16 ^= [v19 hash];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = self->_appBundleIdsToShareExtensionBundleIdsMapping;
  v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v23 ^= [*(*(&v36 + 1) + 8 * j) hash];
      }

      v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v26 = [(NSString *)self->_sessionID hash];
  v27 = [(NSDate *)self->_suggestionDate hash];
  v28 = [(NSString *)self->_bundleID hash];
  return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v10 ^ v12 ^ v16 ^ v26 ^ v27 ^ v28 ^ [(NSString *)self->_accountIdentifier hash]^ self->_showPotentialFamilyMembers ^ v23 ^ self->_isSharePlayAvailable ^ self->_suggestionPurpose ^ self->_locationType ^ self->_isCollaborationAvailable ^ self->_isFallbackFetch ^ self->_bypassIDSFilter;
}

- (BOOL)isEqual:(id)equal
{
  v133 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v29) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    sessionID = [(_PSPredictionContext *)self sessionID];
    if (sessionID && (v8 = sessionID, -[_PSPredictionContext sessionID](v6, "sessionID"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9) && (-[_PSPredictionContext sessionID](self, "sessionID"), v10 = objc_claimAutoreleasedReturnValue(), -[_PSPredictionContext sessionID](v6, "sessionID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, !v12) || (-[_PSPredictionContext bundleID](self, "bundleID"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, -[_PSPredictionContext bundleID](v6, "bundleID"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15) && (-[_PSPredictionContext bundleID](self, "bundleID"), v16 = objc_claimAutoreleasedReturnValue(), -[_PSPredictionContext bundleID](v6, "bundleID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, !v18) || (-[_PSPredictionContext accountIdentifier](self, "accountIdentifier"), (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, -[_PSPredictionContext accountIdentifier](v6, "accountIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21) && (-[_PSPredictionContext accountIdentifier](self, "accountIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), -[_PSPredictionContext accountIdentifier](v6, "accountIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToString:", v23), v23, v22, !v24) || (v25 = -[_PSPredictionContext showPotentialFamilyMembers](self, "showPotentialFamilyMembers"), v25 != -[_PSPredictionContext showPotentialFamilyMembers](v6, "showPotentialFamilyMembers")) || (v26 = -[_PSPredictionContext isSharePlayAvailable](self, "isSharePlayAvailable"), v26 != -[_PSPredictionContext isSharePlayAvailable](v6, "isSharePlayAvailable")) || (v27 = -[_PSPredictionContext isCollaborationAvailable](self, "isCollaborationAvailable"), v27 != -[_PSPredictionContext isCollaborationAvailable](v6, "isCollaborationAvailable")) || (v28 = -[_PSPredictionContext bypassIDSFilter](self, "bypassIDSFilter"), v28 != -[_PSPredictionContext bypassIDSFilter](v6, "bypassIDSFilter")) || -[_PSPredictionContext suggestionPurpose](self, "suggestionPurpose") && -[_PSPredictionContext suggestionPurpose](v6, "suggestionPurpose") && (v31 = -[_PSPredictionContext suggestionPurpose](self, "suggestionPurpose"), v31 != -[_PSPredictionContext suggestionPurpose](v6, "suggestionPurpose")) || -[_PSPredictionContext locationType](self, "locationType") && -[_PSPredictionContext locationType](v6, "locationType") && (v32 = -[_PSPredictionContext locationType](self, "locationType"), v32 != -[_PSPredictionContext locationType](v6, "locationType")))
    {
      LOBYTE(v29) = 0;
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x1E695DFA8]);
      seedRecipients = [(_PSPredictionContext *)self seedRecipients];
      v35 = [v33 initWithArray:seedRecipients];

      v36 = objc_alloc(MEMORY[0x1E695DFA8]);
      seedRecipients2 = [(_PSPredictionContext *)v6 seedRecipients];
      v38 = [v36 initWithArray:seedRecipients2];

      v39 = [v35 count];
      if (v39 == [v38 count] && objc_msgSend(v35, "isEqualToSet:", v38))
      {
        [v35 count];
        v40 = objc_alloc(MEMORY[0x1E695DFA8]);
        locationUUIDs = [(_PSPredictionContext *)self locationUUIDs];
        v42 = [v40 initWithArray:locationUUIDs];

        v43 = objc_alloc(MEMORY[0x1E695DFA8]);
        locationUUIDs2 = [(_PSPredictionContext *)v6 locationUUIDs];
        v45 = [v43 initWithArray:locationUUIDs2];

        v46 = [v42 count];
        if (v46 == [v45 count] && objc_msgSend(v42, "isEqualToSet:", v45))
        {
          [v42 count];
          v47 = objc_alloc(MEMORY[0x1E695DFA8]);
          attachments = [(_PSPredictionContext *)self attachments];
          v49 = [v47 initWithArray:attachments];

          v50 = objc_alloc(MEMORY[0x1E695DFA8]);
          attachments2 = [(_PSPredictionContext *)v6 attachments];
          v52 = [v50 initWithArray:attachments2];

          v53 = v52;
          v54 = [v49 count];
          if (v54 == [v53 count] && objc_msgSend(v49, "isEqualToSet:", v53))
          {
            v116 = v53;
            v117 = v49;
            v118 = v45;
            v119 = v42;
            v120 = v38;
            [v49 count];
            v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            photoSuggestedPeople = [(_PSPredictionContext *)self photoSuggestedPeople];
            v57 = [photoSuggestedPeople count];

            if (v57)
            {
              v58 = 0;
              do
              {
                photoSuggestedPeople2 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v60 = [photoSuggestedPeople2 objectAtIndexedSubscript:v58];
                v61 = [v60 objectForKeyedSubscript:@"contactIdentifier"];

                [v55 addObject:v61];
                ++v58;
                photoSuggestedPeople3 = [(_PSPredictionContext *)self photoSuggestedPeople];
                v63 = [photoSuggestedPeople3 count];
              }

              while (v63 > v58);
            }

            v122 = v55;
            v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            photoSuggestedPeople4 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
            v66 = [photoSuggestedPeople4 count];

            if (v66)
            {
              v67 = 0;
              do
              {
                photoSuggestedPeople5 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v69 = [photoSuggestedPeople5 objectAtIndexedSubscript:v67];
                v70 = [v69 objectForKeyedSubscript:@"contactIdentifier"];

                [v64 addObject:v70];
                ++v67;
                photoSuggestedPeople6 = [(_PSPredictionContext *)v6 photoSuggestedPeople];
                v72 = [photoSuggestedPeople6 count];
              }

              while (v72 > v67);
            }

            v73 = [v122 count];
            v121 = v64;
            if (v73 == [v64 count] && objc_msgSend(v122, "isEqualToSet:", v64))
            {
              [v122 count];
              v74 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              appBundleIdsToShareExtensionBundleIdsMapping = [(_PSPredictionContext *)self appBundleIdsToShareExtensionBundleIdsMapping];
              v76 = [appBundleIdsToShareExtensionBundleIdsMapping countByEnumeratingWithState:&v127 objects:v132 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v128;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v128 != v78)
                    {
                      objc_enumerationMutation(appBundleIdsToShareExtensionBundleIdsMapping);
                    }

                    [v74 addObject:*(*(&v127 + 1) + 8 * i)];
                  }

                  v77 = [appBundleIdsToShareExtensionBundleIdsMapping countByEnumeratingWithState:&v127 objects:v132 count:16];
                }

                while (v77);
              }

              v80 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              appBundleIdsToShareExtensionBundleIdsMapping2 = [(_PSPredictionContext *)v6 appBundleIdsToShareExtensionBundleIdsMapping];
              v82 = [appBundleIdsToShareExtensionBundleIdsMapping2 countByEnumeratingWithState:&v123 objects:v131 count:16];
              if (v82)
              {
                v83 = v82;
                v84 = *v124;
                do
                {
                  for (j = 0; j != v83; ++j)
                  {
                    if (*v124 != v84)
                    {
                      objc_enumerationMutation(appBundleIdsToShareExtensionBundleIdsMapping2);
                    }

                    [v80 addObject:*(*(&v123 + 1) + 8 * j)];
                  }

                  v83 = [appBundleIdsToShareExtensionBundleIdsMapping2 countByEnumeratingWithState:&v123 objects:v131 count:16];
                }

                while (v83);
              }

              v86 = [v74 count];
              if (v86 == [v80 count] && objc_msgSend(v74, "isEqualToSet:", v80))
              {
                [v74 count];
                v87 = objc_alloc(MEMORY[0x1E695DFD8]);
                suggestionsFilteredByBundleIds = [(_PSPredictionContext *)self suggestionsFilteredByBundleIds];
                v89 = [v87 initWithArray:suggestionsFilteredByBundleIds];

                v90 = objc_alloc(MEMORY[0x1E695DFD8]);
                suggestionsFilteredByBundleIds2 = [(_PSPredictionContext *)v6 suggestionsFilteredByBundleIds];
                v92 = [v90 initWithArray:suggestionsFilteredByBundleIds2];

                v114 = v92;
                v115 = v89;
                if ([v89 isEqualToSet:v92])
                {
                  [v89 count];
                  v93 = objc_alloc(MEMORY[0x1E695DFD8]);
                  seedContactIdentifiers = [(_PSPredictionContext *)self seedContactIdentifiers];
                  v95 = [v93 initWithArray:seedContactIdentifiers];

                  v96 = objc_alloc(MEMORY[0x1E695DFD8]);
                  seedContactIdentifiers2 = [(_PSPredictionContext *)v6 seedContactIdentifiers];
                  v98 = [v96 initWithArray:seedContactIdentifiers2];

                  v112 = v98;
                  v113 = v95;
                  if ([v95 isEqualToSet:v98])
                  {
                    [v95 count];
                    v99 = objc_alloc(MEMORY[0x1E695DFD8]);
                    linkMetadataFromClient = [(_PSPredictionContext *)self linkMetadataFromClient];
                    v101 = [v99 initWithArray:linkMetadataFromClient];

                    v102 = objc_alloc(MEMORY[0x1E695DFD8]);
                    linkMetadataFromClient2 = [(_PSPredictionContext *)v6 linkMetadataFromClient];
                    v104 = [v102 initWithArray:linkMetadataFromClient2];

                    v111 = v101;
                    if ([v101 isEqualToSet:v104])
                    {
                      [v101 count];
                      v105 = objc_alloc(MEMORY[0x1E695DFD8]);
                      peopleInPhotoIdentifiers = [(_PSPredictionContext *)self peopleInPhotoIdentifiers];
                      v107 = [v105 initWithArray:peopleInPhotoIdentifiers];

                      v108 = objc_alloc(MEMORY[0x1E695DFD8]);
                      peopleInPhotoIdentifiers2 = [(_PSPredictionContext *)v6 peopleInPhotoIdentifiers];
                      v110 = [v108 initWithArray:peopleInPhotoIdentifiers2];

                      v29 = [v107 isEqualToSet:v110];
                      if (v29)
                      {
                        [v107 count];
                      }
                    }

                    else
                    {
                      LOBYTE(v29) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v29) = 0;
                  }
                }

                else
                {
                  LOBYTE(v29) = 0;
                }
              }

              else
              {
                LOBYTE(v29) = 0;
              }
            }

            else
            {
              LOBYTE(v29) = 0;
            }

            v42 = v119;
            v38 = v120;
            v49 = v117;
            v45 = v118;
            v53 = v116;
          }

          else
          {
            LOBYTE(v29) = 0;
          }
        }

        else
        {
          LOBYTE(v29) = 0;
        }
      }

      else
      {
        LOBYTE(v29) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  return v29;
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  attachments = [syncCopy attachments];
  [(_PSPredictionContext *)self setAttachments:attachments];

  priorityContacts = [syncCopy priorityContacts];
  [(_PSPredictionContext *)self setPriorityContacts:priorityContacts];

  photoSuggestedPeople = [syncCopy photoSuggestedPeople];
  [(_PSPredictionContext *)self setPhotoSuggestedPeople:photoSuggestedPeople];

  trialExperimentId = [syncCopy trialExperimentId];
  [(_PSPredictionContext *)self setTrialExperimentId:trialExperimentId];

  trialTreatmentId = [syncCopy trialTreatmentId];
  [(_PSPredictionContext *)self setTrialTreatmentId:trialTreatmentId];

  trialDeploymentId = [syncCopy trialDeploymentId];
  [(_PSPredictionContext *)self setTrialDeploymentId:trialDeploymentId];

  -[_PSPredictionContext setIsPSRActive:](self, "setIsPSRActive:", [syncCopy isPSRActive]);
  reasonType = [syncCopy reasonType];
  [(_PSPredictionContext *)self setReasonType:reasonType];

  supportedBundleIds = [syncCopy supportedBundleIds];

  [(_PSPredictionContext *)self setSupportedBundleIds:supportedBundleIds];
}

@end