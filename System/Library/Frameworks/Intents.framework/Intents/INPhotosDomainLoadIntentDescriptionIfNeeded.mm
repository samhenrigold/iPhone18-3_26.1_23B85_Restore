@interface INPhotosDomainLoadIntentDescriptionIfNeeded
@end

@implementation INPhotosDomainLoadIntentDescriptionIfNeeded

void ___INPhotosDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v54[2] = *MEMORY[0x1E69E9840];
  v36 = [INIntentDescription alloc];
  v34 = objc_opt_class();
  v32 = objc_opt_class();
  v46 = [[INIntentSlotDescription alloc] initWithName:@"dateCreated" tag:2 facadePropertyName:@"dateCreated" dataPropertyName:@"dateCreated" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA908 provideOptionsSelectorStrings:&unk_1F02DA920 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateCreatedForSearchForPhotos_withCompletion_, sel_resolveDateCreatedForSearchForPhotos_completion_, 0];
  v53[0] = v46;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"locationCreated" tag:3 facadePropertyName:@"locationCreated" dataPropertyName:@"locationCreated" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA938 provideOptionsSelectorStrings:&unk_1F02DA950 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationCreatedForSearchForPhotos_withCompletion_, sel_resolveLocationCreatedForSearchForPhotos_completion_, 0];
  v53[1] = v45;
  v44 = [[INIntentSlotDescription alloc] initWithName:@"albumName" tag:5 facadePropertyName:@"albumName" dataPropertyName:@"albumName" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA968 provideOptionsSelectorStrings:&unk_1F02DA980 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAlbumNameForSearchForPhotos_withCompletion_, sel_resolveAlbumNameForSearchForPhotos_completion_, 0];
  v53[2] = v44;
  v43 = [[INIntentSlotDescription alloc] initWithName:@"searchTerm" tag:8 facadePropertyName:@"searchTerms" dataPropertyName:@"searchTerms" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA998 provideOptionsSelectorStrings:&unk_1F02DA9B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSearchTermsForSearchForPhotos_withCompletion_, sel_resolveSearchTermsForSearchForPhotos_completion_, 0];
  v53[3] = v43;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"includedAttribute" tag:9 facadePropertyName:@"includedAttributes" dataPropertyName:@"includedAttributes" isExtended:0 isPrivate:0 valueType:98 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[4] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"excludedAttribute" tag:10 facadePropertyName:@"excludedAttributes" dataPropertyName:@"excludedAttributes" isExtended:0 isPrivate:0 valueType:98 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[5] = v41;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"peopleInPhoto" tag:11 facadePropertyName:@"peopleInPhoto" dataPropertyName:@"peopleInPhoto" isExtended:0 isPrivate:0 valueType:11 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA9C8 provideOptionsSelectorStrings:&unk_1F02DA9E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePeopleInPhotoForSearchForPhotos_withCompletion_, sel_resolvePeopleInPhotoForSearchForPhotos_completion_, 0];
  v53[6] = v40;
  v39 = [[INIntentSlotDescription alloc] initWithName:@"events" tag:12 facadePropertyName:@"events" dataPropertyName:@"events" isExtended:0 isPrivate:1 valueType:100 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[7] = v39;
  v38 = [[INIntentSlotDescription alloc] initWithName:@"places" tag:13 facadePropertyName:@"places" dataPropertyName:@"places" isExtended:0 isPrivate:1 valueType:102 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[8] = v38;
  v30 = [[INIntentSlotDescription alloc] initWithName:@"activities" tag:14 facadePropertyName:@"activities" dataPropertyName:@"activities" isExtended:0 isPrivate:1 valueType:105 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[9] = v30;
  v29 = [[INIntentSlotDescription alloc] initWithName:@"geographicalFeatures" tag:15 facadePropertyName:@"geographicalFeatures" dataPropertyName:@"geographicalFeatures" isExtended:0 isPrivate:1 valueType:107 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[10] = v29;
  v28 = [[INIntentSlotDescription alloc] initWithName:@"memoryName" tag:16 facadePropertyName:@"memoryName" dataPropertyName:@"memoryName" isExtended:0 isPrivate:1 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v53[11] = v28;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:12];
  v26 = _INIntentSchemaBuildIntentSlotDescriptionMap(v27);
  v37 = [(INIntentDescription *)v36 initWithName:@"SearchForPhotosIntent" responseName:@"SearchForPhotosIntentResponse" facadeClass:v34 dataClass:v32 type:@"sirikit.intent.photos.SearchForPhotosIntent" isPrivate:0 handleSelector:sel_handleSearchForPhotos_completion_ confirmSelector:sel_confirmSearchForPhotos_completion_ slotsByName:v26];
  v54[0] = v37;
  v35 = [INIntentDescription alloc];
  v31 = objc_opt_class();
  v25 = objc_opt_class();
  v33 = [[INIntentSlotDescription alloc] initWithName:@"dateCreated" tag:2 facadePropertyName:@"dateCreated" dataPropertyName:@"dateCreated" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA9F8 provideOptionsSelectorStrings:&unk_1F02DAA10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateCreatedForStartPhotoPlayback_withCompletion_, sel_resolveDateCreatedForStartPhotoPlayback_completion_, 0];
  v52[0] = v33;
  v0 = [[INIntentSlotDescription alloc] initWithName:@"locationCreated" tag:3 facadePropertyName:@"locationCreated" dataPropertyName:@"locationCreated" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAA28 provideOptionsSelectorStrings:&unk_1F02DAA40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationCreatedForStartPhotoPlayback_withCompletion_, sel_resolveLocationCreatedForStartPhotoPlayback_completion_, 0];
  v52[1] = v0;
  v1 = [[INIntentSlotDescription alloc] initWithName:@"albumName" tag:5 facadePropertyName:@"albumName" dataPropertyName:@"albumName" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAA58 provideOptionsSelectorStrings:&unk_1F02DAA70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAlbumNameForStartPhotoPlayback_withCompletion_, sel_resolveAlbumNameForStartPhotoPlayback_completion_, 0];
  v52[2] = v1;
  v2 = [[INIntentSlotDescription alloc] initWithName:@"searchTerm" tag:7 facadePropertyName:@"searchTerms" dataPropertyName:@"searchTerms" isExtended:0 isPrivate:0 valueType:31 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v52[3] = v2;
  v3 = [[INIntentSlotDescription alloc] initWithName:@"includedAttribute" tag:8 facadePropertyName:@"includedAttributes" dataPropertyName:@"includedAttributes" isExtended:0 isPrivate:0 valueType:98 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v52[4] = v3;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"excludedAttribute" tag:9 facadePropertyName:@"excludedAttributes" dataPropertyName:@"excludedAttributes" isExtended:0 isPrivate:0 valueType:98 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v52[5] = v4;
  v5 = [[INIntentSlotDescription alloc] initWithName:@"peopleInPhoto" tag:10 facadePropertyName:@"peopleInPhoto" dataPropertyName:@"peopleInPhoto" isExtended:0 isPrivate:0 valueType:11 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAA88 provideOptionsSelectorStrings:&unk_1F02DAAA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePeopleInPhotoForStartPhotoPlayback_withCompletion_, sel_resolvePeopleInPhotoForStartPhotoPlayback_completion_, 0];
  v52[6] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:7];
  v7 = _INIntentSchemaBuildIntentSlotDescriptionMap(v6);
  v8 = [(INIntentDescription *)v35 initWithName:@"StartPhotoPlaybackIntent" responseName:@"StartPhotoPlaybackIntentResponse" facadeClass:v31 dataClass:v25 type:@"sirikit.intent.photos.StartPhotoPlaybackIntent" isPrivate:0 handleSelector:sel_handleStartPhotoPlayback_completion_ confirmSelector:sel_confirmStartPhotoPlayback_completion_ slotsByName:v7];
  v54[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

  v10 = [v9 count];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        v19 = [v18 name];
        [v11 setObject:v18 forKey:v19];

        v20 = [v18 type];
        [v12 setObject:v18 forKey:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v15);
  }

  v21 = [v11 copy];
  v22 = sPhotosDomain_intentDescsByName;
  sPhotosDomain_intentDescsByName = v21;

  v23 = [v12 copy];
  v24 = sPhotosDomain_intentDescsByType;
  sPhotosDomain_intentDescsByType = v23;
}

@end