id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NPAssembly_assemblies;
  sub_1D773C3A0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78CB9A0;
  v4 = type metadata accessor for DatabaseAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1D773C480(qword_1EE095F20, type metadata accessor for DatabaseAssembly, &unk_1D78CD664);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for DiagnosticAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1D773C480(&qword_1EE095DC0, type metadata accessor for DiagnosticAssembly, &unk_1D78C7CE4);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for ManagerAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1D773C480(qword_1EE0961F8, type metadata accessor for ManagerAssembly, &unk_1D78CC644);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for FactoryAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1D773C480(qword_1EE0962A8, type metadata accessor for FactoryAssembly, &unk_1D78C3CA4);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for UtilityAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_1D773C480(qword_1EE095FC8, type metadata accessor for UtilityAssembly, &unk_1D78BFC84);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for StylerAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_1D773C480(&qword_1EE096348, type metadata accessor for StylerAssembly, &unk_1D78C0510);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for RendererAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_1D773C480(&qword_1EE095E68, type metadata accessor for RendererAssembly, &unk_1D78C6C34);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for PaywallAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_1D773C480(qword_1EE096148, type metadata accessor for PaywallAssembly, &unk_1D78C4174);
  *(v3 + 312) = v19;
  v20 = type metadata accessor for PurchasingSpinnerAssembly();
  v21 = swift_allocObject();
  *(v3 + 376) = v20;
  *(v3 + 384) = sub_1D773C480(&qword_1EE095A98, type metadata accessor for PurchasingSpinnerAssembly, &unk_1D78C340C);
  *(v3 + 352) = v21;
  v22 = type metadata accessor for SubscriptionOffersAssembly();
  v23 = swift_allocObject();
  *(v3 + 416) = v22;
  *(v3 + 424) = sub_1D773C480(&qword_1EE096418, type metadata accessor for SubscriptionOffersAssembly, &unk_1D78C30FC);
  *(v3 + 392) = v23;
  v24 = type metadata accessor for HideMyEmailSignupAssembly();
  v25 = swift_allocObject();
  *(v3 + 456) = v24;
  *(v3 + 464) = sub_1D773C480(&qword_1EE095B48, type metadata accessor for HideMyEmailSignupAssembly, &unk_1D78C776C);
  *(v3 + 432) = v25;
  *&v0[v2] = v3;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

void sub_1D773C3A0(uint64_t a1)
{
  if (!qword_1EE095798)
  {
    sub_1D773C3F8();
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095798);
    }
  }
}

unint64_t sub_1D773C3F8()
{
  result = qword_1EE096458;
  if (!qword_1EE096458)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE096458);
  }

  return result;
}

uint64_t sub_1D773C480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PostPurchaseDestination(uint64_t a1)
{
  result = qword_1EE095C00;
  if (!qword_1EE095C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D773C67C(uint64_t a1)
{
  result = sub_1D78B3294();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D773C6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D773C760()
{
  v0 = sub_1D78B3A24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  type metadata accessor for DiagnosticFileProvider();
  sub_1D78B3E44();

  sub_1D78B3AC4();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D78B3ED4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6500], v0);
  sub_1D78B3EE4();
  (*(v1 + 8))(v4, v0);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D773C9B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D773CA14(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D773CAA4()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  sub_1D773C6FC(0, &qword_1EE096440, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  sub_1D78B3E44();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D78B3844();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D773CC38()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  sub_1D78B3E54();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D78B3844();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D78B3AB4();
  sub_1D773CA14(0, &unk_1EE095920, &protocol descriptor for PurchaseContextEntriesManagerType, 1);
  sub_1D78B3E54();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095840, &protocol descriptor for PurchaseAdContextEntriesManagerType, 1);
  sub_1D78B3E54();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095990, &protocol descriptor for PaywallShownEntriesManagerType, 1);
  sub_1D78B3E54();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  type metadata accessor for BridgedFamilyStatusManager();
  sub_1D78B3E44();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  type metadata accessor for AppActivationURLHandler();
  sub_1D78B3E44();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE096420, &protocol descriptor for BundleSubscriptionDetectionManagerType, 0);
  sub_1D78B3E54();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  sub_1D773D21C(0, &unk_1EE0957A0, &protocolRef_SXSubscriptionActivationEligibilityProviding);
  sub_1D78B3E44();

  sub_1D78B3AA4();
  sub_1D773D21C(0, &qword_1EE08FC88, &protocolRef_SXOfferIdentifierProviding);
  sub_1D78B3E44();

  sub_1D78B3AB4();
  type metadata accessor for BundleSubscriptionDetectionManager();
  sub_1D78B3E44();
}

uint64_t sub_1D773D21C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D773D27C(uint64_t a1)
{
  sub_1D773F0BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for PurchaseContext(uint64_t a1)
{
  result = qword_1EE096098;
  if (!qword_1EE096098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D773D378(uint64_t a1)
{
  sub_1D773D4A0();
  if (v1 <= 0x3F)
  {
    sub_1D773F1CC(319, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    if (v2 <= 0x3F)
    {
      sub_1D773F1CC(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D773D4A0()
{
  if (!qword_1EE0957D8)
  {
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0957D8);
    }
  }
}

uint64_t sub_1D773D4F0(uint64_t a1)
{
  v2 = sub_1D78B3A24();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v38 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B3FE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095810, &protocol descriptor for PaidBundleViaOfferFeatureAvailabilityType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE096370, &protocol descriptor for SubscriptionAccessMeterType, 0);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE0959E0, &protocol descriptor for BundlePurchasePrewarmerType, 0);
  sub_1D78B3E54();

  v11 = *MEMORY[0x1E69D6AD0];
  v12 = *(v7 + 104);
  v12(v10, v11, v6);
  sub_1D78B3844();

  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095CF0, &protocol descriptor for PurchaseStarterType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095CE0, &protocol descriptor for PurchasePresenterType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE0957E0, MEMORY[0x1E69B6748], 0);
  sub_1D78B3E54();

  v12(v10, v11, v6);
  sub_1D78B3844();

  v13(v10, v6);
  sub_1D78B3AA4();
  sub_1D773D21C(0, &unk_1EE0957B8, &protocolRef_NPFamilySharingSetupPresenterType);
  sub_1D78B3E44();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095D10, &protocol descriptor for MetricsProviderType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773D21C(0, &qword_1EE0957C8, &protocolRef_NPFamilyEligibilityProviderType);
  sub_1D78B3E44();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095830, &protocol descriptor for FamilySharingLandingPageLauncherType, 1);
  sub_1D78B3E54();

  v12(v10, v11, v6);
  sub_1D78B3844();

  v13(v10, v6);
  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  sub_1D78B3E54();

  v12(v10, v11, v6);
  sub_1D78B3844();

  v13(v10, v6);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE090C70, &protocol descriptor for ConfigurableOffersConfigFetcherType, 1);
  sub_1D78B3E54();

  v12(v10, v11, v6);
  sub_1D78B3844();

  v13(v10, v6);
  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE090908, &protocol descriptor for ConfigurableOffersDebugGroupProviderType, 1);
  sub_1D78B3E54();

  v33 = v11;
  v12(v10, v11, v6);
  v34 = v12;
  v35 = v7 + 104;
  sub_1D78B3844();

  v13(v10, v6);
  v36 = v13;
  v37 = v7 + 8;
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE093650, &protocol descriptor for OfferConfigMatcherType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095C10, &protocol descriptor for EntitlementsManagerType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095AA0, &protocol descriptor for OfferOverrideProviderType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095B50, &protocol descriptor for WebOptinFlowManagerType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095820, &protocol descriptor for WebAccessConversionEventReporterType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType, 1);
  sub_1D78B3E54();

  v39 = a1;
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095E70, &protocol descriptor for PurchaseObserver, 0);
  sub_1D78B3E54();

  v32 = v6;
  v12(v10, v11, v6);
  v31 = v10;
  sub_1D78B3844();

  v13(v10, v6);
  sub_1D78B3AC4();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D773CA14(0, &qword_1EE096448, MEMORY[0x1E69D6938], 1);
  v14 = *MEMORY[0x1E69D6500];
  v15 = v40;
  v16 = v41;
  v17 = *(v41 + 104);
  v30 = v41 + 104;
  v18 = v38;
  v17(v38, v14, v40);
  sub_1D78B3EF4();
  v19 = v16 + 8;
  v20 = *(v16 + 8);
  v41 = v19;
  v20(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D78B3AC4();
  v28 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D773CA14(0, &qword_1EE096450, MEMORY[0x1E69D68B0], 1);
  v29 = v14;
  v17(v18, v14, v15);
  sub_1D78B3EF4();
  v20(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D78B3AC4();
  v28 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D78B3DC4();
  v21 = v40;
  v17(v18, v14, v40);
  sub_1D78B3EE4();
  v20(v18, v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D78B3AC4();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  v17(v18, v29, v21);
  sub_1D78B3EF4();
  v20(v18, v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095930, &protocol descriptor for PostPurchaseOnboardingManagerType, 1);
  sub_1D78B3E54();

  v22 = v31;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v34(v31, v33, v32);
  sub_1D78B3844();

  v26 = v36;
  v36(v22, v23);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095998, &protocol descriptor for PaidBundleViaOfferHandlerType, 1);
  sub_1D78B3E54();

  v25(v22, v24, v23);
  sub_1D78B3844();

  v26(v22, v23);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095970, &protocol descriptor for PaidBundleViaOfferStateStoreType, 1);
  sub_1D78B3E54();

  v25(v22, v24, v23);
  sub_1D78B3844();

  v26(v22, v23);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095CC8, &protocol descriptor for LandingPageDeciderType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095C20, &protocol descriptor for ConfigVersionParserType, 1);
  sub_1D78B3E54();

  sub_1D78B3AB4();
  sub_1D78B3E34();
}

uint64_t sub_1D773E580(uint64_t a1)
{
  sub_1D78B3AA4();
  sub_1D773C9B8(0, &qword_1EE095CE8, &protocol descriptor for ColorPaletteProviding);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773C9B8(0, &unk_1EE096350, &protocol descriptor for BaseStylerType);
  sub_1D78B3E54();
}

uint64_t sub_1D773E65C(uint64_t a1)
{
  sub_1D78B3AA4();
  sub_1D773F220();
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773E718();
  sub_1D78B3E44();
}

unint64_t sub_1D773E718()
{
  result = qword_1EE0957F0;
  if (!qword_1EE0957F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0957F0);
  }

  return result;
}

uint64_t sub_1D773E77C(uint64_t a1)
{
  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095DC8, &protocol descriptor for PaywallModuleType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D78B3E54();

  sub_1D78B3AA4();
  type metadata accessor for FlexiblePaywallFailsafeViewProvider();
  sub_1D78B3E44();

  sub_1D78B3AB4();
  sub_1D78B3E34();
}

uint64_t sub_1D773E9C0()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  sub_1D78B3E44();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D78B3844();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE095D20, &protocol descriptor for PaywallFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095838, &protocol descriptor for AccountPageViewControllerFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773F004(0, &qword_1EE0957B0, off_1E84E0C88);
  sub_1D78B3E44();

  sub_1D78B3834();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095910, &protocol descriptor for WebAccessAuthenticatorFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095980, &protocol descriptor for DynamicViewControllerFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  type metadata accessor for DynamicViewControllerFactory();
  sub_1D78B3E44();

  sub_1D78B3AA4();
  type metadata accessor for DynamicViewControllerDelegate(0);
  sub_1D78B3E44();

  sub_1D78B3834();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095958, &protocol descriptor for AMSUIWebViewControllerFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE096430, &protocol descriptor for PaywallTypeProviderType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095948, &protocol descriptor for ArticlePurchaseOffersProviderType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095940, &protocol descriptor for BundleArticleSoftPaywallMeterType, 0);
  sub_1D78B3E54();

  v6(v4, v5, v0);
  sub_1D78B3844();

  v7(v4, v0);
  sub_1D78B3AB4();
  sub_1D78B3E34();
}

uint64_t sub_1D773F004(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for DynamicViewControllerDelegate(uint64_t a1)
{
  result = qword_1EE0959A8;
  if (!qword_1EE0959A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D773F0BC(uint64_t a1)
{
  if (!qword_1EE096030[0])
  {
    type metadata accessor for PurchaseContext(255);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, qword_1EE096030);
    }
  }
}

void sub_1D773F114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D773F178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D773F1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D773F220()
{
  result = qword_1EE0957F8;
  if (!qword_1EE0957F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0957F8);
  }

  return result;
}

uint64_t sub_1D773F2AC(uint64_t a1)
{
  sub_1D78B3AA4();
  sub_1D773C9B8(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType);
  sub_1D78B3E54();

  sub_1D78B3AB4();
  sub_1D78B3E34();
}

uint64_t sub_1D773F360(uint64_t a1)
{
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE096368, &protocol descriptor for SubscriptionOffersModuleType, 1);
  sub_1D78B3E54();

  sub_1D78B3AB4();
  sub_1D78B3E34();
}

uint64_t sub_1D773F418()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE0959D8, &protocol descriptor for HideMyEmailSignupModuleType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, qword_1EE0959F8, &protocol descriptor for SIWACredentialServiceType, 1);
  sub_1D78B3E54();

  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE0959F0, &protocol descriptor for SIWACredentialUploaderType, 1);
  sub_1D78B3E54();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D78B3844();

  (*(v1 + 8))(v4, v0);
  sub_1D78B3AA4();
  sub_1D773CA14(0, &qword_1EE095968, &protocol descriptor for SIWACredentialUploadDatabaseType, 1);
  sub_1D78B3E54();

  sub_1D78B3AB4();
  sub_1D78B3E34();
}

void *sub_1D773F71C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &qword_1EE0959F0, &protocol descriptor for SIWACredentialUploaderType, 1);
  sub_1D78B39F4();
  if (v5[3])
  {
    sub_1D773CA14(0, &unk_1EE095370, MEMORY[0x1E69D66C8], 0);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D78B3E64();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    sub_1D7747C24(v5, &unk_1EC9CA0D8, &qword_1EE0959F0, &protocol descriptor for SIWACredentialUploaderType);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  if (v5[0])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D78B3E64();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D773F90C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0959F8, &protocol descriptor for SIWACredentialServiceType, 1);
  result = sub_1D78B39F4();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE095968, &protocol descriptor for SIWACredentialUploadDatabaseType, 1);
    result = sub_1D78B39F4();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x1EEE9AC00](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for HideMyEmailService();
      v33[3] = v15;
      v33[4] = &off_1F52703D8;
      v33[0] = v13;
      v16 = type metadata accessor for SIWACredentialUploadDatabase();
      v31 = v16;
      v32 = &off_1F526B6F8;
      v30[0] = v14;
      v17 = type metadata accessor for SIWACredentialUploader();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x1EEE9AC00](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x1EEE9AC00](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_1F52703D8;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_1F526B6F8;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_1F5273728;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D773FD44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773FE7C();
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEA0, 0x1E69B5210);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = [result networkBehaviorMonitor];

  v10 = [objc_allocWithZone(MEMORY[0x1E69B5280]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (v10)
  {
    v11 = type metadata accessor for HideMyEmailService();
    result = swift_allocObject();
    result[2] = v10;
    result[3] = v7;
    a3[3] = v11;
    a3[4] = a2;
    *a3 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D773FE7C()
{
  result = qword_1EE08FC60;
  if (!qword_1EE08FC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FC60);
  }

  return result;
}

void sub_1D773FF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D773FF4C(uint64_t a1)
{
  sub_1D773FF00(319, qword_1EE0924E8, type metadata accessor for OsloSheetPurchaseDataModel);
  if (v1 <= 0x3F)
  {
    sub_1D7740094(319, v1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D773FFFC(uint64_t a1)
{
  sub_1D773F178(319, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D7740094(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE090130)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D7743258();
    sub_1D77403A8(255, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE090130);
    }
  }
}

uint64_t sub_1D77401CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7740228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D774028C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77402F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7740344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77403A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D774040C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7740470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77404D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7740528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D774057C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77405E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7740644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77406C8(uint64_t a1)
{
  sub_1D773FF00(319, &unk_1EE095680, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D7740744(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEA0, 0x1E69B5210);
  v1 = sub_1D78B39E4();
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 bundleSubscriptionManager];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1D77407D4()
{
  type metadata accessor for AppActivationURLHandler();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1D7740800(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D78B3F04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D774584C(a2, v12);
  v8 = swift_allocObject();
  sub_1D7741E34(v12, v8 + 16);
  if (qword_1EE095380 != -1)
  {
    swift_once();
  }

  v9 = sub_1D78B3C44();
  __swift_project_value_buffer(v9, qword_1EE095388);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6920], v3);
  sub_1D78B3DB4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7740998()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D77409D0()
{
  v0 = sub_1D78B3C44();
  __swift_allocate_value_buffer(v0, qword_1EE095388);
  __swift_project_value_buffer(v0, qword_1EE095388);
  return sub_1D78B3C34();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D7740AD0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &qword_1EE094CF0, &protocol descriptor for SubscriptionStatusCheckerType, 1);
  result = sub_1D78B39F4();
  if (v4[3])
  {
    sub_1D773CA14(0, &unk_1EE095358, MEMORY[0x1E69D68E8], 0);
    result = swift_dynamicCast();
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D78B3F14();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7740BF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE094FF8, &protocol descriptor for InAppSubscriptionStatusCheckerType, 1);
  result = sub_1D78B39F4();
  if (!v45)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0950E0, &protocol descriptor for WebSubscriptionStatusCheckerType, 1);
  result = sub_1D78B39F4();
  if (!v43)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  v3 = v40;
  if (!v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (v39[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType, 1);
    sub_1D78B39F4();
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v30[3] = v30;
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v30[2] = v30;
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v6;
    v13 = *v10;
    v14 = type metadata accessor for InAppSubscriptionStatusChecker();
    v37[3] = v14;
    v37[4] = &off_1F526A420;
    v37[0] = v12;
    v15 = type metadata accessor for WebSubscriptionStatusChecker();
    v35 = v15;
    v36 = &off_1F5271830;
    v34[0] = v13;
    type metadata accessor for SubscriptionStatusChecker();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v37, v14);
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    MEMORY[0x1EEE9AC00](v21, v21);
    v23 = (v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v19;
    v26 = *v23;
    v33[3] = v14;
    v33[4] = &off_1F526A420;
    v32[4] = &off_1F5271830;
    v33[0] = v25;
    v32[3] = v15;
    v32[0] = v26;
    *(v16 + 152) = 0;
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
    sub_1D774584C(v33, v16 + 16);
    sub_1D774584C(v32, v16 + 56);
    v27 = v31;
    *(v16 + 96) = v3;
    *(v16 + 104) = v27;
    sub_1D774584C(v39, v16 + 160);
    sub_1D774668C(v38, v16 + 112);
    v28 = objc_opt_self();
    swift_unknownObjectRetain();
    v29 = [v28 defaultCenter];
    [v29 addObserver:v16 selector:sel_entitlementsDidChange name:*MEMORY[0x1E698B478] object:0];
    swift_unknownObjectRelease();

    sub_1D7747C24(v38, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType);
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7741200(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
    result = sub_1D78B39F4();
    if (v4)
    {
      type metadata accessor for MetricsProvider();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v4;
      result[4] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77412EC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7745ADC(0);
  result = sub_1D78B39A4();
  if (result)
  {
    v10 = result;
    v11 = a2(0);
    swift_allocObject();
    v12 = a3(v10);

    a5[3] = v11;
    a5[4] = a4;
    *a5 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D77413F8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B68C8]);

  return [v0 init];
}

uint64_t sub_1D7741430@<X0>(uint64_t *a1@<X8>)
{
  sub_1D77445F8(0, &qword_1EE0904E8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PaidBundleViaOfferStateStore();
  v7 = swift_allocObject();
  v8 = sub_1D78B4304();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1D7748E84(0);
  swift_allocObject();
  result = sub_1D78B3C14();
  *(v7 + 16) = result;
  a1[3] = v6;
  a1[4] = &off_1F526EC20;
  *a1 = v7;
  return result;
}

uint64_t sub_1D77415C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7748F58(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D774162C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7748FBC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7741690(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7749020(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D7741718@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_1D78B3DE4();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v24[1] = v4;
  v24[2] = v7;
  v25 = v9;
  v26 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  v12 = v29;
  if (v29)
  {
    v24[0] = v30;
    v13 = type metadata accessor for BundlePurchasePrewarmer();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer__purchase;
    v28 = 0;
    sub_1D77445F8(0, &unk_1EE0952D0, sub_1D774BAA4, MEMORY[0x1E69D6AF0]);
    swift_allocObject();
    *&v14[v15] = sub_1D78B4024();
    v16 = OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_deduper;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D77445B0(&qword_1EE095368, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
    v17 = MEMORY[0x1E69D67A0];
    sub_1D77445F8(0, &qword_1EE0900B0, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    sub_1D774465C(&qword_1EE0900A8, &qword_1EE0900B0, v17);
    sub_1D78B6324();
    sub_1D774BB0C(0);
    swift_allocObject();
    *&v14[v16] = sub_1D78B3A74();
    *&v14[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_configurationManager] = v25;
    *&v14[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_networkReachability] = v10;
    *&v14[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_bundleSubscriptionManager] = v11;
    v18 = &v14[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_purchaseManager];
    v19 = v24[0];
    *v18 = v12;
    *(v18 + 1) = v19;
    v27.receiver = v14;
    v27.super_class = v13;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = objc_msgSendSuper2(&v27, sel_init);
    v21 = *(v20 + OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_networkReachability);
    v22 = v20;
    [v21 addObserver_];
    [*(v22 + OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_bundleSubscriptionManager) addObserver_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v23 = v26;
    *v26 = v22;
    v23[1] = &off_1F526EB00;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PurchaseAdContext(uint64_t a1)
{
  result = qword_1EE0943A8;
  if (!qword_1EE0943A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7741B74(uint64_t a1)
{
  sub_1D7743258();
  if (v1 <= 0x3F)
  {
    sub_1D78B3394();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7741C18@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, a2, a3);
  result = sub_1D78B39E4();
  if (result)
  {
    v12 = result;
    v13 = a4(0);
    result = swift_allocObject();
    *(result + 16) = v12;
    a6[3] = v13;
    a6[4] = a5;
    *a6 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7741CC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, qword_1EE090FE8, &protocol descriptor for PurchasingSpinnerViewStylerType);
  result = sub_1D78B39F4();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, &unk_1EE090610, &protocol descriptor for PurchasingSpinnerViewLayoutAttributesFactoryType);
  result = sub_1D78B39F4();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, &unk_1EE090D80, &protocol descriptor for PurchasingSpinnerViewRendererType);
  result = sub_1D78B39F4();
  if (v8)
  {
    v5 = type metadata accessor for PurchasingSpinnerViewControllerFactory();
    v6 = swift_allocObject();
    sub_1D7741E34(&v7, v6 + 96);
    sub_1D7741E34(&v11, v6 + 16);
    result = sub_1D7741E34(&v9, v6 + 56);
    a2[3] = v5;
    a2[4] = &off_1F526D9A8;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7741E34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D7741E4C()
{
  sub_1D773C9B8(0, qword_1EE090FE8, &protocol descriptor for PurchasingSpinnerViewStylerType);
  sub_1D78B3E54();

  sub_1D773C9B8(0, &unk_1EE090610, &protocol descriptor for PurchasingSpinnerViewLayoutAttributesFactoryType);
  sub_1D78B3E54();

  sub_1D773C9B8(0, &unk_1EE090D80, &protocol descriptor for PurchasingSpinnerViewRendererType);
  sub_1D78B3E54();
}

uint64_t sub_1D7741F44@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PurchasingSpinnerViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52681A8;
  *a1 = result;
  return result;
}

void *sub_1D7741FFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FD70, &protocolRef_FCPurchaseManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE094CF8, &protocol descriptor for SubscriptionExpiryManagerType, 0);
  result = sub_1D78B39F4();
  v8 = v33;
  if (!v33)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095C10, &protocol descriptor for EntitlementsManagerType, 1);
  result = sub_1D78B39F4();
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v34;
  v24 = v7;
  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090438, MEMORY[0x1E69D7AB0], 1);
  result = sub_1D78B39F4();
  if (v28)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for EntitlementsManager();
    v26[3] = v14;
    v26[4] = &off_1F526DCC0;
    v26[0] = v13;
    v15 = type metadata accessor for InAppSubscriptionStatusChecker();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v14);
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[15] = v14;
    v16[16] = &off_1F526DCC0;
    v16[12] = v21;
    v16[2] = v5;
    v16[3] = v6;
    v16[4] = v24;
    v16[5] = v8;
    v16[6] = v23;
    sub_1D7741E34(&v29, (v16 + 7));
    sub_1D7741E34(&v27, (v16 + 17));
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    v22 = v25;
    v25[3] = v15;
    v22[4] = &off_1F526A420;
    *v22 = v16;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D7742464@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE78, 0x1E69B5630);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095C10, &protocol descriptor for EntitlementsManagerType, 1);
  result = sub_1D78B39F4();
  if (!v36)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095910, &protocol descriptor for WebAccessAuthenticatorFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v34[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v33[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v32[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B4544();
  result = sub_1D78B39E4();
  if (result)
  {
    v9 = result;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for EntitlementsManager();
    v31[4] = &off_1F526DCC0;
    v31[3] = v15;
    v31[0] = v14;
    type metadata accessor for SubscriptionExpiryManager();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v31, v15);
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v30[4] = &off_1F526DCC0;
    v30[3] = v15;
    v30[0] = v21;
    *(v16 + 208) = 0;
    v22 = MEMORY[0x1E69E7CC0];
    *(v16 + 216) = sub_1D774A91C(MEMORY[0x1E69E7CC0]);
    *(v16 + 224) = sub_1D774A91C(v22);
    *(v16 + 240) = 0;
    *(v16 + 32) = v7;
    *(v16 + 40) = v5;
    *(v16 + 16) = v6;
    *(v16 + 24) = v8;
    sub_1D774584C(v30, v16 + 88);
    sub_1D774584C(v34, v16 + 128);
    sub_1D774584C(v33, v16 + 168);
    sub_1D774584C(v32, v16 + 48);
    v23 = objc_allocWithZone(MEMORY[0x1E69B51D0]);
    swift_unknownObjectRetain();
    v24 = v6;
    v25 = v7;
    swift_unknownObjectRetain();
    *(v16 + 232) = [v23 initWithQualityOfService_];

    v26 = sub_1D78B3924();
    sub_1D78B4534();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v29;
    *v29 = v16;
    v27[1] = &off_1F5268BA8;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_1D7742A38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FDB8, 0x1E69B5288);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095840, &protocol descriptor for PurchaseAdContextEntriesManagerType, 1);
  result = sub_1D78B39F4();
  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090438, MEMORY[0x1E69D7AB0], 1);
  result = sub_1D78B39F4();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (&v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for PurchaseAdContextEntriesManager();
    v21[3] = v13;
    v21[4] = &off_1F526C848;
    v21[0] = v12;
    type metadata accessor for EntitlementsManager();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x1EEE9AC00](v15, v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[10] = v13;
    v14[11] = &off_1F526C848;
    v14[6] = 0;
    v14[7] = v19;
    swift_unknownObjectWeakInit();
    v14[3] = v5;
    v14[4] = v3;
    v14[2] = v4;
    v14[22] = v20;
    v14[23] = v7;
    sub_1D7741E34(&v24, (v14 + 12));
    sub_1D7741E34(&v22, (v14 + 17));
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v14;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1D7742EAC()
{
  result = qword_1EE0910A0;
  if (!qword_1EE0910A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0910A0);
  }

  return result;
}

unint64_t sub_1D7742F90()
{
  result = qword_1EE091758[0];
  if (!qword_1EE091758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE091758);
  }

  return result;
}

uint64_t sub_1D7742FE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v4, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D77432A8(0, &qword_1EE096440, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1D78B39A4();
  if (result)
  {
    v7 = type metadata accessor for SIWACredentialUploadDatabase();
    v8 = swift_allocObject();
    sub_1D7745694(&qword_1EE095410, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
    sub_1D77432A8(0, &unk_1EE0900C0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D774330C();

    sub_1D78B6324();
    sub_1D77432A8(0, &qword_1EE095350, sub_1D77456DC, MEMORY[0x1E69D6A80]);
    swift_allocObject();
    v9 = sub_1D78B3F34();

    *(v8 + 16) = v9;
    a2[3] = v7;
    a2[4] = &off_1F526B6F8;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7743258()
{
  if (!qword_1EE090120)
  {
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090120);
    }
  }
}

void sub_1D77432A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D774330C()
{
  result = qword_1EE0900B8;
  if (!qword_1EE0900B8)
  {
    sub_1D77432A8(255, &unk_1EE0900C0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0900B8);
  }

  return result;
}

uint64_t type metadata accessor for SiwaCredentialUploadData(uint64_t a1)
{
  result = qword_1EE092B78;
  if (!qword_1EE092B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D77433E0(uint64_t a1)
{
  sub_1D7743258();
  if (v1 <= 0x3F)
  {
    sub_1D78B3394();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D7743488()
{
  result = qword_1EE093BE0;
  if (!qword_1EE093BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093BE0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_1D7743550@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D78B33C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B3DE4();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1D78B60F4();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v13);
  v56 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D78B60D4();
  MEMORY[0x1EEE9AC00](v54, v15);
  v55 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D78B52A4();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v53 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  v52 = result;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  v51 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (!v65[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C70, &protocol descriptor for ConfigurableOffersConfigFetcherType, 1);
  result = sub_1D78B39F4();
  if (!v64[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45[1] = v12;
  v46 = v21;
  v47 = v8;
  v48 = v5;
  v49 = v4;
  v50 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE093650, &protocol descriptor for OfferConfigMatcherType, 1);
  result = sub_1D78B39F4();
  if (v63[3])
  {
    v45[0] = type metadata accessor for OfferManager(0);
    v22 = objc_allocWithZone(v45[0]);
    v23 = &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_clientIdentifier];
    strcpy(&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_clientIdentifier], "com.apple.news");
    v23[15] = -18;
    v24 = &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_clientVersion];
    *v24 = 3157553;
    *(v24 + 1) = 0xE300000000000000;
    v25 = &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_serviceType];
    *v25 = 0x756C702D7377656ELL;
    *(v25 + 1) = 0xE900000000000073;
    v26 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_cachedBestOffers;
    sub_1D77444A0(0);
    swift_allocObject();
    *&v22[v26] = sub_1D78B3FA4();
    v27 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_cachedServicesBundleOffers;
    swift_allocObject();
    *&v22[v27] = sub_1D78B3FA4();
    v28 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_cachedNewsPlusOffers;
    swift_allocObject();
    *&v22[v28] = sub_1D78B3FA4();
    *&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers] = MEMORY[0x1E69E7CC8];
    v29 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_processQueue;
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    sub_1D78B5294();
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D77445B0(&qword_1EE08FE20, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v30 = MEMORY[0x1E69E8030];
    v31 = MEMORY[0x1E69E62F8];
    sub_1D77445F8(0, &unk_1EE08FFE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1D774465C(&qword_1EE08FFD0, &unk_1EE08FFE0, v30);
    sub_1D78B6324();
    (*(v57 + 104))(v56, *MEMORY[0x1E69E8090], v58);
    *&v22[v29] = sub_1D78B6124();
    *&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers] = MEMORY[0x1E69E7CC0];
    v32 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSessionEndTime;
    v33 = sub_1D78B3394();
    (*(*(v33 - 8) + 56))(&v22[v32], 1, 1, v33);
    *&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_offersResetTimeInterval] = 0x4014000000000000;
    v34 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduper;
    v35 = MEMORY[0x1E69D67A0];
    sub_1D77445F8(0, &qword_1EE08FAA0, MEMORY[0x1E69D67A0], MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D78BCAB0;
    sub_1D78B3DD4();
    v62 = v36;
    sub_1D77445B0(&qword_1EE095368, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
    sub_1D77445F8(0, &qword_1EE0900B0, v35, v31);
    sub_1D774465C(&qword_1EE0900A8, &qword_1EE0900B0, v35);
    sub_1D78B6324();
    sub_1D77457EC();
    swift_allocObject();
    *&v22[v34] = sub_1D78B3A74();
    v37 = &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken];
    v38 = v47;
    sub_1D78B33B4();
    v39 = sub_1D78B33A4();
    v41 = v40;
    (*(v48 + 8))(v38, v49);
    *v37 = v39;
    v37[1] = v41;
    *&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager] = v46;
    v42 = v51;
    *&v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_bundleSubscriptionManager] = v51;
    sub_1D774584C(v65, &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_featureAvailability]);
    sub_1D774584C(v64, &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurableOffersConfigFetcher]);
    sub_1D774584C(v63, &v22[OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher]);
    v61.receiver = v22;
    v61.super_class = v45[0];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v43 = objc_msgSendSuper2(&v61, sel_init);
    [v52 addObserver_];
    [v42 addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v64);
    result = __swift_destroy_boxed_opaque_existential_1(v65);
    v44 = v50;
    *v50 = v43;
    v44[1] = &off_1F526B9E0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D7743F40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE090248, MEMORY[0x1E69B6398], 1);
    result = sub_1D78B39F4();
    if (v10)
    {
      v6 = type metadata accessor for ConfigurableOffersConfigFetcher();
      v7 = swift_allocObject();
      sub_1D78B5424();
      swift_allocObject();
      v8 = sub_1D78B5414();
      v7[9] = 1;
      v7[2] = v8;
      v7[3] = v5;
      result = sub_1D7741E34(&v9, (v7 + 4));
      a2[3] = v6;
      a2[4] = &protocol witness table for ConfigurableOffersConfigFetcher;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7744094@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, a2, a3);
  result = sub_1D78B39E4();
  if (result)
  {
    v12 = result;
    v13 = a4(0);
    result = swift_allocObject();
    *(result + 16) = v12;
    a6[3] = v13;
    a6[4] = a5;
    *a6 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for OfferManager(uint64_t a1)
{
  result = qword_1EE094B10;
  if (!qword_1EE094B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D77441E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7744248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D77442AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7744310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7744374(uint64_t a1)
{
  sub_1D7744248(319, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D77444A0(uint64_t a1)
{
  if (!qword_1EE0952E0)
  {
    sub_1D7744504();
    v1 = sub_1D78B3FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0952E0);
    }
  }
}

unint64_t sub_1D7744504()
{
  result = qword_1EE093E78;
  if (!qword_1EE093E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093E78);
  }

  return result;
}

unint64_t sub_1D774455C()
{
  result = qword_1EE093E70;
  if (!qword_1EE093E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093E70);
  }

  return result;
}

uint64_t sub_1D77445B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D77445F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D774465C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D77445F8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7744700(uint64_t a1)
{
  v1 = type metadata accessor for AppLaunchMethod.IndirectMethod(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D7744758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t AppLaunchMethodChecker.init(appActivationURLHandler:notificationLaunchStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  v9 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  *(v4 + 16) = a1;
  v10 = (v4 + OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_notificationLaunchStatusProvider);
  *v10 = a2;
  v10[1] = a3;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = sub_1D789A1C4;
  *(a1 + 24) = v11;
  swift_unknownObjectRetain();

  sub_1D7744A7C(v12, v13);

  v14 = *(v4 + OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_notificationLaunchStatusProvider);
  if (v14)
  {
    v15 = *(v4 + OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_notificationLaunchStatusProvider + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    v18 = swift_allocObject();
    swift_weakInit();

    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v14;
    v19[4] = v15;
    swift_unknownObjectRetain();
    sub_1D78B3B04();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_1D7744A04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7744A3C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7744A7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1D7744A8C()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PurchaseStarter(0);
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE091458, &protocol descriptor for SIWAPurchaseConfigProviderType, 1);
  sub_1D78B3E54();

  type metadata accessor for PurchasePresenter(0);
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE094CF0, &protocol descriptor for SubscriptionStatusCheckerType, 1);
  sub_1D78B3E54();

  type metadata accessor for SubscriptionStatusChecker();
  sub_1D78B3E44();
  sub_1D78B3834();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D78B3844();

  v16 = *(v1 + 8);
  v16(v4, v0);
  type metadata accessor for EntitlementsManager();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773CA14(0, qword_1EE094FF8, &protocol descriptor for InAppSubscriptionStatusCheckerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0950E0, &protocol descriptor for WebSubscriptionStatusCheckerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE094CF8, &protocol descriptor for SubscriptionExpiryManagerType, 0);
  sub_1D78B3E54();

  type metadata accessor for MetricsProvider();
  sub_1D78B3E44();

  sub_1D773CA14(0, &unk_1EE090C40, &protocol descriptor for PurchaseTransactionTrackerProviderType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE092210, &protocol descriptor for WebAccessOptInProviderType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE093BF0, &protocol descriptor for ReceiptRefresherType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090F18, &protocol descriptor for OsloAbandonmentUpsellManagerType, 1);
  sub_1D78B3E54();

  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v14[1] = v1 + 104;
    v15 = v6;
    v9 = sub_1D78B5C74();
    v11 = v10;

    if (v9 == 0x6C7070612E6D6F63 && v11 == 0xEE007377656E2E65)
    {

      v12 = v15;
    }

    else
    {
      v13 = sub_1D78B6724();

      v12 = v15;
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    type metadata accessor for InAppMessageCoordinator();
    sub_1D78B3E44();
    v12(v4, v5, v0);
    sub_1D78B3844();

    v16(v4, v0);
  }
}

uint64_t type metadata accessor for PurchaseStarter(uint64_t a1)
{
  result = qword_1EE094630;
  if (!qword_1EE094630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7745128(uint64_t a1)
{
  sub_1D773F0BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D77451E4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1D78B39E4();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PurchasePresenter(uint64_t a1)
{
  result = qword_1EE0942E8;
  if (!qword_1EE0942E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D77452B4(uint64_t a1)
{
  sub_1D77453D8(319, qword_1EE096030, type metadata accessor for PurchaseContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D77453D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D774542C()
{
  v0 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = MEMORY[0x1E69D6420];
  sub_1D773C6FC(0, &qword_1EE08FAB0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D78BCAB0;
  sub_1D78B3904();
  sub_1D7745618();
  sub_1D773C6FC(0, &unk_1EE0900C0, v2, MEMORY[0x1E69E62F8]);
  sub_1D774330C();
  sub_1D78B6324();
  sub_1D773C6FC(0, &qword_1EE096440, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  return sub_1D78B3F34();
}

unint64_t sub_1D7745618()
{
  result = qword_1EE095410;
  if (!qword_1EE095410)
  {
    sub_1D78B3914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE095410);
  }

  return result;
}

uint64_t sub_1D7745694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D77456DC(uint64_t a1)
{
  if (!qword_1EE0904B0)
  {
    type metadata accessor for SiwaCredentialUploadData(255);
    sub_1D7743488();
    sub_1D77457A8(&qword_1EE092B88, &unk_1D78CC434);
    sub_1D77457A8(&qword_1EE092B90, &unk_1D78CC40C);
    v1 = sub_1D78B43C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0904B0);
    }
  }
}

uint64_t sub_1D77457A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiwaCredentialUploadData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D77457EC()
{
  if (!qword_1EE0953D0)
  {
    v0 = sub_1D78B3A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0953D0);
    }
  }
}

uint64_t sub_1D774584C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D77458D0(uint64_t a1)
{
  result = type metadata accessor for AppLaunchMethod(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7745978(uint64_t a1)
{
  sub_1D78B3294();
  if (v1 <= 0x3F)
  {
    sub_1D7740644(319, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D7745A1C(uint64_t a1)
{
  result = sub_1D789A390(&qword_1EE0939B8, type metadata accessor for AppLaunchMethodChecker, &protocol conformance descriptor for AppLaunchMethodChecker);
  *(a1 + 8) = result;
  return result;
}

void sub_1D7745ADC(uint64_t a1)
{
  if (!qword_1EE096440)
  {
    sub_1D78B4474();
    v1 = sub_1D78B3F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE096440);
    }
  }
}

void *sub_1D7745B88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957C8, &protocolRef_NPFamilyEligibilityProviderType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  v7 = v13;
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (v12)
  {
    v9 = type metadata accessor for FamilySharingLandingPageLauncher();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[9] = v7;
    v10[10] = v8;
    result = sub_1D7741E34(&v11, (v10 + 4));
    a2[3] = v9;
    a2[4] = &protocol witness table for FamilySharingLandingPageLauncher;
    *a2 = v10;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D7745D8C(uint64_t a1)
{
  if (!qword_1EE0953F0)
  {
    sub_1D7742F90();
    v1 = sub_1D78B3984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0953F0);
    }
  }
}

unint64_t sub_1D7745DE8()
{
  result = qword_1EE091750;
  if (!qword_1EE091750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091750);
  }

  return result;
}

void *sub_1D7745E3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095C20, &protocol descriptor for ConfigVersionParserType, 1);
  result = sub_1D78B39F4();
  if (v9)
  {
    v6 = type metadata accessor for OsloAbandonmentUpsellManager();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_1D7741E34(&v10, v7 + 24);
    result = sub_1D7741E34(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_1F526EAF0;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7745FA4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D7745FF4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = sub_1D78B52D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v11 = sub_1D78B6104();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1D78B52F4();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = type metadata accessor for DisposablePurchaseObserver();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v7 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  swift_beginAccess();

  MEMORY[0x1DA703120](v14);
  if (*((*(v4 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  swift_endAccess();
  a3[3] = v11;
  result = sub_1D7746524(&qword_1EE0925A8, type metadata accessor for DisposablePurchaseObserver, &unk_1D78BF29C);
  a3[4] = result;
  *a3 = v7;
  return result;
}

void *sub_1D7746240@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE094CF8, &protocol descriptor for SubscriptionExpiryManagerType, 0);
  result = sub_1D78B39F4();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEC0, 0x1E69B5648);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FE48, 0x1E69B5558);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for WebSubscriptionStatusChecker();
    result = swift_allocObject();
    result[6] = v10;
    result[7] = v11;
    result[2] = v6;
    result[3] = v7;
    result[4] = v8;
    result[5] = v5;
    a2[3] = v9;
    a2[4] = &off_1F5271830;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D7746430(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D773CA14(255, a3, a4, 1);
    v5 = sub_1D78B62A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7746524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D774656C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77465B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77465FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D774668C(uint64_t a1, uint64_t a2)
{
  sub_1D7746430(0, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7746708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7746770(uint64_t a1)
{
  if (!qword_1EE090270)
  {
    sub_1D773C9B8(255, &qword_1EE090280, MEMORY[0x1E69B61E0]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090270);
    }
  }
}

void sub_1D77467D8(uint64_t a1)
{
  if (!qword_1EE0901E8)
  {
    sub_1D773C9B8(255, &qword_1EE0901F0, MEMORY[0x1E69B6830]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0901E8);
    }
  }
}

void sub_1D7746840(uint64_t a1)
{
  if (!qword_1EE0901F8)
  {
    sub_1D773C9B8(255, &unk_1EE090200, MEMORY[0x1E69B6828]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0901F8);
    }
  }
}

void sub_1D77468A8(uint64_t a1)
{
  if (!qword_1EE090258)
  {
    sub_1D773C9B8(255, &qword_1EE090260, MEMORY[0x1E69B6388]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090258);
    }
  }
}

void sub_1D7746910(uint64_t a1)
{
  if (!qword_1EE090238)
  {
    sub_1D773C9B8(255, &qword_1EE090240, MEMORY[0x1E69B6520]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090238);
    }
  }
}

uint64_t sub_1D7746978(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D77441E4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D77469DC(uint64_t a1)
{
  if (!qword_1EE095408)
  {
    sub_1D7746A38();
    v1 = sub_1D78B3984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095408);
    }
  }
}

unint64_t sub_1D7746A38()
{
  result = qword_1EE0938F0;
  if (!qword_1EE0938F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0938F0);
  }

  return result;
}

unint64_t sub_1D7746A90()
{
  result = qword_1EE0938E0;
  if (!qword_1EE0938E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0938E0);
  }

  return result;
}

void sub_1D7746AE4(uint64_t a1)
{
  if (!qword_1EE093BC8)
  {
    sub_1D773C9B8(255, &unk_1EE093BD0, &protocol descriptor for ArticlePrefetcherType);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE093BC8);
    }
  }
}

void sub_1D7746B4C(uint64_t a1)
{
  if (!qword_1EE0925B0)
  {
    sub_1D773C9B8(255, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0925B0);
    }
  }
}

uint64_t sub_1D7746BB4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095518 = result;
  return result;
}

uint64_t sub_1D7746DE8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954B0 = result;
  return result;
}

uint64_t sub_1D7746FC8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095488 = result;
  return result;
}

uint64_t sub_1D77471A8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954A0 = result;
  return result;
}

uint64_t sub_1D7747388()
{
  result = sub_1D78B5C44();
  qword_1EE08FE00 = result;
  return result;
}

uint64_t sub_1D77473C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7747420(uint64_t a1, uint64_t a2)
{
  result = sub_1D7747CD0(&unk_1EE0938C0, a2, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7747494(uint64_t a1)
{
  result = sub_1D78B4AB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D774753C(uint64_t a1)
{
  if (!qword_1EE0953F8)
  {
    sub_1D774764C();
    v1 = sub_1D78B3984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0953F8);
    }
  }
}

uint64_t AppLaunchOnboardingManager.init(router:onboardingConfiguration:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_completionEventManager;
  sub_1D774753C(0);
  swift_allocObject();
  *(v2 + v6) = sub_1D78B3974();
  sub_1D77476F4(a1, v2 + 16);
  v7 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_onboardingConfiguration;
  v8 = sub_1D78B4AB4();
  (*(*(v8 - 8) + 32))(v3 + v7, a2, v8);
  return v3;
}

unint64_t sub_1D774764C()
{
  result = qword_1EE0926A8;
  if (!qword_1EE0926A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0926A8);
  }

  return result;
}

unint64_t sub_1D77476A0()
{
  result = qword_1EE0926A0;
  if (!qword_1EE0926A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0926A0);
  }

  return result;
}

uint64_t sub_1D7747714(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DynamicViewControllerDelegate(0);
  *(v2 + 208) = sub_1D78B39E4();

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1D7747780(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v13[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095930, &protocol descriptor for PostPurchaseOnboardingManagerType, 1);
  result = sub_1D78B39F4();
  if (!v12[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095998, &protocol descriptor for PaidBundleViaOfferHandlerType, 1);
  result = sub_1D78B39F4();
  if (v11[3])
  {
    v4 = type metadata accessor for DynamicViewControllerDelegate(0);
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
    v7 = type metadata accessor for PurchaseContext(0);
    (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
    v8 = &v5[OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate];
    *v8 = 0;
    *(v8 + 1) = 0;
    *&v5[OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_bundleSubscriptionManager] = v3;
    sub_1D774584C(v13, &v5[OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_router]);
    sub_1D774584C(v12, &v5[OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_postPurchaseOnboardingManager]);
    sub_1D774584C(v11, &v5[OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_paidBundleViaOfferHandler]);
    v10.receiver = v5;
    v10.super_class = v4;
    v9 = objc_msgSendSuper2(&v10, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D77479F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D773F1CC(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D773F1CC(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 64);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void *sub_1D7747B4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091460, &protocol descriptor for PurchaseTransactionTrackerType, 1);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for DefaultPurchaseTransactionTrackerProvider();
    v5 = swift_allocObject();
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5268540;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7747C24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7746430(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7747C80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7747CD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for AppLaunchOnboardingManager(uint64_t a1)
{
  result = qword_1EE092678;
  if (!qword_1EE092678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7747D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7747DB0(uint64_t a1)
{
  result = sub_1D7747D68(&qword_1EE092688, type metadata accessor for AppLaunchOnboardingManager, &protocol conformance descriptor for AppLaunchOnboardingManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7747E08(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, qword_1EE094CF8, &protocol descriptor for SubscriptionExpiryManagerType, 0);
  sub_1D78B39F4();
  *(v2 + 48) = v4;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7747E98(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  sub_1D78B39F4();
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v4 = (*(v10 + 8))(ObjectType);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2 + OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_resultDelegate);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7747FBC()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C268;
  v2 = sub_1D78B60A4();
  sub_1D78B42C4("Application didFinishLaunching start verifying subscription status", 66, 2, &dword_1D7739000, v1, v2, MEMORY[0x1E69E7CC0]);
  v3 = [objc_opt_self() sharedAccount];
  v4 = [v3 isUserSignedIntoiTunes];

  *(v0 + 200) = v4;

  sub_1D78B38B4();
}

uint64_t sub_1D77480C0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EE09C268 = result;
  return result;
}

unint64_t sub_1D774819C()
{
  result = qword_1EE08FB80;
  if (!qword_1EE08FB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FB80);
  }

  return result;
}

uint64_t AppLaunchMethodChecker.sceneWillConnectToSession(withOptions:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppLaunchMethod(0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - v9;
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7740644(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v41 - v22;
  v44 = a1;
  sub_1D78B3E84();
  sub_1D773C9B8(0, &unk_1EE092BA0, &protocol descriptor for SceneOptionsURLProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
  }

  sub_1D789A4E0(v48, v45, &unk_1EE092B98, &unk_1EE092BA0, &protocol descriptor for SceneOptionsURLProviding, sub_1D774EE48);
  v24 = v46;
  if (v46)
  {
    v25 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v25 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    sub_1D789A554(v45, &unk_1EE092B98, &unk_1EE092BA0, &protocol descriptor for SceneOptionsURLProviding, sub_1D774EE48);
    (*(v12 + 56))(v23, 1, 1, v11);
  }

  sub_1D789A4E0(v23, v20, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    sub_1D789A554(v20, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
  }

  else
  {
    v42 = v2;
    v26 = *(v12 + 32);
    v26(v15, v20, v11);
    v27 = sub_1D78B5C74();
    sub_1D781A0E0(v27, v28);
    v30 = v29;

    if (v30)
    {

      sub_1D789A554(v23, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
      v26(v10, v15, v11);
      v31 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
      v32 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
      v33 = v42;
      swift_beginAccess();
      sub_1D789A32C(v10, v33 + v32);
      swift_endAccess();
      return sub_1D789A554(v48, &unk_1EE092B98, &unk_1EE092BA0, &protocol descriptor for SceneOptionsURLProviding, sub_1D774EE48);
    }

    (*(v12 + 8))(v15, v11);
    v2 = v42;
  }

  if ((sub_1D78B3E94() & 1) != 0 || (v34 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod, swift_beginAccess(), sub_1D7752650(v2 + v34, v10, type metadata accessor for AppLaunchMethod), v35 = type metadata accessor for AppLaunchMethod.IndirectMethod(0), v36 = v2, v37 = *(*(v35 - 8) + 56), v38 = v43, v37(v43, 1, 1, v35), v39 = _s16NewsSubscription15AppLaunchMethodO2eeoiySbAC_ACtFZ_0(v10, v38), sub_1D789A164(v38, type metadata accessor for AppLaunchMethod), sub_1D789A164(v10, type metadata accessor for AppLaunchMethod), (v39 & 1) == 0))
  {
    sub_1D789A554(v23, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
  }

  else
  {
    sub_1D77AE4DC(v23, v10);
    swift_storeEnumTagMultiPayload();
    v37(v10, 0, 1, v35);
    swift_beginAccess();
    sub_1D789A32C(v10, v36 + v34);
    swift_endAccess();
  }

  return sub_1D789A554(v48, &unk_1EE092B98, &unk_1EE092BA0, &protocol descriptor for SceneOptionsURLProviding, sub_1D774EE48);
}

void *sub_1D77488E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095970, &protocol descriptor for PaidBundleViaOfferStateStoreType, 1);
  result = sub_1D78B39F4();
  if (!v11[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095810, &protocol descriptor for PaidBundleViaOfferFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (v10[3])
  {
    v6 = type metadata accessor for PaidBundleViaOfferHandler();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler____lazy_storage___paidBundleViaOfferConfig] = 1;
    *&v7[OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_appConfigurationManager] = v5;
    sub_1D774584C(v11, &v7[OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store]);
    sub_1D774584C(v10, &v7[OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_featureAvailability]);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    a2[3] = v6;
    a2[4] = &off_1F5268588;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7748ABC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  sub_1D78B3874();
  sub_1D78B38A4();
  swift_allocObject();
  *(v1 + 32) = sub_1D78B3894();
  v7 = MEMORY[0x1E69D6420];
  sub_1D7748FBC(0, &qword_1EE08FAB0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D78BCAB0;
  sub_1D78B3904();
  sub_1D77490CC(&qword_1EE095410, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1D7748FBC(0, &unk_1EE0900C0, v7, MEMORY[0x1E69E62F8]);
  sub_1D774162C(&qword_1EE0900B8, &unk_1EE0900C0, v7);
  sub_1D78B6324();
  sub_1D7748FBC(0, &qword_1EE095328, sub_1D77493AC, MEMORY[0x1E69D6A80]);
  swift_allocObject();

  *(v2 + 16) = sub_1D78B3F34();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D77F6268;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_19;
  v10 = _Block_copy(aBlock);

  [v8 scheduleLowPriorityBlock_];
  _Block_release(v10);
  return v2;
}

uint64_t sub_1D7748E4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D7748E84(uint64_t a1)
{
  if (!qword_1EE0953A0)
  {
    type metadata accessor for PaidBundleViaOfferState(255);
    sub_1D77445B0(&qword_1EE092DB8, 255, type metadata accessor for PaidBundleViaOfferState, &protocol conformance descriptor for PaidBundleViaOfferState);
    sub_1D77445B0(&qword_1EE092DC0, 255, type metadata accessor for PaidBundleViaOfferState, &protocol conformance descriptor for PaidBundleViaOfferState);
    v1 = sub_1D78B3C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0953A0);
    }
  }
}

void sub_1D7748F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7748FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7749020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7749084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77490CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7749114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PaidBundleViaOfferState(uint64_t a1)
{
  result = qword_1EE092DA0;
  if (!qword_1EE092DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D77491A8(uint64_t a1)
{
  result = sub_1D78B3394();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7749244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1D77492B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PurchaseAdContextEntriesManager.StoreDescriptor;
    v8[1] = type metadata accessor for PurchaseAdContext(255);
    v8[2] = sub_1D7742EAC();
    v8[3] = sub_1D77490CC(&qword_1EE0943B8, type metadata accessor for PurchaseAdContext, &protocol conformance descriptor for PurchaseAdContext);
    v8[4] = sub_1D77490CC(qword_1EE0943C0, type metadata accessor for PurchaseAdContext, &protocol conformance descriptor for PurchaseAdContext);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *sub_1D77493CC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FD70, &protocolRef_FCPurchaseManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  sub_1D78B38F4();
  sub_1D774584C(a1, &v19);
  v9 = swift_allocObject();
  sub_1D7741E34(&v19, v9 + 16);
  sub_1D7749740(0);
  swift_allocObject();
  v10 = sub_1D78B3F34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D10, &protocol descriptor for MetricsProviderType, 1);
  result = sub_1D78B39F4();
  if (v20)
  {
    v12 = type metadata accessor for PurchaseManager();
    v13 = objc_allocWithZone(v12);
    v14 = MEMORY[0x1E69E7CC0];
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers] = MEMORY[0x1E69E7CC0];
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers] = v14;
    v15 = &v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier];
    *v15 = 0;
    *(v15 + 1) = 0;
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager] = v7;
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseController] = v8;
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager] = v10;
    *&v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_bundleSubscriptionManager] = v11;
    sub_1D774584C(&v19, &v13[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder]);
    v18.receiver = v13;
    v18.super_class = v12;
    swift_unknownObjectRetain();
    v16 = v8;

    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v18, sel_init);
    [*&v17[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager] setDelegate_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(&v19);
    *a2 = v17;
    a2[1] = &off_1F52685D8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7749708()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1D7749740(uint64_t a1)
{
  if (!qword_1EE095320)
  {
    sub_1D773CA14(255, &unk_1EE095920, &protocol descriptor for PurchaseContextEntriesManagerType, 1);
    v1 = sub_1D78B3F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095320);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1D7749A3C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  sub_1D78B39F4();
  if (!v11)
  {
    return sub_1D7747C24(&v10, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  }

  sub_1D7741E34(&v10, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (((*(v5 + 8))(v4, v5) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &unk_1EE095E70, &protocol descriptor for PurchaseObserver, 0);
  result = sub_1D78B39F4();
  v7 = v10;
  if (v10)
  {
    v8 = *(&v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(&v10, v7, v8, ObjectType, v3);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __break(1u);
  return result;
}

void *sub_1D7749BF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE094FF8, &protocol descriptor for InAppSubscriptionStatusCheckerType, 1);
  result = sub_1D78B39F4();
  if (!v88)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE78, 0x1E69B5630);
  result = sub_1D78B39E4();
  v64 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FCD0, 0x1E69B5610);
  result = sub_1D78B39E4();
  v63 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FDB8, 0x1E69B5288);
  result = sub_1D78B39E4();
  v62 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095840, &protocol descriptor for PurchaseAdContextEntriesManagerType, 1);
  result = sub_1D78B39F4();
  if (!v86)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50, &protocol descriptor for WebOptinFlowManagerType, 1);
  result = sub_1D78B39F4();
  if (!v84[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095830, &protocol descriptor for FamilySharingLandingPageLauncherType, 1);
  result = sub_1D78B39F4();
  if (!v83[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095930, &protocol descriptor for PostPurchaseOnboardingManagerType, 1);
  result = sub_1D78B39F4();
  if (!v82[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090C40, &protocol descriptor for PurchaseTransactionTrackerProviderType, 1);
  result = sub_1D78B39F4();
  if (!v81[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v80[3])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = v7;
  v58 = v8;
  v59 = v6;
  v60 = v5;
  v61 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F18, &protocol descriptor for OsloAbandonmentUpsellManagerType, 1);
  result = sub_1D78B39F4();
  if (v79)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v56[6] = v56;
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v56[5] = v56;
    MEMORY[0x1EEE9AC00](v13, v13);
    v15 = (v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v56[4] = v56;
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v11;
    v22 = *v15;
    v23 = *v19;
    v24 = type metadata accessor for InAppSubscriptionStatusChecker();
    v76 = v24;
    v77 = &off_1F526A420;
    v75[0] = v21;
    v25 = type metadata accessor for PurchaseAdContextEntriesManager();
    v73 = v25;
    v74 = &off_1F526C848;
    v72[0] = v22;
    v26 = type metadata accessor for OsloAbandonmentUpsellManager();
    v70 = v26;
    v71 = &off_1F526EAF0;
    v69[0] = v23;
    v27 = type metadata accessor for AllPurchaseTransactionObserver();
    v28 = objc_allocWithZone(v27);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v56[3] = v56;
    MEMORY[0x1EEE9AC00](v29, v29);
    v31 = (v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v56[2] = v56;
    MEMORY[0x1EEE9AC00](v33, v33);
    v35 = (v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v56[1] = v56;
    MEMORY[0x1EEE9AC00](v37, v37);
    v39 = (v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = *v31;
    v42 = *v35;
    v43 = *v39;
    v68[3] = v24;
    v68[4] = &off_1F526A420;
    v68[0] = v41;
    v67[3] = v25;
    v67[4] = &off_1F526C848;
    v67[0] = v42;
    v66[3] = v26;
    v66[4] = &off_1F526EAF0;
    v66[0] = v43;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_failedTransactionPurchaseContexts] = MEMORY[0x1E69E7CC8];
    v44 = v59;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_configurationManager] = v60;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_appConfigurationManager] = v44;
    sub_1D774584C(v81, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider]);
    sub_1D774584C(v68, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker]);
    v45 = v57;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseController] = v57;
    v47 = v63;
    v46 = v64;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_tagController] = v64;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_subscriptionController] = v47;
    v48 = v62;
    *&v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_entitlementService] = v62;
    sub_1D774584C(v67, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager]);
    sub_1D774584C(v82, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_postPurchaseOnboardingManager]);
    sub_1D774584C(v84, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager]);
    sub_1D774584C(v83, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher]);
    sub_1D774584C(v80, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router]);
    sub_1D774584C(v66, &v28[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_osloAbandonmentUpsellManager]);
    v65.receiver = v28;
    v65.super_class = v27;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v57 = v45;
    v49 = v46;
    v50 = v47;
    v51 = v48;
    v52 = objc_msgSendSuper2(&v65, sel_init);
    [v58 addObserver_];
    v53 = sub_1D78B5C44();
    v54 = [objc_opt_self() defaultCenter];
    [v54 addObserver:v52 selector:sel_handlePurchaseAddedNotificationWithNotification_ name:v53 object:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v85);
    result = __swift_destroy_boxed_opaque_existential_1(v87);
    v55 = v61;
    *v61 = v52;
    v55[1] = &off_1F526FB80;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_1D774A820@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, qword_1EE090FE8, &protocol descriptor for PurchasingSpinnerViewStylerType);
  result = sub_1D78B39F4();
  if (v11)
  {
    v8 = a2(0);
    v9 = swift_allocObject();
    result = sub_1D7741E34(&v10, v9 + 16);
    a4[3] = v8;
    a4[4] = a3;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D774A91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D77FFF54(0, &qword_1EC9CAC30, sub_1D779DA54);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D774AA30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE78, 0x1E69B5630);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FCD0, 0x1E69B5610);
  result = sub_1D78B39E4();
  v75 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE093BF0, &protocol descriptor for ReceiptRefresherType, 1);
  result = sub_1D78B39F4();
  if (!v104)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v102[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091460, &protocol descriptor for PurchaseTransactionTrackerType, 1);
  result = sub_1D78B39F4();
  if (!v101[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v100[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE092210, &protocol descriptor for WebAccessOptInProviderType, 1);
  result = sub_1D78B39F4();
  if (!v99)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FC78, &protocolRef_SXPostActionHandlerManager);
  result = sub_1D78B39E4();
  v74 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090438, MEMORY[0x1E69D7AB0], 1);
  result = sub_1D78B39F4();
  if (!v97[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType, 1);
  result = sub_1D78B39F4();
  if (!v96)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v69 = v8;
  v70 = v7;
  v71 = v6;
  v72 = v5;
  v73 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0959F0, &protocol descriptor for SIWACredentialUploaderType, 1);
  result = sub_1D78B39F4();
  if (v94)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
    v68 = &v59;
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v67 = &v59;
    MEMORY[0x1EEE9AC00](v13, v13);
    v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    v66 = &v59;
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
    v65 = &v59;
    MEMORY[0x1EEE9AC00](v21, v21);
    v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v11;
    v26 = *v15;
    v27 = *v19;
    v28 = *v23;
    v60 = type metadata accessor for ReceiptRefresher();
    v91 = v60;
    v92 = &off_1F526C528;
    v90[0] = v25;
    v29 = type metadata accessor for WebAccessOptInProvider();
    v88 = v29;
    v89 = &off_1F526E250;
    v87[0] = v26;
    v30 = type metadata accessor for HideMyEmailService();
    v85 = v30;
    v86 = &off_1F52703E8;
    v84[0] = v27;
    v31 = type metadata accessor for SIWACredentialUploader();
    v82 = v31;
    v83 = &off_1F5273728;
    v81[0] = v28;
    v62 = type metadata accessor for WebOptinFlowManager();
    v32 = objc_allocWithZone(v62);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
    v64 = &v59;
    MEMORY[0x1EEE9AC00](v33, v33);
    v35 = (&v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v63 = &v59;
    MEMORY[0x1EEE9AC00](v37, v37);
    v39 = (&v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v61 = &v59;
    MEMORY[0x1EEE9AC00](v41, v41);
    v43 = (&v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
    v59 = &v59;
    MEMORY[0x1EEE9AC00](v45, v45);
    v47 = (&v59 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = *v35;
    v50 = *v39;
    v51 = *v43;
    v52 = *v47;
    v80[3] = v60;
    v80[4] = &off_1F526C528;
    v80[0] = v49;
    v79[3] = v29;
    v79[4] = &off_1F526E250;
    v79[0] = v50;
    v78[3] = v30;
    v78[4] = &off_1F52703E8;
    v78[0] = v51;
    v77[3] = v31;
    v77[4] = &off_1F5273728;
    v77[0] = v52;
    v53 = &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction];
    *v53 = 0;
    *(v53 + 1) = 0;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController] = 0;
    v54 = v71;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_appConfigurationManager] = v72;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_networkReachability] = v54;
    sub_1D774584C(v101, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker]);
    v55 = v69;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController] = v70;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tagController] = v55;
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_subscriptionController] = v75;
    sub_1D774584C(v80, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_receiptRefresher]);
    sub_1D774584C(v102, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory]);
    sub_1D774584C(v100, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router]);
    sub_1D774584C(v79, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider]);
    *&v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postActionHandlerManager] = v74;
    sub_1D774584C(v97, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider]);
    sub_1D774584C(v78, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_hideMyEmailService]);
    sub_1D774584C(v77, &v32[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_siwaCredentialUploader]);
    v56 = v62;
    v76.receiver = v32;
    v76.super_class = v62;
    v57 = objc_msgSendSuper2(&v76, sel_init, v59);
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v79);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v87);
    __swift_destroy_boxed_opaque_existential_1(v90);
    __swift_destroy_boxed_opaque_existential_1(v93);
    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v98);
    result = __swift_destroy_boxed_opaque_existential_1(v103);
    v58 = v73;
    v73[3] = v56;
    v58[4] = &protocol witness table for WebOptinFlowManager;
    *v58 = v57;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1D774B6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FD00, &protocolRef_FCReceiptRefresherType);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  if (v8)
  {
    v7 = type metadata accessor for ReceiptRefresher();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    result[4] = v8;
    result[5] = v9;
    a2[3] = v7;
    a2[4] = &off_1F526C528;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D774B7F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEF0, 0x1E69B5678);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C60, &protocol descriptor for PostPurchaseOnboardingPresenterType, 1);
  result = sub_1D78B39F4();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090478, MEMORY[0x1E69D7A30], 1);
  result = sub_1D78B39F4();
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090638, &protocol descriptor for PostPurchaseOnboardingViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (v11)
  {
    v7 = type metadata accessor for PostPurchaseOnboardingManager();
    v8 = swift_allocObject();
    sub_1D7745D8C(0);
    swift_allocObject();
    v9 = sub_1D78B3974();
    v8[3] = 0;
    v8[4] = 0;
    v8[2] = v9;
    v8[21] = 0;
    v8[22] = v5;
    v8[15] = v6;
    sub_1D7741E34(&v14, (v8 + 10));
    sub_1D7741E34(&v12, (v8 + 5));
    result = sub_1D7741E34(&v10, (v8 + 16));
    a2[3] = v7;
    a2[4] = &off_1F526BDF8;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D774BAA4(uint64_t a1)
{
  if (!qword_1EE08FF10)
  {
    sub_1D773F004(255, &qword_1EE08FF20, 0x1E69B54D0);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FF10);
    }
  }
}

void sub_1D774BB0C(uint64_t a1)
{
  if (!qword_1EE0953C8)
  {
    sub_1D774BAA4(255);
    v1 = sub_1D78B3A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0953C8);
    }
  }
}

void sub_1D774BB74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D774BBEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D77445F8(0, &qword_1EE096440, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1D78B39A4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773D21C(0, &qword_1EE0957C8, &protocolRef_NPFamilyEligibilityProviderType);
    result = sub_1D78B39E4();
    if (result)
    {
      sub_1D78B5A04();
      swift_allocObject();
      result = sub_1D78B59F4();
      v5 = MEMORY[0x1E69B6608];
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D774BD20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  v6 = v12;
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095810, &protocol descriptor for PaidBundleViaOfferFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (v11)
  {
    v8 = type metadata accessor for OfferOverrideProvider();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    result = sub_1D7741E34(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &protocol witness table for OfferOverrideProvider;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D774BEB0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D774BED0(uint64_t a1, uint64_t a2)
{
  sub_1D774C018(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OsloSheetPurchaseDataModel.init(purchaseID:postPurchaseDestination:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);

  return sub_1D774BED0(a2, v4);
}

void sub_1D774BFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D774C018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D774C07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1D774C0E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D774584C(a1, v58);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE096430, &protocol descriptor for PaywallTypeProviderType, 1);
  result = sub_1D78B39F4();
  if (!v57)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FD10, &protocolRef_FCPurchaseProviderType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090DA8, &protocol descriptor for BundlePaywallViewModelFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v55)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C80, &protocol descriptor for AlacartePaywallViewModelFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v53)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  v9 = v50;
  if (!v50)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v40 = v7;
  v41 = v6;
  v42 = v5;
  v43 = a2;
  v39 = v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  v44 = result;
  if (result)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v38[3] = v38;
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = (v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v38[2] = v38;
    MEMORY[0x1EEE9AC00](v14, v14);
    v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v12;
    v19 = *v16;
    v20 = type metadata accessor for BundlePaywallViewModelFactory(0);
    v49[3] = v20;
    v49[4] = &off_1F526B368;
    v49[0] = v18;
    v21 = type metadata accessor for AlacartePaywallViewModelFactory(0);
    v47 = v21;
    v48 = &off_1F5268578;
    v46[0] = v19;
    v22 = type metadata accessor for PaywallFactory();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v49, v20);
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v24, v24);
    v26 = (v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    MEMORY[0x1EEE9AC00](v28, v28);
    v30 = (v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v26;
    v33 = *v30;
    v23[20] = v20;
    v23[21] = &off_1F526B368;
    v23[17] = v32;
    v23[25] = v21;
    v23[26] = &off_1F5268578;
    v23[22] = v33;
    sub_1D7741E34(v58, (v23 + 2));
    sub_1D7741E34(&v56, (v23 + 8));
    v23[7] = v40;
    v34 = v42;
    v23[13] = v45;
    v23[14] = v34;
    v35 = v39;
    v23[27] = v9;
    v23[28] = v35;
    v23[29] = v9;
    v23[30] = v35;
    v23[31] = v34;
    v36 = v44;
    v23[15] = v41;
    v23[16] = v36;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v52);
    result = __swift_destroy_boxed_opaque_existential_1(v54);
    v37 = v43;
    v43[3] = v22;
    v37[4] = &protocol witness table for PaywallFactory;
    *v37 = v23;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D774C78C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1D78B39E4();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D774C854()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D773CA14(0, qword_1EE090DA8, &protocol descriptor for BundlePaywallViewModelFactoryType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090C80, &protocol descriptor for AlacartePaywallViewModelFactoryType, 1);
  sub_1D78B3E54();

  type metadata accessor for PaywallTypeProvider();
  sub_1D78B3E44();

  type metadata accessor for ArticlePurchaseOffersProvider();
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE090C88, &protocol descriptor for AlacarteArticleSoftPaywallMeterType, 1);
  sub_1D78B3E54();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D78B3844();

  (*(v1 + 8))(v4, v0);
  type metadata accessor for AMSUIWebViewControllerFactory();
  sub_1D78B3E44();

  type metadata accessor for AMSUIWebViewControllerDelegate();
  sub_1D78B3E44();
}

void *sub_1D774CB70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE096370, &protocol descriptor for SubscriptionAccessMeterType, 0);
  result = sub_1D78B39F4();
  v6 = v20;
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v21;
  v13 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCE8, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095940, &protocol descriptor for BundleArticleSoftPaywallMeterType, 0);
  result = sub_1D78B39F4();
  v9 = v18;
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C88, &protocol descriptor for AlacarteArticleSoftPaywallMeterType, 1);
  result = sub_1D78B39F4();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090220, MEMORY[0x1E69B6598], 1);
  result = sub_1D78B39F4();
  if (v15)
  {
    type metadata accessor for PaywallTypeProvider();
    v11 = swift_allocObject();
    v11[14] = v13;
    v11[2] = v8;
    v11[3] = v5;
    v11[4] = v6;
    v11[5] = v12;
    v11[6] = v7;
    v11[7] = v9;
    v11[8] = v10;
    sub_1D7741E34(&v16, (v11 + 9));
    sub_1D7741E34(&v14, (v11 + 15));
    return v11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1D774CE70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEF0, 0x1E69B5678);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FE48, 0x1E69B5558);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090230, MEMORY[0x1E69B6590], 1);
  result = sub_1D78B39F4();
  if (!v14[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FD10, &protocolRef_FCPurchaseProviderType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v9 = result;
    type metadata accessor for SubscriptionAccessMeter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7CC0];
    v10[12] = 0;
    v10[13] = 0;
    v10[11] = v11;
    v10[2] = v5;
    v10[3] = v6;
    sub_1D774584C(v14, (v10 + 4));
    v10[9] = v7;
    v10[10] = v8;
    v12 = v5;
    v13 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D774D12C(v9);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v10;
    a2[1] = &off_1F526F0E8;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_1D774D12C(void *a1)
{
  result = [a1 configuration];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      v5 = [v4 paidBundleConfig];
      swift_unknownObjectRelease();
      v6 = [v5 offeredBundlePurchaseIDs];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D78B5EB4();
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      v1[11] = v8;

      v9 = [v5 bundleSubscriptionsGlobalMeteredCount];

      v1[13] = v9;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    result = [a1 configuration];
    if (result)
    {
      v10 = [result subscriptionsGlobalMeteredCount];
      result = swift_unknownObjectRelease();
      v1[12] = v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D774D260@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    type metadata accessor for BundleArticleSoftPaywallMeter();
    v5 = swift_allocObject();
    *(v5 + 16) = 0xD00000000000001ELL;
    *(v5 + 24) = 0x80000001D78D6C90;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    sub_1D774D348(v4);
    result = swift_unknownObjectRelease();
    *a2 = v5;
    a2[1] = &off_1F526C498;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D774D348(void *a1)
{
  v2 = [a1 configuration];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 paidBundleConfig];
      swift_unknownObjectRelease();
      v1[6] = [v4 minimumArticlesBeforeArticleSoftPaywall];
      v5 = [v4 maximumArticlesWithSoftPaywallPerSession];

      v1[7] = v5;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v6 = objc_opt_self();
    v7 = [v6 standardUserDefaults];
    v8 = sub_1D78B5C44();
    v9 = [v7 integerForKey_];

    v1[5] = v9;
    if (!v9)
    {
      v10 = v1[6];
      v11 = [v6 standardUserDefaults];
      v12 = v1[5];
      v13 = sub_1D78B5C44();
      [v11 setInteger:v12 forKey:v13];

      v1[5] = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D774D4C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095990, &protocol descriptor for PaywallShownEntriesManagerType, 1);
  result = sub_1D78B39F4();
  if (!v26)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (qword_1EE095528 != -1)
  {
    swift_once();
  }

  v23 = v5;
  v6 = qword_1EE095530;
  v7 = qword_1EE095540;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE095548;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for PaywallShownEntriesManager();
  v24[3] = v14;
  v24[4] = &off_1F526E590;
  v24[0] = v13;
  v15 = type metadata accessor for AlacarteArticleSoftPaywallMeter();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
  MEMORY[0x1EEE9AC00](v17, v17);
  v19 = (&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v16[8] = v14;
  v16[9] = &off_1F526E590;
  v16[4] = v23;
  v16[5] = v21;
  v16[2] = v6;
  v16[3] = v8;

  __swift_destroy_boxed_opaque_existential_1(v24);
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  a2[3] = v15;
  a2[4] = &off_1F5269E40;
  *a2 = v16;
  return result;
}

void *sub_1D774D830(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  sub_1D78B3874();
  sub_1D78B38A4();
  swift_allocObject();
  *(v1 + 32) = sub_1D78B3894();
  v7 = MEMORY[0x1E69D6420];
  sub_1D7749020(0, &qword_1EE08FAB0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D78BCAB0;
  sub_1D78B3904();
  sub_1D7749114(&qword_1EE095410, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1D7749020(0, &unk_1EE0900C0, v7, MEMORY[0x1E69E62F8]);
  sub_1D7741690(&qword_1EE0900B8, &unk_1EE0900C0, v7);
  sub_1D78B6324();
  sub_1D7749020(0, &unk_1EE095340, sub_1D774DCF0, MEMORY[0x1E69D6A80]);
  swift_allocObject();

  *(v2 + 16) = sub_1D78B3F34();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D782FFE4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_25;
  v10 = _Block_copy(aBlock);

  [v8 scheduleLowPriorityBlock_];
  _Block_release(v10);
  return v2;
}

uint64_t sub_1D774DBC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D774DBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PaywallShownEntriesManager.StoreDescriptor;
    v8[1] = type metadata accessor for PaywallShownEntry(255);
    v8[2] = sub_1D774DDC8();
    v8[3] = sub_1D7749114(&qword_1EE094478, type metadata accessor for PaywallShownEntry, &unk_1D78C566C);
    v8[4] = sub_1D7749114(&unk_1EE094480, type metadata accessor for PaywallShownEntry, &unk_1D78C5644);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for PaywallShownEntry(uint64_t a1)
{
  result = qword_1EE094438;
  if (!qword_1EE094438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D774DD5C(uint64_t a1)
{
  result = sub_1D78B3394();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D774DDC8()
{
  result = qword_1EE092450[0];
  if (!qword_1EE092450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE092450);
  }

  return result;
}

uint64_t sub_1D774DE1C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[1] = 0;
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095530 = result;
  return result;
}

uint64_t sub_1D774DFFC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3394();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D78B32E4();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D774E200(0);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095548 = result;
  return result;
}

void sub_1D774E200(uint64_t a1)
{
  if (!qword_1EE095450)
  {
    sub_1D78B3394();
    sub_1D774E2DC(&unk_1EE095668, MEMORY[0x1E6969530], MEMORY[0x1E69D6CF0]);
    v1 = sub_1D78B36F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095450);
    }
  }
}

uint64_t sub_1D774E294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D774E2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D774E348@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FD10, &protocolRef_FCPurchaseProviderType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095AA0, &protocol descriptor for OfferOverrideProviderType, 1);
  result = sub_1D78B39F4();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  if (v8)
  {
    v7 = type metadata accessor for BundlePaywallViewModelFactory(0);
    swift_allocObject();
    result = sub_1D774E618(v5, v6, &v10, v8, v9);
    a2[3] = v7;
    a2[4] = &off_1F526B368;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BundlePaywallViewModelFactory(uint64_t a1)
{
  result = qword_1EE091A50;
  if (!qword_1EE091A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D774E550(uint64_t a1)
{
  result = sub_1D78B3294();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D774E618(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  strcpy((v5 + 16), "${channelName}");
  *(v5 + 31) = -18;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = 0x80000001D78D44F0;
  *(v5 + 48) = 0x7D65636972707B24;
  *(v5 + 56) = 0xE800000000000000;
  strcpy((v5 + 64), "${priceDelta}");
  *(v5 + 78) = -4864;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0xE000000000000000;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0xE000000000000000;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0xE000000000000000;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0xE000000000000000;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0xE000000000000000;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0xE000000000000000;
  sub_1D78B3274();
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL, v10, v11);
    v14 = (v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultWebAuthButtonTitle);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v17 = [v16 bundleForClass_];
    v18 = sub_1D78B3134();
    v20 = v19;

    *v14 = v18;
    v14[1] = v20;
    v21 = (v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_webAuthButtonTitle);
    v22 = [v16 bundleForClass_];
    v23 = sub_1D78B3134();
    v25 = v24;

    *v21 = v23;
    v21[1] = v25;
    *(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) = a1;
    v26 = v30;
    *(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_purchaseProvider) = v29;
    sub_1D7741E34(v26, v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
    v27 = (v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerManager);
    v28 = v32;
    *v27 = v31;
    v27[1] = v28;
    return v5;
  }

  return result;
}

uint64_t sub_1D774E9A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FD10, &protocolRef_FCPurchaseProviderType);
  result = sub_1D78B39E4();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for AlacartePaywallViewModelFactory(0);
    swift_allocObject();
    result = sub_1D774EBF8(v5, v6, v7);
    a2[3] = v8;
    a2[4] = &off_1F5268578;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AlacartePaywallViewModelFactory(uint64_t a1)
{
  result = qword_1EE091340;
  if (!qword_1EE091340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D774EB44(uint64_t a1)
{
  result = sub_1D78B3294();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D774EBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7740344(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  sub_1D78B3274();
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v3 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_learnMoreURL, v10, v11);
    v14 = (v3 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_webAuthButtonTitle);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_1D78B3134();
    v19 = v18;

    *v14 = v17;
    v14[1] = v19;
    *(v3 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_configurationManager) = a1;
    *(v3 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseController) = a2;
    *(v3 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseProvider) = a3;
    return v3;
  }

  return result;
}

void sub_1D774EE48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D773C9B8(255, a3, a4);
    v5 = sub_1D78B62A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D774EEA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D7740644(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - v6;
  v8 = [v2 userActivities];
  sub_1D773F004(0, &unk_1EE08FE90, 0x1E696B090);
  sub_1D774F288(&unk_1EE08FE80, &unk_1EE08FE90, 0x1E696B090);
  v9 = sub_1D78B5F64();

  v10 = sub_1D774F2D8(v9);

  if (!v10)
  {
LABEL_8:
    v18 = [v2 URLContexts];
    sub_1D773F004(0, &qword_1EE08FE38, 0x1E69DCD08);
    sub_1D774F288(&unk_1EE08FE28, &qword_1EE08FE38, 0x1E69DCD08);
    v19 = sub_1D78B5F64();

    v20 = sub_1D774F42C(v19);

    if (v20)
    {
      v21 = [v20 URL];
      sub_1D78B3254();

      v22 = sub_1D78B3294();
      v23 = *(*(v22 - 8) + 56);
      v24 = v22;
      v25 = a1;
      v26 = 0;
    }

    else
    {
      v30 = sub_1D78B3294();
      v23 = *(*(v30 - 8) + 56);
      v24 = v30;
      v25 = a1;
      v26 = 1;
    }

    return v23(v25, v26, 1, v24);
  }

  v11 = [v10 activityType];
  v12 = sub_1D78B5C74();
  v14 = v13;

  if (v12 == sub_1D78B5C74() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1D78B6724();

    if ((v17 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v27 = [v10 webpageURL];
  if (v27)
  {
    v28 = v27;
    sub_1D78B3254();

    v29 = sub_1D78B3294();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  }

  else
  {

    v32 = sub_1D78B3294();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  }

  return sub_1D77AE4DC(v7, a1);
}

uint64_t sub_1D774F288(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D773F004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D774F2EC(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1D78B6354();
    v9 = v8;
    v10 = sub_1D78B63C4();
    v12 = v11;
    v13 = MEMORY[0x1DA703610](v7, v9, v10, v11);
    sub_1D774F420(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1D774F420(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_1D78B6334();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D77A2850(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_1D774F420(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_1D774F420(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_1D774F460(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D10, &protocol descriptor for MetricsProviderType, 1);
  result = sub_1D78B39F4();
  if (v9[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for DynamicViewControllerDelegate(0);
    result = sub_1D78B39E4();
    if (result)
    {
      v3 = result;
      v4 = type metadata accessor for DynamicViewControllerFactory();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_clientIdentifier];
      strcpy(&v5[OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_clientIdentifier], "com.apple.news");
      v6[15] = -18;
      sub_1D774584C(v9, &v5[OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder]);
      *&v5[OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_dynamicViewControllerDelegate] = v3;
      v8.receiver = v5;
      v8.super_class = v4;
      v7 = objc_msgSendSuper2(&v8, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D774F59C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090260, MEMORY[0x1E69B6388], 1);
  result = sub_1D78B39F4();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  if (v8)
  {
    v6 = type metadata accessor for LandingPageDecider();
    v7 = swift_allocObject();
    result = sub_1D7741E34(&v10, (v7 + 2));
    v7[7] = v5;
    v7[8] = v8;
    v7[9] = v9;
    a2[3] = v6;
    a2[4] = &protocol witness table for LandingPageDecider;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D774F724()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_1D78A0040;
  v3[5] = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1D775FB6C;
  v3[3] = &block_descriptor_36;
  v2 = _Block_copy(v3);

  [v0 scheduleLowPriorityBlock_];
  _Block_release(v2);
}

uint64_t sub_1D774F80C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D774F844()
{
  v1 = v0;
  v2 = sub_1D78B33C4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6969530];
  sub_1D7744248(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = sub_1D78B3394();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - v18;
  v20 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSessionEndTime;
  swift_beginAccess();
  sub_1D774FD40(v1 + v20, v10, &unk_1EE095640, v6);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D774FDC0(v10, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
LABEL_8:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v33 = qword_1EE09C268;
    v34 = sub_1D78B6084();
    sub_1D774FE1C(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D78BCAB0;
    v36 = MEMORY[0x1E69E6438];
    *(v35 + 56) = MEMORY[0x1E69E63B0];
    *(v35 + 64) = v36;
    *(v35 + 32) = 0x4014000000000000;
    sub_1D78B42C4("OfferManager: sceneWillEnterForeground: NOT removing all cached offers, last session ended less than %{public}f seconds ago", 123, 2, &dword_1D7739000, v33, v34, v35);
  }

  (*(v12 + 32))(v19, v10, v11);
  sub_1D78B3384();
  sub_1D78B3304();
  v22 = v21;
  v23 = *(v12 + 8);
  v23(v16, v11);
  if (v22 <= 5.0)
  {
    v23(v19, v11);
    goto LABEL_8;
  }

  sub_1D78B33B4();
  v24 = sub_1D78B33A4();
  v26 = v25;
  (*(v38 + 8))(v5, v39);
  v27 = (v1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_deduperToken);
  *v27 = v24;
  v27[1] = v26;

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v28 = qword_1EE09C268;
  v29 = sub_1D78B6084();
  sub_1D774FE1C(0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D78BCAB0;
  v31 = MEMORY[0x1E69E6438];
  *(v30 + 56) = MEMORY[0x1E69E63B0];
  *(v30 + 64) = v31;
  *(v30 + 32) = 0x4014000000000000;
  sub_1D78B42C4("OfferManager: sceneWillEnterForeground: removing all cached offers, last session ended more than %{public}f seconds ago", 119, 2, &dword_1D7739000, v28, v29, v30);

  sub_1D78B3F94();

  sub_1D78B3F94();

  sub_1D78B3F94();

  return (v23)(v19, v11);
}

uint64_t sub_1D774FD40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7744248(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D774FDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D7744248(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D774FE1C(uint64_t a1)
{
  if (!qword_1EE08FA10)
  {
    sub_1D773C9B8(255, &qword_1EE08F9D0, MEMORY[0x1E69E7740]);
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FA10);
    }
  }
}

uint64_t sub_1D774FEC4()
{
  sub_1D77500F8();
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D774FF18()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954E0 = result;
  return result;
}

uint64_t sub_1D77500F8()
{
  if (qword_1EE0954D8 != -1)
  {
    swift_once();
  }

  sub_1D7747D68(&qword_1EE092690, type metadata accessor for AppLaunchOnboardingManager, &protocol conformance descriptor for AppLaunchOnboardingManager);
  sub_1D78B3574();
  if (v5 == 1)
  {
    if (qword_1EC9C8450 != -1)
    {
      swift_once();
    }

    v0 = qword_1EC9D9DF8;
    v1 = sub_1D78B60A4();
    sub_1D78B42C4("App Launch Onboarding was disabled via debug settings. Onboarding will not be presented.", 88, 2, &dword_1D7739000, v0, v1, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (sub_1D78B4AA4())
    {
      return 1;
    }

    sub_1D774819C();
    v3 = sub_1D78B6284();
    v4 = sub_1D78B60A4();
    sub_1D78B42C4("Skipping onboarding because we have no steps to show", 52, 2, &dword_1D7739000, v3, v4, MEMORY[0x1E69E7CC0]);
  }

  return 0;
}

uint64_t sub_1D77502AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EC9D9DF8 = result;
  return result;
}

uint64_t AppLaunchPaidBundleViaOfferUpsellManager.init(configurationManager:router:paidBundleViaOfferHandler:paidBundleViaOfferFeatureAvailability:appLaunchUpsellTracker:offlineProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1D7750574(0);
  swift_allocObject();
  *(v6 + 104) = sub_1D78B3974();
  *(v6 + 16) = a1;
  sub_1D774584C(a2, v6 + 64);
  sub_1D774584C(a3, v6 + 152);
  sub_1D774584C(a4, v6 + 112);
  sub_1D775110C(a5, v6 + 24, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  sub_1D775110C(a6, v6 + 192, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  v14 = objc_opt_self();
  swift_unknownObjectRetain();
  v15 = [v14 defaultCenter];
  v16 = qword_1EE08FDF8;

  if (v16 != -1)
  {
    swift_once();
  }

  [v15 addObserver:v7 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();

  sub_1D7751464(a6, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  sub_1D7751464(a5, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

void sub_1D7750574(uint64_t a1)
{
  if (!qword_1EE08F270)
  {
    sub_1D7750620();
    v1 = sub_1D78B3984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08F270);
    }
  }
}

void sub_1D77505D0()
{
  if (!qword_1EE095240)
  {
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE095240);
    }
  }
}

unint64_t sub_1D7750620()
{
  result = qword_1EE08E7E8[0];
  if (!qword_1EE08E7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08E7E8);
  }

  return result;
}

uint64_t AppLaunchUpsellManager.requiresPresentation()()
{
  sub_1D78B3944();
  if (sub_1D78B3934())
  {
    if (qword_1EE0954C0 != -1)
    {
      swift_once();
    }

    sub_1D7747CD0(&qword_1EE0938D8, v1, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3574();
    if (LOBYTE(v24[0]) == 1)
    {
      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v2 = sub_1D78B4304();
      __swift_project_value_buffer(v2, qword_1EE09C288);
      v3 = sub_1D78B42E4();
      v4 = sub_1D78B60A4();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_39;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "App Launch Upsell was disabled via debug settings. Upsell will not be presented.";
LABEL_38:
      _os_log_impl(&dword_1D7739000, v3, v4, v6, v5, 2u);
      MEMORY[0x1DA7043F0](v5, -1, -1);
LABEL_39:

      LOBYTE(v24[0]) = 0;
      sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1D78B4104();
    }
  }

  sub_1D7746708(v0 + 272, &v22, sub_1D7746770);
  if (!v23)
  {
    sub_1D77473C0(&v22, sub_1D7746770);
    if ((sub_1D78B3934() & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_18:
    if (qword_1EE095500 != -1)
    {
      swift_once();
    }

    sub_1D7747CD0(&qword_1EE0938D8, v13, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3574();
    if (LOBYTE(v24[0]) == 1)
    {
      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D78B4304();
      __swift_project_value_buffer(v14, qword_1EE09C288);
      v15 = sub_1D78B42E4();
      v16 = sub_1D78B60A4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D7739000, v15, v16, "App Launch Upsell was force-enabled via debug settings. Proceeding with presentation.", v17, 2u);
        MEMORY[0x1DA7043F0](v17, -1, -1);
      }
    }

    else
    {
LABEL_42:
      if (NFStoreDemoMode())
      {
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v18 = sub_1D78B4304();
        __swift_project_value_buffer(v18, qword_1EE09C288);
        v3 = sub_1D78B42E4();
        v4 = sub_1D78B60A4();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_39;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "App Launch Upsell Skipped because Store Demo Mode.";
        goto LABEL_38;
      }

      v19 = [objc_opt_self() sharedAccount];
      v20 = [v19 isContentStoreFrontSupported];

      if ((v20 & 1) == 0)
      {
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v21 = sub_1D78B4304();
        __swift_project_value_buffer(v21, qword_1EE09C288);
        v3 = sub_1D78B42E4();
        v4 = sub_1D78B60A4();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_39;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Storefront not supported. App launch upsell will not be presented.";
        goto LABEL_38;
      }
    }

    return sub_1D775117C();
  }

  sub_1D7741E34(&v22, v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if ((sub_1D78B54E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_18;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D78B4304();
  __swift_project_value_buffer(v7, qword_1EE09C288);
  v8 = sub_1D78B42E4();
  v9 = sub_1D78B60A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D7739000, v8, v9, "App Launch Upsell will not be presented, device is offline.", v10, 2u);
    MEMORY[0x1DA7043F0](v10, -1, -1);
  }

  LOBYTE(v22) = 0;
  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v11 = sub_1D78B4104();
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v11;
}

unint64_t sub_1D7750CF8()
{
  result = qword_1EE08E7E0;
  if (!qword_1EE08E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E7E0);
  }

  return result;
}

uint64_t sub_1D7750D4C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954C8 = result;
  return result;
}

uint64_t sub_1D7750F2C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095508 = result;
  return result;
}

uint64_t sub_1D775110C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D774EE48(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D775117C()
{
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D78B4304();
  __swift_project_value_buffer(v0, qword_1EE09C288);
  v1 = sub_1D78B42E4();
  v2 = sub_1D78B60A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D7739000, v1, v2, "Beginning app launch upsell presentation requirement checks...", v3, 2u);
    MEMORY[0x1DA7043F0](v3, -1, -1);
  }

  sub_1D7747C80(0, &qword_1EE08FFF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
  sub_1D78B41F4();

  v4 = sub_1D78B4014();
  sub_1D78B40A4();

  v5 = sub_1D78B4014();
  v6 = sub_1D78B40E4();

  return v6;
}

uint64_t sub_1D7751370()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EE09C288);
  __swift_project_value_buffer(v0, qword_1EE09C288);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

uint64_t sub_1D7751464(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D774EE48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D77514E4()
{
  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  sub_1D7747C80(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCCA0;
  *(v0 + 32) = sub_1D7751658();
  *(v0 + 40) = sub_1D7751F48();
  v1 = sub_1D78B4074();

  return v1;
}

uint64_t sub_1D77515F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for BundleSubscriptionDetectionManager();
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    result = sub_1D7752A5C();
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7751658()
{
  v1 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3294();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v41 - v12;
  sub_1D7746708(v0 + 432, &v45, sub_1D7746910);
  if (v46)
  {
    sub_1D7741E34(&v45, v47);
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    if (sub_1D78B59C4())
    {
      *(v0 + 472) = 0;
      swift_unknownObjectRelease();
      v14 = *(v0 + 152);
      ObjectType = swift_getObjectType();
      (*(v14 + 16))(ObjectType, v14);
      v16 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
      v17 = (*(*(v16 - 8) + 48))(v4, 1, v16);
      v18 = type metadata accessor for AppLaunchMethod;
      if (v17 == 1 || (EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), v18 = type metadata accessor for AppLaunchMethod.IndirectMethod, EnumCaseMultiPayload))
      {
        sub_1D77473C0(v4, v18);
        LOBYTE(v45) = 1;
        sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v20 = sub_1D78B4104();
        __swift_destroy_boxed_opaque_existential_1(v47);
        return v20;
      }

      else
      {
        (*(v6 + 32))(v13, v4, v5);
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v26 = sub_1D78B4304();
        __swift_project_value_buffer(v26, qword_1EE09C288);
        (*(v6 + 16))(v10, v13, v5);
        v27 = sub_1D78B42E4();
        v28 = sub_1D78B60A4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = v29;
          v44 = swift_slowAlloc();
          *&v45 = v44;
          *v29 = 136315138;
          v42 = sub_1D78B31E4();
          v31 = v30;
          v32 = *(v6 + 8);
          v32(v10, v5);
          v33 = v32;
          v34 = sub_1D77AD82C(v42, v31, &v45);

          v35 = v43;
          *(v43 + 1) = v34;
          v36 = v35;
          _os_log_impl(&dword_1D7739000, v27, v28, "Detected app launch from widget using URL: %s.", v35, 0xCu);
          v37 = v44;
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x1DA7043F0](v37, -1, -1);
          MEMORY[0x1DA7043F0](v36, -1, -1);

          v38 = v33;
        }

        else
        {

          v38 = *(v6 + 8);
          v38(v10, v5);
        }

        sub_1D77A85F4(v13);
        v39 = sub_1D78B4014();
        v40 = sub_1D78B4084();

        v38(v13, v5);
        __swift_destroy_boxed_opaque_existential_1(v47);
        return v40;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_1D77473C0(&v45, sub_1D7746910);
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D78B4304();
  __swift_project_value_buffer(v22, qword_1EE09C288);
  v23 = sub_1D78B42E4();
  v24 = sub_1D78B60A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D7739000, v23, v24, "Widget upsell features not enabled.  Paywalled article presentation supression checks will be skipped.", v25, 2u);
    MEMORY[0x1DA7043F0](v25, -1, -1);
  }

  LOBYTE(v47[0]) = 1;
  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

void *sub_1D7751C2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &unk_1EE08FEF0, 0x1E69B5678);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095930, &protocol descriptor for PostPurchaseOnboardingManagerType, 1);
  result = sub_1D78B39F4();
  if (!v18[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (v17[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE090348, MEMORY[0x1E69D8508], 0);
    sub_1D78B39F4();
    v6 = v15;
    v7 = v16;
    v8 = type metadata accessor for BundleSubscriptionDetectionManager();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_completionEventManager;
    sub_1D7752534(0);
    swift_allocObject();
    *&v9[v10] = sub_1D78B3974();
    *&v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager] = v3;
    *&v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_bundleSubscriptionManager] = v4;
    *&v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_userInfo] = v5;
    sub_1D774584C(v18, &v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager]);
    sub_1D774584C(v17, &v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router]);
    v11 = &v9[OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_presentationOperationManager];
    *v11 = v6;
    *(v11 + 1) = v7;
    v14.receiver = v9;
    v14.super_class = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = v5;
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v14, sel_init);
    [v4 addObserver_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7751F48()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77441E4(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v44 - v20;
  v22 = *(v0 + 152);
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  v24 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
  {
    v25 = type metadata accessor for AppLaunchMethod;
LABEL_7:
    sub_1D77473C0(v13, v25);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for AppLaunchMethod.IndirectMethod;
    goto LABEL_7;
  }

  sub_1D77AE4DC(v13, v21);
  sub_1D776F538(v21, v18);
  if ((*(v2 + 48))(v18, 1, v1) == 1)
  {
    v26 = MEMORY[0x1E6968FB0];
    v27 = MEMORY[0x1E69E6720];
    sub_1D77AE570(v21, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D77441E4);
    sub_1D77AE570(v18, &unk_1EE096460, v26, v27, sub_1D77441E4);
LABEL_8:
    v50 = 1;
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  (*(v2 + 32))(v9, v18, v1);
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v29 = sub_1D78B4304();
  __swift_project_value_buffer(v29, qword_1EE09C288);
  (*(v2 + 16))(v6, v9, v1);
  v30 = sub_1D78B42E4();
  v31 = sub_1D78B60A4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = v32;
    v47 = swift_slowAlloc();
    v48 = v47;
    *v32 = 136315138;
    v45 = sub_1D78B31E4();
    v34 = v33;
    v35 = *(v2 + 8);
    v35(v6, v1);
    v36 = v35;
    v37 = sub_1D77AD82C(v45, v34, &v48);

    v38 = v46;
    *(v46 + 1) = v37;
    v39 = v38;
    _os_log_impl(&dword_1D7739000, v30, v31, "Detected app launch from URL: %s.", v38, 0xCu);
    v40 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1DA7043F0](v40, -1, -1);
    MEMORY[0x1DA7043F0](v39, -1, -1);

    v41 = v36;
  }

  else
  {

    v41 = *(v2 + 8);
    v41(v6, v1);
  }

  v42 = sub_1D78B3214();
  v49 = [v42 nss_isPuzzleURL] ^ 1;
  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v43 = sub_1D78B4104();

  v41(v9, v1);
  sub_1D77AE570(v21, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D77441E4);
  return v43;
}

void sub_1D7752534(uint64_t a1)
{
  if (!qword_1EE0953E0)
  {
    sub_1D77525FC();
    v1 = sub_1D78B3984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0953E0);
    }
  }
}

uint64_t sub_1D7752590@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
  swift_beginAccess();
  return sub_1D7752650(v1 + v3, a1, type metadata accessor for AppLaunchMethod);
}

unint64_t sub_1D77525FC()
{
  result = qword_1EE094FE8;
  if (!qword_1EE094FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094FE8);
  }

  return result;
}

uint64_t sub_1D7752650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D77526B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 == 1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_7:
    v8 = sub_1D78B4304();
    __swift_project_value_buffer(v8, qword_1EE09C288);
    v9 = sub_1D78B42E4();
    v10 = sub_1D78B60A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D7739000, v9, v10, "Upsell currently isn't allowed to be presented over a paid article.  Suppressing presentation.", v11, 2u);
      MEMORY[0x1DA7043F0](v11, -1, -1);
    }

    goto LABEL_14;
  }

  if (*(v3 + 32) != 1)
  {
    if (qword_1EE0904F8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (*(v3 + 33) == 1)
  {
    sub_1D773D21C(0, &qword_1EE08FDD0, &protocolRef_FCCoreConfiguration);
    sub_1D78B41F4();

    v5 = sub_1D78B4014();
    v6 = sub_1D78B40A4();

    return v6;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D78B4304();
  __swift_project_value_buffer(v12, qword_1EE09C288);
  v9 = sub_1D78B42E4();
  v13 = sub_1D78B60A4();
  if (os_log_type_enabled(v9, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D7739000, v9, v13, "Upsell currently isn't allowed to be presented from the linked URL.  Suppressing presentation.", v14, 2u);
    MEMORY[0x1DA7043F0](v14, -1, -1);
  }

LABEL_14:

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

unint64_t sub_1D7752A08()
{
  result = qword_1EE094FE0;
  if (!qword_1EE094FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094FE0);
  }

  return result;
}

unint64_t sub_1D7752A5C()
{
  result = qword_1EE094FC8;
  if (!qword_1EE094FC8)
  {
    type metadata accessor for BundleSubscriptionDetectionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094FC8);
  }

  return result;
}

uint64_t sub_1D7752AE8(uint64_t a1)
{
  sub_1D7752BE4(0);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D7752B44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7752B8C(uint64_t a1, uint64_t a2)
{
  result = sub_1D7752B44(&unk_1EE094FD0, a2, type metadata accessor for BundleSubscriptionDetectionManager, &unk_1D78BEE3C);
  *(a1 + 8) = result;
  return result;
}

void sub_1D7752BE4(uint64_t a1)
{
  if (!qword_1EE095210)
  {
    sub_1D7752C3C();
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095210);
    }
  }
}

unint64_t sub_1D7752C3C()
{
  result = qword_1EE08FDD0;
  if (!qword_1EE08FDD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FDD0);
  }

  return result;
}

void sub_1D7752CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1D7752FB0;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  v13[4] = sub_1D7752EE8;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D7752E68;
  v13[3] = &block_descriptor_38;
  v12 = _Block_copy(v13);

  [a5 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_1D7752DF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7752E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7752E68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1D7752EF4(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)())
{
  swift_unknownObjectRetain();
  v8 = a2;
  sub_1D7752C3C();
  sub_1D78B4054();
  if (v10)
  {
    a5();
  }

  else
  {
    a3();
  }

  sub_1D7753048(v9, v10);
}

uint64_t sub_1D7752FB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1D7753048(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1D7753054()
{
  result = qword_1EE08E650;
  if (!qword_1EE08E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E650);
  }

  return result;
}

uint64_t sub_1D7753208(id *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D78B3394();
  v112 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v104 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v111 = &v104 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v113 = &v104 - v20;
  v21 = *a1;
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D78B4304();
  v114 = __swift_project_value_buffer(v22, qword_1EE09C288);
  v23 = sub_1D78B42E4();
  v24 = sub_1D78B60A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v110 = v21;
    v26 = v25;
    *v25 = 0;
    _os_log_impl(&dword_1D7739000, v23, v24, "Fetched App Config continuing with app launch upsell logic", v25, 2u);
    v27 = v26;
    v4 = v3;
    v21 = v110;
    MEMORY[0x1DA7043F0](v27, -1, -1);
  }

  if ([v21 respondsToSelector_])
  {
    v28 = [v21 paidBundleConfig];
    v29 = [v28 appLaunchUpsellArticleID];
    if (!v29)
    {
      v50 = sub_1D78B42E4();
      v51 = sub_1D78B60A4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1D7739000, v50, v51, "Missing upsell article id. App launch upsell will not be presented.", v52, 2u);
        MEMORY[0x1DA7043F0](v52, -1, -1);
      }

      sub_1D7746708(a2 + 232, v115, sub_1D7746B4C);
      v53 = v116;
      if (v116)
      {
        v54 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        v118 = 4;
        (*(v54 + 8))(&v118, 0, 0, v53, v54);
        __swift_destroy_boxed_opaque_existential_1(v115);
      }

      else
      {
        sub_1D77473C0(v115, sub_1D7746B4C);
      }

      v115[0] = 0;
      sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v95 = sub_1D78B4104();

      return v95;
    }

    v30 = v29;
    v108 = sub_1D78B5C74();
    v32 = v31;

    v33 = a3[3];
    a3[3] = v28;
    v110 = v28;

    sub_1D78B3944();
    if (sub_1D78B3934())
    {
      if (qword_1EE095500 != -1)
      {
        swift_once();
      }

      sub_1D7747CD0(&qword_1EE0938D8, v34, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
      sub_1D78B3574();
      if (v115[0] == 1)
      {

        v35 = sub_1D78B42E4();
        v36 = sub_1D78B60A4();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v115 = v38;
          *v37 = 136315138;
          v39 = sub_1D77AD82C(v108, v32, v115);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_1D7739000, v35, v36, "Force presenting launch upsell using article ID [%s].", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1DA7043F0](v38, -1, -1);
          MEMORY[0x1DA7043F0](v37, -1, -1);
        }

        else
        {
        }

        v115[0] = 1;
LABEL_48:
        sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v95 = sub_1D78B4104();

        return v95;
      }
    }

    if ([v110 appLaunchUpsellBehaviorFlags])
    {
      sub_1D773F004(0, &unk_1EC9C9FD0, 0x1E69DC668);
      if (sub_1D78B6074())
      {
        v45 = sub_1D78B42E4();
        v46 = sub_1D78B60A4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          MEMORY[0x1DA7043F0](v47, -1, -1);
        }

        sub_1D7746708(a2 + 232, v115, sub_1D7746B4C);
        v48 = v116;
        if (v116)
        {
          v49 = v117;
          __swift_project_boxed_opaque_existential_1(v115, v116);
          v118 = 16;
          (*(v49 + 8))(&v118, v108, v32, v48, v49);

          __swift_destroy_boxed_opaque_existential_1(v115);
        }

        else
        {

          sub_1D77473C0(v115, sub_1D7746B4C);
        }

        v115[0] = 0;
        goto LABEL_48;
      }
    }

    v106 = v4;
    v107 = v32;
    v56 = [v110 appLaunchUpsellCampaignStartDate];
    v57 = v113;
    sub_1D78B3364();

    v58 = v111;
    sub_1D78B3374();
    LOBYTE(v56) = sub_1D78B3344();
    v59 = *(v112 + 8);
    v59(v58, v8);
    v111 = v59;
    v59(v57, v8);
    if ((v56 & 1) == 0)
    {
      v112 = a2;
      v80 = v110;
      v81 = sub_1D78B42E4();
      v82 = sub_1D78B60A4();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v115 = v84;
        *v83 = 136315138;
        v85 = [v80 appLaunchUpsellCampaignStartDate];
        v114 = v80;
        v86 = v113;
        sub_1D78B3364();

        sub_1D7747CD0(&qword_1EE095650, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v87 = sub_1D78B66E4();
        v89 = v88;
        v90 = v86;
        v80 = v114;
        (v111)(v90, v8);
        v91 = sub_1D77AD82C(v87, v89, v115);

        *(v83 + 4) = v91;
        _os_log_impl(&dword_1D7739000, v81, v82, "App launch upsell campaign will not be presented because it has not yet started, campaignStartDate=%s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x1DA7043F0](v84, -1, -1);
        MEMORY[0x1DA7043F0](v83, -1, -1);
      }

      v92 = v107;
      sub_1D7746708(v112 + 232, v115, sub_1D7746B4C);
      v93 = v116;
      if (v116)
      {
        v94 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        v118 = 14;
        (*(v94 + 8))(&v118, v108, v92, v93, v94);

        __swift_destroy_boxed_opaque_existential_1(v115);
      }

      else
      {

        sub_1D77473C0(v115, sub_1D7746B4C);
      }

      v115[0] = 0;
      sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v95 = sub_1D78B4104();

      return v95;
    }

    v60 = [v110 appLaunchUpsellCampaignEndDate];
    v61 = v107;
    if (v60)
    {
      v62 = v60;
      sub_1D78B3364();

      v63 = v113;
      sub_1D78B3374();
      LOBYTE(v62) = sub_1D78B3344();
      v64 = v63;
      v65 = v111;
      (v111)(v64, v8);
      if (v62)
      {
        v66 = *(v112 + 16);
        v67 = v109;
        v113 = v15;
        v66(v109, v15, v8);
        v68 = sub_1D78B42E4();
        v69 = sub_1D78B60A4();
        v70 = os_log_type_enabled(v68, v69);
        v105 = v8;
        if (v70)
        {
          v71 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v115 = v114;
          *v71 = 136315138;
          sub_1D7747CD0(&qword_1EE095650, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v72 = sub_1D78B66E4();
          v74 = v73;
          v75 = v8;
          v76 = v111;
          (v111)(v67, v75);
          v77 = sub_1D77AD82C(v72, v74, v115);
          v61 = v107;

          *(v71 + 4) = v77;
          _os_log_impl(&dword_1D7739000, v68, v69, "App launch upsell campaign will not be presented because it has ended, campaignEndDate=%s", v71, 0xCu);
          v78 = v114;
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x1DA7043F0](v78, -1, -1);
          MEMORY[0x1DA7043F0](v71, -1, -1);

          v79 = v76;
        }

        else
        {

          v99 = v67;
          v79 = v111;
          (v111)(v99, v8);
        }

        sub_1D7746708(a2 + 232, v115, sub_1D7746B4C);
        v100 = v116;
        v101 = v113;
        if (v116)
        {
          v102 = v117;
          __swift_project_boxed_opaque_existential_1(v115, v116);
          v118 = 15;
          (*(v102 + 8))(&v118, v108, v61, v100, v102);

          __swift_destroy_boxed_opaque_existential_1(v115);
        }

        else
        {

          sub_1D77473C0(v115, sub_1D7746B4C);
        }

        v115[0] = 0;
        sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v103 = sub_1D78B4104();

        v79(v101, v105);
        return v103;
      }

      v65(v15, v8);
    }

    sub_1D7747C80(0, &unk_1EE095298, &type metadata for AppLaunchUpsellDataRefreshResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D78B4174();
    sub_1D77AE308(0);
    swift_allocObject();
    sub_1D78B4174();
    sub_1D78B41D4();
    v96 = swift_allocObject();
    v96[2] = v108;
    v96[3] = v61;
    v96[4] = a3;

    v97 = sub_1D78B4014();
    v98 = sub_1D78B40A4();

    return v98;
  }

  v40 = sub_1D78B42E4();
  v41 = sub_1D78B60A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D7739000, v40, v41, "Missing Paid Bundle. App launch upsell will not be presented.", v42, 2u);
    MEMORY[0x1DA7043F0](v42, -1, -1);
  }

  sub_1D7746708(a2 + 232, v115, sub_1D7746B4C);
  v43 = v116;
  if (v116)
  {
    v44 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    v118 = 3;
    (*(v44 + 8))(&v118, 0, 0, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v115);
  }

  else
  {
    sub_1D77473C0(v115, sub_1D7746B4C);
  }

  v115[0] = 0;
  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D7754224()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

NewsSubscription::OfferType_optional __swiftcall OfferType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for WebOptinFlowManager.WebOptinFlowErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D77543F8()
{
  result = qword_1EE08EF18[0];
  if (!qword_1EE08EF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08EF18);
  }

  return result;
}

uint64_t _s16NewsSubscription22AppLaunchMethodCheckerC20sceneDidBecomeActive4with17sourceApplication0G2IDy10Foundation3URLVSg_SSSgSStF_0(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchMethod(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v37 - v8;
  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  sub_1D7740644(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v37 - v14;
  v16 = sub_1D78B3294();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D789A4E0(a1, v15, &unk_1EE096460, v10, v11, sub_1D7740644);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1D789A554(v15, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7740644);
  }

  v22 = *(v17 + 32);
  v22(v20, v15, v16);
  v23 = sub_1D78B5C74();
  sub_1D781A0E0(v23, v24);
  v26 = v25;

  if (v26)
  {

    v22(v9, v20, v16);
    v27 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
    v28 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
    v29 = v40;
    swift_beginAccess();
    sub_1D789A32C(v9, v29 + v28);
    return swift_endAccess();
  }

  else
  {
    v30 = OBJC_IVAR____TtC16NewsSubscription22AppLaunchMethodChecker_launchMethod;
    v31 = v40;
    swift_beginAccess();
    v39 = v30;
    sub_1D7752650(v31 + v30, v9, type metadata accessor for AppLaunchMethod);
    v32 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v37 = v33 + 56;
    v38 = v34;
    v34(v6, 1, 1, v32);
    LOBYTE(v31) = _s16NewsSubscription15AppLaunchMethodO2eeoiySbAC_ACtFZ_0(v9, v6);
    sub_1D789A164(v6, type metadata accessor for AppLaunchMethod);
    sub_1D789A164(v9, type metadata accessor for AppLaunchMethod);
    if (v31)
    {
      v22(v9, v20, v16);
      (*(v17 + 56))(v9, 0, 1, v16);
      swift_storeEnumTagMultiPayload();
      v38(v9, 0, 1, v32);
      v35 = v39;
      v36 = v40;
      swift_beginAccess();
      sub_1D789A32C(v9, v36 + v35);
      return swift_endAccess();
    }

    else
    {
      return (*(v17 + 8))(v20, v16);
    }
  }
}

NewsSubscription::OfferUpsellScenario_optional __swiftcall OfferUpsellScenario.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for PurchaseTraits.GroupAssociatedValues.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D77549B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D78B46D4();
  swift_allocObject();
  result = sub_1D78B46C4();
  v4 = MEMORY[0x1E69D78A8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7754A30()
{
  sub_1D78B4774();
  swift_allocObject();
  return sub_1D78B4764();
}

char *PremiumSealView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 labelColor];
  v11 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  *&v4[v11] = [v10 systemPinkColor];
  v4[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal] = 1;
  v12 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for PremiumSealView();
  v14 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView;
  v16 = *&v14[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
  v17 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  swift_beginAccess();
  v18 = *&v14[v17];
  v19 = v14;
  [v16 setTintColor_];
  v20 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView;
  v21 = *&v19[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
  v22 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  swift_beginAccess();
  [v21 setTintColor_];
  [v19 addSubview_];
  [v19 addSubview_];
  [*&v14[v15] setHidden_];
  [*&v19[v20] setHidden_];
  sub_1D7754DB8(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D78BCAB0;
  v24 = sub_1D78B5224();
  v25 = MEMORY[0x1E69DC130];
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_1D78B61D4();

  swift_unknownObjectRelease();

  return v19;
}

unint64_t sub_1D7754D1C()
{
  result = qword_1EE090310;
  if (!qword_1EE090310)
  {
    sub_1D7754E64();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE090310);
  }

  return result;
}

uint64_t sub_1D7754D64()
{
  sub_1D7754E10();
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7754DB8(uint64_t a1)
{
  if (!qword_1EE08FA68)
  {
    sub_1D7754D1C();
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FA68);
    }
  }
}

void sub_1D7754E10()
{
  if (!qword_1EE0951C0)
  {
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0951C0);
    }
  }
}

unint64_t sub_1D7754E64()
{
  result = qword_1EE090318;
  if (!qword_1EE090318)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE090318);
  }

  return result;
}

uint64_t sub_1D7754ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D78B3A64();
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = sub_1D7757030;
  v9[4] = v8;

  sub_1D78B3A54();

  return sub_1D7755060();
}

uint64_t sub_1D7754FA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7754FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7755060()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_purchaseManager);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
    swift_unknownObjectRetain();
    sub_1D78B3E64();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_bundlePurchasePrewarmer);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
    swift_unknownObjectRetain();
    sub_1D78B3E64();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_familySharingStatusManager);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
    swift_unknownObjectRetain();
    sub_1D78B3E64();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v8 = OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionFeatureAvailability;
  sub_1D77557A8(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionFeatureAvailability, &v23, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  if (v24)
  {
    sub_1D7741E34(&v23, v25);
    v9 = v26;
    v10 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    if ((*(v10 + 8))(v9, v10))
    {
      sub_1D774584C(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusChecker, &v23);
      sub_1D773CA14(0, &qword_1EE094CF0, &protocol descriptor for SubscriptionStatusCheckerType, 1);
      sub_1D773CA14(0, &unk_1EE095370, MEMORY[0x1E69D66C8], 0);
      if (swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
        sub_1D78B3E64();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v23);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1D7747C24(&v23, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  }

  sub_1D77557A8(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusCheckBlocker, v25, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType);
  if (v26)
  {
    sub_1D773CA14(0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType, 1);
    sub_1D773CA14(0, &unk_1EE095370, MEMORY[0x1E69D66C8], 0);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
      sub_1D78B3E64();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    sub_1D7747C24(v25, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType);
  }

  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_bundleArticleSoftPaywallMeter);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v11)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
    swift_unknownObjectRetain();
    sub_1D78B3E64();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_1D77557A8(v0 + v8, &v23, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  if (!v24)
  {
    return sub_1D7747C24(&v23, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  }

  sub_1D7741E34(&v23, v25);
  v12 = v26;
  v13 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  if ((*(v13 + 16))(v12, v13))
  {
    v14 = [objc_opt_self() mainBundle];
    v15 = [v14 bundleIdentifier];

    if (v15)
    {
      v16 = sub_1D78B5C74();
      v18 = v17;

      if (v16 == 0x6C7070612E6D6F63 && v18 == 0xEE007377656E2E65)
      {

        goto LABEL_37;
      }

      v20 = sub_1D78B6724();

      if (v20)
      {
LABEL_37:
        if (*(v1 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_inAppMessageCoordinator))
        {
          __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager), *(v1 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager + 24));
          sub_1D7830A74(&qword_1EE08EC88, type metadata accessor for InAppMessageCoordinator, &unk_1D78C365C);

          sub_1D78B3E64();

          __swift_destroy_boxed_opaque_existential_1(&v23);
        }

        else
        {
          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          v21 = qword_1EE09C268;
          v22 = sub_1D78B60A4();
          sub_1D78B42C4("Failed to find non-nil InAppMessageCoordinator when running on non-catalyst platform, this is unexpected", 104, 2, &dword_1D7739000, v21, v22, MEMORY[0x1E69E7CC0]);
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_1D775571C(void *a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  [*(v3 + *a3) setTintColor_];
}

uint64_t sub_1D77557A8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7746430(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void *sub_1D7755818@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C98, &protocol descriptor for ManageSubscriptionsURLProviderType, 1);
  sub_1D78B39F4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0959E0, &protocol descriptor for BundlePurchasePrewarmerType, 0);
  result = sub_1D78B39F4();
  if (!v70)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0957E0, MEMORY[0x1E69B6748], 0);
  result = sub_1D78B39F4();
  if (!v68)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  v49 = v66;
  if (!v66)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v47 = v67;
  v48 = v69;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  sub_1D78B39F4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE094CF0, &protocol descriptor for SubscriptionStatusCheckerType, 1);
  result = sub_1D78B39F4();
  if (!v62)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType, 1);
  sub_1D78B39F4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095940, &protocol descriptor for BundleArticleSoftPaywallMeterType, 0);
  result = sub_1D78B39F4();
  v5 = v56;
  if (!v56)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v43 = v68;
  v44 = v71;
  v45 = v70;
  v46 = a2;
  v42 = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096450, MEMORY[0x1E69D68B0], 1);
  result = sub_1D78B39F4();
  if (!v55)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for InAppMessageCoordinator();
  v6 = sub_1D78B39E4();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v41[1] = v41;
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for SubscriptionStatusChecker();
  v53[3] = v12;
  v53[4] = &off_1F5271508;
  v53[0] = v11;
  v13 = type metadata accessor for SubscriptionsStartupTask(0);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v53, v12);
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v51 = v12;
  v52 = &off_1F5271508;
  *&v50 = v19;
  v20 = OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_group;
  if (qword_1EE095380 != -1)
  {
    swift_once();
  }

  v21 = sub_1D78B3C44();
  v22 = __swift_project_value_buffer(v21, qword_1EE095388);
  (*(*(v21 - 8) + 16))(v14 + v20, v22, v21);
  v23 = OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_executionPhase;
  v24 = *MEMORY[0x1E69D6920];
  v25 = sub_1D78B3F04();
  (*(*(v25 - 8) + 104))(v14 + v23, v24, v25);
  v26 = v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_manageSubscriptionsURLProvider;
  v27 = v73;
  *v26 = v72;
  *(v26 + 16) = v27;
  *(v26 + 32) = v74;
  v28 = (v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_bundlePurchasePrewarmer);
  v29 = v44;
  *v28 = v45;
  v28[1] = v29;
  v30 = (v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_familySharingStatusManager);
  v32 = v48;
  v31 = v49;
  *v30 = v43;
  v30[1] = v32;
  v33 = (v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_purchaseManager);
  *v33 = v31;
  v33[1] = v47;
  v34 = v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionFeatureAvailability;
  *(v34 + 32) = v65;
  v35 = v64;
  *v34 = v63;
  *(v34 + 16) = v35;
  sub_1D7741E34(&v50, v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusChecker);
  v36 = v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusCheckBlocker;
  v37 = v59;
  *v36 = v58;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = (v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_bundleArticleSoftPaywallMeter);
  v39 = v42;
  *v38 = v5;
  v38[1] = v39;
  sub_1D7741E34(&v54, v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager);
  *(v14 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_inAppMessageCoordinator) = v6;
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v40 = v46;
  v46[3] = v13;
  result = sub_1D77445B0(&qword_1EE092A88, 255, type metadata accessor for SubscriptionsStartupTask, &unk_1D78C58C0);
  v40[4] = result;
  *v40 = v14;
  return result;
}

uint64_t type metadata accessor for SubscriptionsStartupTask(uint64_t a1)
{
  result = qword_1EE092A70;
  if (!qword_1EE092A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D7755FEC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PremiumSealView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
  [v0 bounds];
  [v1 setBounds_];
  [v0 bounds];
  sub_1D78B6184();
  [v1 setCenter_];
  v2 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
  [v0 bounds];
  [v2 setBounds_];
  [v0 bounds];
  sub_1D78B6184();
  return [v2 setCenter_];
}

uint64_t sub_1D77560D4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1D7756170()
{
  sub_1D77561C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77561C8()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_group;
  v2 = sub_1D78B3C44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_executionPhase;
  v4 = sub_1D78B3F04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1D7747C24(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_manageSubscriptionsURLProvider, &qword_1EE090C90, &qword_1EE090C98, &protocol descriptor for ManageSubscriptionsURLProviderType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D7747C24(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionFeatureAvailability, &unk_1EE094CD0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusChecker));
  sub_1D7747C24(v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_subscriptionStatusCheckBlocker, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_sceneStateManager));

  return v0;
}

uint64_t sub_1D7756350(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1D77557A8(a1 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_manageSubscriptionsURLProvider, v10, &qword_1EE090C90, &qword_1EE090C98, &protocol descriptor for ManageSubscriptionsURLProviderType);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1D7747C24(v10, &qword_1EE090C90, &qword_1EE090C98, &protocol descriptor for ManageSubscriptionsURLProviderType);
  }

  v6 = *(a1 + OBJC_IVAR____TtC16NewsSubscription24SubscriptionsStartupTask_bundlePurchasePrewarmer + 8);
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(ObjectType, v6);

  swift_getObjectType();
  v8 = sub_1D78B5AE4();
  return a2(v8);
}

uint64_t sub_1D7756490()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_1D7756B84(&v14);
    goto LABEL_9;
  }

  sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v11;
  v3 = [v11 integerValue];
  if (v3 == -1)
  {

    goto LABEL_25;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v5 = v11;
      v6 = [v5 integerValue];

      if ((v6 ^ v4))
      {
        goto LABEL_25;
      }

LABEL_19:
      v7 = sub_1D775677C(v0);

      sub_1D78B4034();

      if (v14)
      {
        if (!v7)
        {
          goto LABEL_26;
        }
      }

      *&v14 = 0x6D726177657270;
      *(&v14 + 1) = 0xE700000000000000;
      MEMORY[0x1EEE9AC00](v8, v9);
      return sub_1D78B3A84();
    }
  }

  else
  {
    sub_1D7756B84(&v14);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  *&v14 = 0;
LABEL_26:
  sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

BOOL sub_1D775677C(uint64_t a1)
{
  v28[1] = swift_getObjectType();
  v1 = sub_1D78B3394();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v28 - v8;
  sub_1D7756B20(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v28 - v16;
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = sub_1D78B5C44();
  v20 = [v18 objectForKey_];

  if (v20)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    v21 = swift_dynamicCast();
    (*(v2 + 56))(v17, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_1D7756B84(v31);
    (*(v2 + 56))(v17, 1, 1, v1);
  }

  sub_1D7756DE4(v17, v14);
  if ((*(v2 + 48))(v14, 1, v1) == 1)
  {
    sub_1D7756E78(v14);
    v22 = 1;
  }

  else
  {
    (*(v2 + 32))(v9, v14, v1);
    sub_1D78B3384();
    sub_1D78B3304();
    v24 = v23;
    v25 = *(v2 + 8);
    v25(v6, v1);
    if (qword_1EE095580 != -1)
    {
      swift_once();
    }

    sub_1D775C0D8();
    sub_1D78B3574();
    v25(v9, v1);
    v26 = *&v31[0];
    if (*&v31[0] <= 0)
    {
      v26 = 3600;
    }

    v22 = v24 > v26;
  }

  sub_1D7756E78(v17);
  return v22;
}

void sub_1D7756B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7756B84(uint64_t a1)
{
  sub_1D7756C08(0, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7756C08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7756C58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7756CA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7756CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}