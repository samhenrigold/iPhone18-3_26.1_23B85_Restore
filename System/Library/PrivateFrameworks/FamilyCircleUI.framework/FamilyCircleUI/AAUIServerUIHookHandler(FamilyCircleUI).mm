@interface AAUIServerUIHookHandler(FamilyCircleUI)
+ (id)fcui_defaultFresnoServerHooks;
@end

@implementation AAUIServerUIHookHandler(FamilyCircleUI)

+ (id)fcui_defaultFresnoServerHooks
{
  v17[15] = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(FAInvokeMessageHook);
  v17[0] = v16;
  v15 = objc_alloc_init(FALaunchServicesHook);
  v17[1] = v15;
  v14 = objc_alloc_init(FABuyStorageHook);
  v17[2] = v14;
  v13 = objc_alloc_init(FALocationSharingHook);
  v17[3] = v13;
  v12 = objc_alloc_init(FALaunchScreenTimeSetupHook);
  v17[4] = v12;
  v11 = objc_alloc_init(FACreateChildAccountHook);
  v17[5] = v11;
  v0 = objc_alloc_init(FAShowFamilyScreenTimeHook);
  v17[6] = v0;
  v1 = objc_alloc_init(MEMORY[0x277CECA80]);
  v17[7] = v1;
  v2 = objc_alloc_init(FAShowSubscriptionsHook);
  v17[8] = v2;
  v3 = objc_alloc_init(FAShowAccountDetailsHook);
  v17[9] = v3;
  v4 = objc_alloc_init(FAResendFamilyInviteHook);
  v17[10] = v4;
  v5 = objc_alloc_init(_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook);
  v17[11] = v5;
  v6 = objc_alloc_init(_TtC14FamilyCircleUI26ExpressParentalControlHook);
  v17[12] = v6;
  v7 = objc_alloc_init(FAAgeRangeAttestationOnboardingHook);
  v17[13] = v7;
  v8 = objc_alloc_init(FAPeerPaymentHook);
  v17[14] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:15];

  return v9;
}

@end