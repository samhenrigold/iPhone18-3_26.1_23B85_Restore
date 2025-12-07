@interface INCallsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INCallsDomainLoadIntentDescriptionIfNeeded

void ___INCallsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v125[10] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v110 = [[INIntentSlotDescription alloc] initWithName:@"participants" tag:2 facadePropertyName:@"participants" dataPropertyName:@"participants" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8AA8 provideOptionsSelectorStrings:&unk_1F02D8AC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveParticipantsForAddCallParticipant_withCompletion_, sel_resolveParticipantsForAddCallParticipant_completion_, 0];
  v124 = v110;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
  v108 = _INIntentSchemaBuildIntentSlotDescriptionMap(v109);
  v107 = [(INIntentDescription *)v0 initWithName:@"AddCallParticipantIntent" responseName:@"AddCallParticipantIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.call.AddCallParticipantIntent" isPrivate:0 handleSelector:sel_handleAddCallParticipant_completion_ confirmSelector:sel_confirmAddCallParticipant_completion_ slotsByName:v108];
  v125[0] = v107;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v106 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:2 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:0 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v123[0] = v106;
  v105 = [[INIntentSlotDescription alloc] initWithName:@"callIdentifier" tag:3 facadePropertyName:@"callIdentifier" dataPropertyName:@"callIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v123[1] = v105;
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
  v103 = _INIntentSchemaBuildIntentSlotDescriptionMap(v104);
  v102 = [(INIntentDescription *)v3 initWithName:@"AnswerCallIntent" responseName:@"AnswerCallIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.call.AnswerCallIntent" isPrivate:0 handleSelector:sel_handleAnswerCall_completion_ confirmSelector:sel_confirmAnswerCall_completion_ slotsByName:v103];
  v125[1] = v102;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v101 = [[INIntentSlotDescription alloc] initWithName:@"callIdentifier" tag:2 facadePropertyName:@"callIdentifier" dataPropertyName:@"callIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v122 = v101;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
  v99 = _INIntentSchemaBuildIntentSlotDescriptionMap(v100);
  v98 = [(INIntentDescription *)v6 initWithName:@"HangUpCallIntent" responseName:@"HangUpCallIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.call.HangUpCallIntent" isPrivate:0 handleSelector:sel_handleHangUpCall_completion_ confirmSelector:sel_confirmHangUpCall_completion_ slotsByName:v99];
  v125[2] = v98;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v97 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v96 = [(INIntentDescription *)v9 initWithName:@"IdentifyIncomingCallerIntent" responseName:@"IdentifyIncomingCallerIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.call.IdentifyIncomingCallerIntent" isPrivate:0 handleSelector:sel_handleIdentifyIncomingCaller_completion_ confirmSelector:sel_confirmIdentifyIncomingCaller_completion_ slotsByName:v97];
  v125[3] = v96;
  v12 = [INIntentDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v95 = [[INIntentSlotDescription alloc] initWithName:@"groupConversationFilter" tag:2 facadePropertyName:@"groupConversationFilter" dataPropertyName:@"groupConversationFilter" isExtended:0 isPrivate:0 valueType:81 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v121[0] = v95;
  v94 = [[INIntentSlotDescription alloc] initWithName:@"groupConversation" tag:10 facadePropertyName:@"groupConversation" dataPropertyName:@"groupConversation" isExtended:0 isPrivate:0 valueType:80 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8AD8 provideOptionsSelectorStrings:&unk_1F02D8AF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGroupConversationForJoinCall_withCompletion_, sel_resolveGroupConversationForJoinCall_completion_, 0];
  v121[1] = v94;
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
  v92 = _INIntentSchemaBuildIntentSlotDescriptionMap(v93);
  v91 = [(INIntentDescription *)v12 initWithName:@"JoinCallIntent" responseName:@"JoinCallIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.call.JoinCallIntent" isPrivate:0 handleSelector:sel_handleJoinCall_completion_ confirmSelector:sel_confirmJoinCall_completion_ slotsByName:v92];
  v125[4] = v91;
  v15 = [INIntentDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v90 = [[INIntentSlotDescription alloc] initWithName:@"callRecordIdentifier" tag:2 facadePropertyName:@"callRecordIdentifier" dataPropertyName:@"callRecordIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v120 = v90;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
  v88 = _INIntentSchemaBuildIntentSlotDescriptionMap(v89);
  v87 = [(INIntentDescription *)v15 initWithName:@"PlayVoicemailIntent" responseName:@"PlayVoicemailIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.call.PlayVoicemailIntent" isPrivate:0 handleSelector:sel_handlePlayVoicemail_completion_ confirmSelector:sel_confirmPlayVoicemail_completion_ slotsByName:v88];
  v125[5] = v87;
  v18 = [INIntentDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v86 = [[INIntentSlotDescription alloc] initWithName:@"dateCreated" tag:5 facadePropertyName:@"dateCreated" dataPropertyName:@"dateCreated" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B08 provideOptionsSelectorStrings:&unk_1F02D8B20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateCreatedForSearchCallHistory_withCompletion_, sel_resolveDateCreatedForSearchCallHistory_completion_, 0];
  v119[0] = v86;
  v85 = [[INIntentSlotDescription alloc] initWithName:@"recipient" tag:6 facadePropertyName:@"recipient" dataPropertyName:@"recipient" isExtended:0 isPrivate:0 valueType:10 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B38 provideOptionsSelectorStrings:&unk_1F02D8B50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecipientForSearchCallHistory_withCompletion_, sel_resolveRecipientForSearchCallHistory_completion_, 0];
  v119[1] = v85;
  v84 = [[INIntentSlotDescription alloc] initWithName:@"callCapabilities" tag:7 facadePropertyName:@"callCapabilities" dataPropertyName:@"callCapabilities" isExtended:0 isPrivate:0 valueType:68 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[2] = v84;
  v83 = [[INIntentSlotDescription alloc] initWithName:@"callTypes" tag:8 facadePropertyName:@"callTypes" dataPropertyName:@"callTypes" isExtended:0 isPrivate:0 valueType:72 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8B68 provideOptionsSelectorStrings:&unk_1F02D8B80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallTypesForSearchCallHistory_withCompletion_, sel_resolveCallTypeForSearchCallHistory_withCompletion_, sel_resolveCallTypeForSearchCallHistory_completion_, 0];
  v119[3] = v83;
  v82 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:9 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[4] = v82;
  v81 = [[INIntentSlotDescription alloc] initWithName:@"unseen" tag:10 facadePropertyName:@"unseen" dataPropertyName:@"unseen" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8B98 provideOptionsSelectorStrings:&unk_1F02D8BB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUnseenForSearchCallHistory_withCompletion_, sel_resolveUnseenForSearchCallHistory_completion_, 0];
  v119[5] = v81;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:6];
  v79 = _INIntentSchemaBuildIntentSlotDescriptionMap(v80);
  v78 = [(INIntentDescription *)v18 initWithName:@"SearchCallHistoryIntent" responseName:@"SearchCallHistoryIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.call.SearchCallHistoryIntent" isPrivate:0 handleSelector:sel_handleSearchCallHistory_completion_ confirmSelector:sel_confirmSearchCallHistory_completion_ slotsByName:v79];
  v125[6] = v78;
  v21 = [INIntentDescription alloc];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v77 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:3 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:1 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[0] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"destinationType" tag:4 facadePropertyName:@"destinationType" dataPropertyName:@"destinationType" isExtended:0 isPrivate:0 valueType:70 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8BC8 provideOptionsSelectorStrings:&unk_1F02D8BE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDestinationTypeForStartAudioCall_withCompletion_, sel_resolveDestinationTypeForStartAudioCall_completion_, 0];
  v118[1] = v76;
  v75 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:5 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[2] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"contact" tag:6 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:18 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8BF8 provideOptionsSelectorStrings:&unk_1F02D8C10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartAudioCall_withCompletion_, sel_resolveContactsForStartAudioCall_completion_, 0];
  v118[3] = v74;
  v73 = [[INIntentSlotDescription alloc] initWithName:@"recordTypeForRedialing" tag:7 facadePropertyName:@"recordTypeForRedialing" dataPropertyName:@"recordTypeForRedialing" isExtended:0 isPrivate:1 valueType:71 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[4] = v73;
  v72 = [[INIntentSlotDescription alloc] initWithName:@"ttyType" tag:8 facadePropertyName:@"ttyType" dataPropertyName:@"ttyType" isExtended:0 isPrivate:1 valueType:66 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[5] = v72;
  v71 = [[INIntentSlotDescription alloc] initWithName:@"callRequestMetadata" tag:9 facadePropertyName:@"callRequestMetadata" dataPropertyName:@"callRequestMetadata" isExtended:0 isPrivate:1 valueType:83 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v118[6] = v71;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:7];
  v69 = _INIntentSchemaBuildIntentSlotDescriptionMap(v70);
  v68 = [(INIntentDescription *)v21 initWithName:@"StartAudioCallIntent" responseName:@"StartAudioCallIntentResponse" facadeClass:v22 dataClass:v23 type:@"sirikit.intent.call.StartAudioCallIntent" isPrivate:0 handleSelector:sel_handleStartAudioCall_completion_ confirmSelector:sel_confirmStartAudioCall_completion_ slotsByName:v69];
  v125[7] = v68;
  v61 = [INIntentDescription alloc];
  v59 = objc_opt_class();
  v58 = objc_opt_class();
  v67 = [[INIntentSlotDescription alloc] initWithName:@"callRecordFilter" tag:13 facadePropertyName:@"callRecordFilter" dataPropertyName:@"callRecordFilter" isExtended:0 isPrivate:0 valueType:78 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[0] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"callRecordToCallBack" tag:14 facadePropertyName:@"callRecordToCallBack" dataPropertyName:@"callRecordToCallBack" isExtended:0 isPrivate:0 valueType:74 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C28 provideOptionsSelectorStrings:&unk_1F02D8C40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallRecordToCallBackForStartCall_withCompletion_, sel_resolveCallRecordToCallBackForStartCall_completion_, 0];
  v117[1] = v66;
  v65 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:67 facadePropertyName:1 dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:? defaultValueSelectorStrings:? provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v117[2] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"destinationType" tag:3 facadePropertyName:@"destinationType" dataPropertyName:@"destinationType" isExtended:0 isPrivate:0 valueType:70 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C58 provideOptionsSelectorStrings:&unk_1F02D8C70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDestinationTypeForStartCall_withCompletion_, sel_resolveDestinationTypeForStartCall_completion_, 0];
  v117[3] = v64;
  v63 = [[INIntentSlotDescription alloc] initWithName:@"preferredCallProvider" tag:4 facadePropertyName:@"preferredCallProvider" dataPropertyName:@"preferredCallProvider" isExtended:0 isPrivate:1 valueType:73 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8C88 provideOptionsSelectorStrings:&unk_1F02D8CA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePreferredCallProviderForStartCall_withCompletion_, sel_resolvePreferredCallProviderForStartCall_completion_, 0];
  v117[4] = v63;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"contacts" tag:5 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8CB8 provideOptionsSelectorStrings:&unk_1F02D8CD0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartCall_withCompletion_, sel_resolveContactsForStartCall_completion_, 0];
  v117[5] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"ttyType" tag:7 facadePropertyName:@"ttyType" dataPropertyName:@"ttyType" isExtended:0 isPrivate:1 valueType:66 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[6] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"callCapability" tag:8 facadePropertyName:@"callCapability" dataPropertyName:@"callCapability" isExtended:0 isPrivate:0 valueType:69 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8CE8 provideOptionsSelectorStrings:&unk_1F02D8D00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCallCapabilityForStartCall_withCompletion_, sel_resolveCallCapabilityForStartCall_completion_, 0];
  v117[7] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"isGroupCall" tag:9 facadePropertyName:@"isGroupCall" dataPropertyName:@"isGroupCall" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[8] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"callGroups" tag:10 facadePropertyName:@"callGroups" dataPropertyName:@"callGroups" isExtended:0 isPrivate:1 valueType:79 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[9] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"notificationThreadIdentifier" tag:11 facadePropertyName:@"notificationThreadIdentifier" dataPropertyName:@"notificationThreadIdentifier" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v117[10] = v52;
  v51 = [[INIntentSlotDescription alloc] initWithName:@"faceTimeLink" tag:12 facadePropertyName:@"faceTimeLink" dataPropertyName:@"faceTimeLink" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8D18 provideOptionsSelectorStrings:&unk_1F02D8D30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFaceTimeLinkForStartCall_withCompletion_, sel_resolveFaceTimeLinkForStartCall_completion_, 0];
  v117[11] = v51;
  v50 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:83 facadePropertyName:1 dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:? defaultValueSelectorStrings:? provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v117[12] = v50;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:13];
  v48 = _INIntentSchemaBuildIntentSlotDescriptionMap(v49);
  v24 = [(INIntentDescription *)v61 initWithName:@"StartCallIntent" responseName:@"StartCallIntentResponse" facadeClass:v59 dataClass:v58 type:@"sirikit.intent.call.StartCallIntent" isPrivate:0 handleSelector:sel_handleStartCall_completion_ confirmSelector:sel_confirmStartCall_completion_ slotsByName:v48];
  v125[8] = v24;
  v62 = [INIntentDescription alloc];
  v60 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [[INIntentSlotDescription alloc] initWithName:@"audioRoute" tag:3 facadePropertyName:@"audioRoute" dataPropertyName:@"audioRoute" isExtended:0 isPrivate:1 valueType:67 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v116[0] = v26;
  v27 = [[INIntentSlotDescription alloc] initWithName:@"contact" tag:4 facadePropertyName:@"contacts" dataPropertyName:@"contacts" isExtended:0 isPrivate:0 valueType:18 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8D48 provideOptionsSelectorStrings:&unk_1F02D8D60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactsForStartVideoCall_withCompletion_, sel_resolveContactsForStartVideoCall_completion_, 0];
  v116[1] = v27;
  v28 = [[INIntentSlotDescription alloc] initWithName:@"callRequestMetadata" tag:5 facadePropertyName:@"callRequestMetadata" dataPropertyName:@"callRequestMetadata" isExtended:0 isPrivate:1 valueType:83 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v116[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
  v30 = _INIntentSchemaBuildIntentSlotDescriptionMap(v29);
  v31 = [(INIntentDescription *)v62 initWithName:@"StartVideoCallIntent" responseName:@"StartVideoCallIntentResponse" facadeClass:v60 dataClass:v25 type:@"sirikit.intent.call.StartVideoCallIntent" isPrivate:0 handleSelector:sel_handleStartVideoCall_completion_ confirmSelector:sel_confirmStartVideoCall_completion_ slotsByName:v30];
  v125[9] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:10];

  v33 = [v32 count];
  v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v33];
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v33];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v36 = v32;
  v37 = [v36 countByEnumeratingWithState:&v111 objects:v115 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v112;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v112 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v111 + 1) + 8 * i);
        v42 = [v41 name];
        [v34 setObject:v41 forKey:v42];

        v43 = [v41 type];
        [v35 setObject:v41 forKey:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v111 objects:v115 count:16];
    }

    while (v38);
  }

  v44 = [v34 copy];
  v45 = sCallsDomain_intentDescsByName;
  sCallsDomain_intentDescsByName = v44;

  v46 = [v35 copy];
  v47 = sCallsDomain_intentDescsByType;
  sCallsDomain_intentDescsByType = v46;
}

@end