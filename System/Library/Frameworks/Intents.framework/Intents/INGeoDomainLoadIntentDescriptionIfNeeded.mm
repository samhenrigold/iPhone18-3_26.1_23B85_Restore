@interface INGeoDomainLoadIntentDescriptionIfNeeded
@end

@implementation INGeoDomainLoadIntentDescriptionIfNeeded

void ___INGeoDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v69[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F0];
  v59 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v58 = [(INIntentDescription *)v0 initWithName:@"DeleteParkingLocationIntent" responseName:@"DeleteParkingLocationIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.geo.DeleteParkingLocationIntent" isPrivate:0 handleSelector:sel_handleDeleteParkingLocation_completion_ confirmSelector:sel_confirmDeleteParkingLocation_completion_ slotsByName:v59];
  v69[0] = v58;
  v4 = [INIntentDescription alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v57 = [[INIntentSlotDescription alloc] initWithName:@"incidentType" tag:2 facadePropertyName:@"incidentType" dataPropertyName:@"incidentType" isExtended:0 isPrivate:0 valueType:229 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D94F8 provideOptionsSelectorStrings:&unk_1F02D9510 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveIncidentTypeForReportIncident_withCompletion_, sel_resolveIncidentTypeForReportIncident_completion_, 0];
  v68[0] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"startTime" tag:3 facadePropertyName:@"startTime" dataPropertyName:@"startTime" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9528 provideOptionsSelectorStrings:&unk_1F02D9540 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStartTimeForReportIncident_withCompletion_, sel_resolveStartTimeForReportIncident_completion_, 0];
  v68[1] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"isClear" tag:4 facadePropertyName:@"isClear" dataPropertyName:@"isClear" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9558 provideOptionsSelectorStrings:&unk_1F02D9570 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveIsClearForReportIncident_withCompletion_, sel_resolveIsClearForReportIncident_completion_, 0];
  v68[2] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"userLocation" tag:5 facadePropertyName:@"userLocation" dataPropertyName:@"userLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9588 provideOptionsSelectorStrings:&unk_1F02D95A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUserLocationForReportIncident_withCompletion_, sel_resolveUserLocationForReportIncident_completion_, 0];
  v68[3] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"additionalDetails" tag:6 facadePropertyName:@"additionalDetails" dataPropertyName:@"additionalDetails" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D95B8 provideOptionsSelectorStrings:&unk_1F02D95D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAdditionalDetailsForReportIncident_withCompletion_, sel_resolveAdditionalDetailsForReportIncident_completion_, 0];
  v68[4] = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
  v51 = _INIntentSchemaBuildIntentSlotDescriptionMap(v52);
  v50 = [(INIntentDescription *)v4 initWithName:@"ReportIncidentIntent" responseName:@"ReportIncidentIntentResponse" facadeClass:v5 dataClass:v6 type:@"sirikit.intent.geo.ReportIncidentIntent" isPrivate:0 handleSelector:sel_handleReportIncident_completion_ confirmSelector:sel_confirmReportIncident_completion_ slotsByName:v51];
  v69[1] = v50;
  v7 = [INIntentDescription alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v49 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v48 = [(INIntentDescription *)v7 initWithName:@"RetrieveParkingLocationIntent" responseName:@"RetrieveParkingLocationIntentResponse" facadeClass:v8 dataClass:v9 type:@"sirikit.intent.geo.RetrieveParkingLocationIntent" isPrivate:0 handleSelector:sel_handleRetrieveParkingLocation_completion_ confirmSelector:sel_confirmRetrieveParkingLocation_completion_ slotsByName:v49];
  v69[2] = v48;
  v10 = [INIntentDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v47 = [[INIntentSlotDescription alloc] initWithName:@"parkingLocation" tag:2 facadePropertyName:@"parkingLocation" dataPropertyName:@"parkingLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D95E8 provideOptionsSelectorStrings:&unk_1F02D9600 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParkingLocationForSaveParkingLocation_withCompletion_, sel_resolveParkingLocationForSaveParkingLocation_completion_, 0];
  v67[0] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"parkingNote" tag:3 facadePropertyName:@"parkingNote" dataPropertyName:@"parkingNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9618 provideOptionsSelectorStrings:&unk_1F02D9630 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParkingNoteForSaveParkingLocation_withCompletion_, sel_resolveParkingNoteForSaveParkingLocation_completion_, 0];
  v67[1] = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentDescription *)v10 initWithName:@"SaveParkingLocationIntent" responseName:@"SaveParkingLocationIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.geo.SaveParkingLocationIntent" isPrivate:0 handleSelector:sel_handleSaveParkingLocation_completion_ confirmSelector:sel_confirmSaveParkingLocation_completion_ slotsByName:v44];
  v69[3] = v43;
  v13 = [INIntentDescription alloc];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9648 provideOptionsSelectorStrings:&unk_1F02D9660 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForShareETA_withCompletion_, sel_resolveRecipientsForShareETA_completion_, 0];
  v66 = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v41);
  v16 = [(INIntentDescription *)v13 initWithName:@"ShareETAIntent" responseName:@"ShareETAIntentResponse" facadeClass:v14 dataClass:v15 type:@"sirikit.intent.geo.ShareETAIntent" isPrivate:0 handleSelector:sel_handleShareETA_completion_ confirmSelector:sel_confirmShareETA_completion_ slotsByName:v40];
  v69[4] = v16;
  v17 = [INIntentDescription alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:2 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9678 provideOptionsSelectorStrings:&unk_1F02D9690 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForStopShareETA_withCompletion_, sel_resolveRecipientsForStopShareETA_completion_, 0];
  v65 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v22 = _INIntentSchemaBuildIntentSlotDescriptionMap(v21);
  v23 = [(INIntentDescription *)v17 initWithName:@"StopShareETAIntent" responseName:@"StopShareETAIntentResponse" facadeClass:v18 dataClass:v19 type:@"sirikit.intent.geo.StopShareETAIntent" isPrivate:0 handleSelector:sel_handleStopShareETA_completion_ confirmSelector:sel_confirmStopShareETA_completion_ slotsByName:v22];
  v69[5] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:6];

  v25 = [v24 count];
  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = v24;
  v29 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v61;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v61 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v60 + 1) + 8 * i);
        v34 = [v33 name];
        [v26 setObject:v33 forKey:v34];

        v35 = [v33 type];
        [v27 setObject:v33 forKey:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v30);
  }

  v36 = [v26 copy];
  v37 = sGeoDomain_intentDescsByName;
  sGeoDomain_intentDescsByName = v36;

  v38 = [v27 copy];
  v39 = sGeoDomain_intentDescsByType;
  sGeoDomain_intentDescsByType = v38;
}

@end