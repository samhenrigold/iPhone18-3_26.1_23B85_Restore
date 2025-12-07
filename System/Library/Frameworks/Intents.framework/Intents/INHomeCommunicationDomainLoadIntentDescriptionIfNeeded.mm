@interface INHomeCommunicationDomainLoadIntentDescriptionIfNeeded
@end

@implementation INHomeCommunicationDomainLoadIntentDescriptionIfNeeded

void ___INHomeCommunicationDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v61[5] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v52 = [[INIntentSlotDescription alloc] initWithName:@"soundType" tag:2 facadePropertyName:@"soundType" dataPropertyName:@"soundType" isExtended:0 isPrivate:0 valueType:95 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v60 = v52;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v50 = _INIntentSchemaBuildIntentSlotDescriptionMap(v51);
  v49 = [(INIntentDescription *)v0 initWithName:@"PlayAnnouncementSoundIntent" responseName:@"PlayAnnouncementSoundIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.home.communication.PlayAnnouncementSoundIntent" isPrivate:0 handleSelector:sel_handlePlayAnnouncementSound_completion_ confirmSelector:sel_confirmPlayAnnouncementSound_completion_ slotsByName:v50];
  v61[0] = v49;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v48 = [[INIntentSlotDescription alloc] initWithName:@"readType" tag:2 facadePropertyName:@"readType" dataPropertyName:@"readType" isExtended:0 isPrivate:0 valueType:96 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v59[0] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"startAnnouncementIdentifier" tag:3 facadePropertyName:@"startAnnouncementIdentifier" dataPropertyName:@"startAnnouncementIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v59[1] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"userNotificationType" tag:4 facadePropertyName:@"userNotificationType" dataPropertyName:@"userNotificationType" isExtended:0 isPrivate:0 valueType:97 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v59[2] = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentDescription *)v3 initWithName:@"ReadAnnouncementIntent" responseName:@"ReadAnnouncementIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.home.communication.ReadAnnouncementIntent" isPrivate:0 handleSelector:sel_handleReadAnnouncement_completion_ confirmSelector:sel_confirmReadAnnouncement_completion_ slotsByName:v44];
  v61[1] = v43;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"announcement" tag:2 facadePropertyName:@"announcement" dataPropertyName:@"announcement" isExtended:0 isPrivate:0 valueType:93 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D96A8 provideOptionsSelectorStrings:&unk_1F02D96C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAnnouncementForSendAnnouncement_withCompletion_, sel_resolveAnnouncementForSendAnnouncement_completion_, 0];
  v58[0] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"recipients" tag:3 facadePropertyName:@"recipients" dataPropertyName:@"recipients" isExtended:0 isPrivate:0 valueType:49 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D96D8 provideOptionsSelectorStrings:&unk_1F02D96F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientsForSendAnnouncement_withCompletion_, sel_resolveRecipientsForSendAnnouncement_completion_, 0];
  v58[1] = v41;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"isReply" tag:4 facadePropertyName:@"isReply" dataPropertyName:@"isReply" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v58[2] = v40;
  v39 = [[INIntentSlotDescription alloc] initWithName:@"sharedUserID" tag:5 facadePropertyName:@"sharedUserID" dataPropertyName:@"sharedUserID" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v58[3] = v39;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  v9 = _INIntentSchemaBuildIntentSlotDescriptionMap(v38);
  v10 = [(INIntentDescription *)v6 initWithName:@"SendAnnouncementIntent" responseName:@"SendAnnouncementIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.home.communication.SendAnnouncementIntent" isPrivate:0 handleSelector:sel_handleSendAnnouncement_completion_ confirmSelector:sel_confirmSendAnnouncement_completion_ slotsByName:v9];
  v61[2] = v10;
  v11 = [INIntentDescription alloc];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = MEMORY[0x1E695E0F0];
  v15 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v16 = [(INIntentDescription *)v11 initWithName:@"SkipAnnouncementIntent" responseName:@"SkipAnnouncementIntentResponse" facadeClass:v12 dataClass:v13 type:@"sirikit.intent.home.communication.SkipAnnouncementIntent" isPrivate:0 handleSelector:sel_handleSkipAnnouncement_completion_ confirmSelector:sel_confirmSkipAnnouncement_completion_ slotsByName:v15];
  v61[3] = v16;
  v17 = [INIntentDescription alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = _INIntentSchemaBuildIntentSlotDescriptionMap(v14);
  v21 = [(INIntentDescription *)v17 initWithName:@"StopAnnouncementIntent" responseName:@"StopAnnouncementIntentResponse" facadeClass:v18 dataClass:v19 type:@"sirikit.intent.home.communication.StopAnnouncementIntent" isPrivate:0 handleSelector:sel_handleStopAnnouncement_completion_ confirmSelector:sel_confirmStopAnnouncement_completion_ slotsByName:v20];
  v61[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];

  v23 = [v22 count];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v54;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v53 + 1) + 8 * i);
        v32 = [v31 name];
        [v24 setObject:v31 forKey:v32];

        v33 = [v31 type];
        [v25 setObject:v31 forKey:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v28);
  }

  v34 = [v24 copy];
  v35 = sHomeCommunicationDomain_intentDescsByName;
  sHomeCommunicationDomain_intentDescsByName = v34;

  v36 = [v25 copy];
  v37 = sHomeCommunicationDomain_intentDescsByType;
  sHomeCommunicationDomain_intentDescsByType = v36;
}

@end