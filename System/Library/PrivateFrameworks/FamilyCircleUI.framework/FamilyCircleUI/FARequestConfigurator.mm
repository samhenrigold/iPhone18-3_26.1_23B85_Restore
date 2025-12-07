@interface FARequestConfigurator
@end

@implementation FARequestConfigurator

void __74__FARequestConfigurator_FamilyCircleUI__requestForContext_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v10];
    [v6 setHTTPMethod:@"POST"];
    v7 = *(a1 + 32);
    v8 = [v6 copy];
    (*(v7 + 16))(v7, v8, v5);

LABEL_3:
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1008];
    (*(v9 + 16))(v9, 0, v6);
    goto LABEL_3;
  }

  (*(v9 + 16))(v9, 0, v5);
LABEL_6:
}

void __66__FARequestConfigurator_FamilyCircleUI___urlEndpointForEventType___block_invoke()
{
  v20[18] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D081B8];
  v19[0] = @"FACircleEventTypeInitiate";
  v19[1] = @"FACircleEventTypeAcceptInvitation";
  v1 = *MEMORY[0x277D08148];
  v20[0] = v0;
  v20[1] = v1;
  v2 = *MEMORY[0x277D081E0];
  v19[2] = @"FACircleEventTypeAcceptInvitationFromMessages";
  v19[3] = @"FACircleEventTypeManageCircle";
  v3 = *MEMORY[0x277D081A8];
  v20[2] = v2;
  v20[3] = v3;
  v4 = *MEMORY[0x277D08158];
  v19[4] = @"FACircleEventTypeAddFamilyMember";
  v19[5] = @"FACircleEventTypeAddFamilyMemberV3";
  v5 = *MEMORY[0x277D08160];
  v20[4] = v4;
  v20[5] = v5;
  v6 = *MEMORY[0x277D081C0];
  v19[6] = @"FACircleEventTypeInviteViaMessages";
  v19[7] = @"FACircleEventTypeGetFamilyInvitationsUI";
  v7 = *MEMORY[0x277D081B0];
  v20[6] = v6;
  v20[7] = v7;
  v8 = *MEMORY[0x277D08150];
  v19[8] = @"FACircleEventTypeAddMemberInline";
  v19[9] = @"FACircleEventTypeFamilyRepair";
  v9 = *MEMORY[0x277D081A0];
  v20[8] = v8;
  v20[9] = v9;
  v10 = *MEMORY[0x277D081D8];
  v19[10] = @"FACircleEventTypeParentalControls";
  v19[11] = @"FACircleEventTypeConnectWithFamily";
  v11 = *MEMORY[0x277D08178];
  v20[10] = v10;
  v20[11] = v11;
  v12 = *MEMORY[0x277D08190];
  v19[12] = @"FACircleEventTypeFamilyPicker";
  v19[13] = @"FACircleEventTypeMercuryJourney";
  v13 = *MEMORY[0x277D081C8];
  v20[12] = v12;
  v20[13] = v13;
  v14 = *MEMORY[0x277D08188];
  v19[14] = @"FACircleEventTypeViewMemberDetail";
  v19[15] = @"FACircleEventTypeAddRemoteGuardian";
  v15 = *MEMORY[0x277D08168];
  v20[14] = v14;
  v20[15] = v15;
  v19[16] = @"FACircleEventTypeShowPrivacySafetyUI";
  v19[17] = @"FACircleEventTypeFamilyPrivacyDisclosureUI";
  v16 = *MEMORY[0x277D08198];
  v20[16] = *MEMORY[0x277D081E8];
  v20[17] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:18];
  v18 = _urlEndpointForEventType__eventTypeToEndpointMap;
  _urlEndpointForEventType__eventTypeToEndpointMap = v17;
}

@end