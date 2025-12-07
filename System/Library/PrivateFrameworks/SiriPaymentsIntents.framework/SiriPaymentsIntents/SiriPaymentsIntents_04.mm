uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(uint64_t a1)
{
  v5 = *v2;
  v5[18] = *v2;
  v5[53] = a1;
  v5[54] = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {
    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 144) = *v2;
  *(v5 + 472) = a1;
  *(v5 + 480) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 144) = *v2;
  *(v5 + 528) = a1;
  *(v5 + 536) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

unint64_t lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a1;
  *(v3 + 80) = v3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 136) = 0;
  *(v3 + 152) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 168) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 184) = 0;
  *(v3 + 720) = 0;
  *(v3 + 200) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 296) = v4;
  *(v3 + 304) = *(v4 - 8);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)()
{
  v67 = v0[29];
  v0[10] = v0;
  type metadata accessor for SFCardSection();
  v0[14] = Array.init()();
  v68 = [v67 organizationName];
  if (v68)
  {
    v61 = [v68 spokenPhrase];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v1;
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v61);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  *(v66 + 360) = v65;
  *(v66 + 352) = v64;
  if (v65)
  {
    *(v66 + 64) = v64;
    *(v66 + 72) = v65;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v60 = *(v66 + 288);
      v59 = *(v66 + 240);
      type metadata accessor for SFRowCardSection();
      v2 = SAUIAppPunchOut.__allocating_init()();
      *(v66 + 368) = v2;
      *(v66 + 216) = v2;
      *(v66 + 376) = *v59;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("organizationName", 0x10uLL, 1);
      String.toSpeakableString.getter();

      v3 = type metadata accessor for SpeakableString();
      (*(*(v3 - 8) + 56))(v60, 0, 1);
      v4 = swift_task_alloc();
      *(v66 + 384) = v4;
      *v4 = *(v66 + 80);
      v4[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v66 + 344);
      v6 = *(v66 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v58 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v66 + 232) accountType]);
  *(v66 + 723) = v58;
  if (v58 != 9)
  {
    *(v66 + 720) = v58;
    *(v66 + 721) = v58;
    *(v66 + 722) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v57 = *(v66 + 280);
      v56 = *(v66 + 240);
      type metadata accessor for SFRowCardSection();
      v8 = SAUIAppPunchOut.__allocating_init()();
      *(v66 + 400) = v8;
      *(v66 + 200) = v8;
      *(v66 + 408) = *v56;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      String.toSpeakableString.getter();

      v9 = type metadata accessor for SpeakableString();
      *(v66 + 416) = v9;
      v10 = *(v9 - 8);
      v11 = *(v10 + 56);
      *(v66 + 424) = v11;
      *(v66 + 432) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v11(v57, 0, 1);
      v12 = swift_task_alloc();
      *(v66 + 440) = v12;
      *v12 = *(v66 + 80);
      v12[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v66 + 336);
      v6 = *(v66 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v55 = [*(v66 + 232) nickname];
  if (v55)
  {
    v50 = [v55 spokenPhrase];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v13;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v50);
    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  *(v66 + 488) = v54;
  *(v66 + 480) = v53;
  if (v54)
  {
    *(v66 + 32) = v53;
    *(v66 + 40) = v54;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v49 = *(v66 + 256);
      v48 = *(v66 + 240);
      type metadata accessor for SFRowCardSection();
      v14 = SAUIAppPunchOut.__allocating_init()();
      *(v66 + 496) = v14;
      *(v66 + 184) = v14;
      *(v66 + 504) = *v48;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v15 = type metadata accessor for SpeakableString();
      (*(*(v15 - 8) + 56))(v49, 0, 1);
      v16 = swift_task_alloc();
      *(v66 + 512) = v16;
      *v16 = *(v66 + 80);
      v16[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v66 + 320);
      v6 = *(v66 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v47 = [*(v66 + 232) accountNumber];
  if (v47)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v17;
    MEMORY[0x277D82BD8](v47);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  *(v66 + 536) = v46;
  *(v66 + 528) = v45;
  if (v46)
  {
    *(v66 + 16) = v45;
    *(v66 + 24) = v46;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v42 = *(v66 + 248);
      v41 = *(v66 + 240);
      type metadata accessor for SFRowCardSection();
      v18 = SAUIAppPunchOut.__allocating_init()();
      *(v66 + 544) = v18;
      *(v66 + 168) = v18;
      *(v66 + 552) = *v41;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v19 = type metadata accessor for SpeakableString();
      (*(*(v19 - 8) + 56))(v42, 0, 1);
      v20 = swift_task_alloc();
      *(v66 + 560) = v20;
      *v20 = *(v66 + 80);
      v20[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v66 + 312);
      v6 = *(v66 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v40 = [*(v66 + 232) balance];
  if (v40)
  {
    v38 = [v40 amount];
    MEMORY[0x277D82BD8](v40);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  *(v66 + 120) = v39;
  if (*(v66 + 120))
  {
    outlined destroy of SFRichText?((v66 + 120));
    v35 = *(v66 + 232);
    type metadata accessor for SFRowCardSection();
    v21 = SAUIAppPunchOut.__allocating_init()();
    *(v66 + 576) = v21;
    *(v66 + 152) = v21;
    v37 = [v35 balance];
    *(v66 + 584) = v37;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v22 = swift_task_alloc();
    v23 = v37;
    *(v66 + 592) = v22;
    *v22 = *(v66 + 80);
    v22[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v24 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v23, v24);
  }

  outlined destroy of SFRichText?((v66 + 120));
  v25 = [*(v66 + 232) secondaryBalance];
  v34 = v25;
  if (v25)
  {
    v32 = [v25 amount];
    MEMORY[0x277D82BD8](v34);
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  *(v66 + 128) = v33;
  if (*(v66 + 128))
  {
    outlined destroy of SFRichText?((v66 + 128));
    v30 = *(v66 + 232);
    type metadata accessor for SFRowCardSection();
    v26 = SAUIAppPunchOut.__allocating_init()();
    *(v66 + 648) = v26;
    *(v66 + 136) = v26;
    v31 = [v30 secondaryBalance];
    *(v66 + 656) = v31;
    v27 = swift_task_alloc();
    v23 = v31;
    *(v66 + 664) = v27;
    *v27 = *(v66 + 80);
    v27[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v24 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v23, v24);
  }

  outlined destroy of SFRichText?((v66 + 128));
  v29 = *(v66 + 112);

  outlined destroy of [SFCardSection]((v66 + 112));

  v28 = *(*(v66 + 80) + 8);

  return v28(v29);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[49] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[36]);

    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v64 = *(v0 + 368);
  v65 = *(v0 + 360);
  v59 = *(v0 + 352);
  v62 = *(v0 + 344);
  v61 = *(v0 + 304);
  v63 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v58 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v64 setLeadingText_];
  MEMORY[0x277D82BD8](v58);

  v60 = @nonobjc SFRichText.__allocating_init(string:)(v59, v65);
  [v64 setTrailingText_];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BE0](v64);
  [v64 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BE0](v64);
  *(v0 + 224) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v61 + 8))(v62, v63);
  MEMORY[0x277D82BD8](v64);

  v3 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v0 + 232) accountType]);
  *(v0 + 723) = v3;
  if (v3 != 9)
  {
    *(v57 + 720) = v3;
    *(v57 + 721) = v3;
    *(v57 + 722) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v56 = *(v57 + 280);
      v55 = *(v57 + 240);
      type metadata accessor for SFRowCardSection();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v57 + 400) = v4;
      *(v57 + 200) = v4;
      *(v57 + 408) = *v55;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      *(v57 + 416) = v5;
      v6 = *(v5 - 8);
      v7 = *(v6 + 56);
      *(v57 + 424) = v7;
      *(v57 + 432) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v7(v56, 0, 1);
      v8 = swift_task_alloc();
      *(v57 + 440) = v8;
      *v8 = *(v57 + 80);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v57 + 336);
      v10 = *(v57 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v54 = [*(v57 + 232) nickname];
  if (v54)
  {
    v49 = [v54 spokenPhrase];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v12;
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v49);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  *(v57 + 488) = v53;
  *(v57 + 480) = v52;
  if (v53)
  {
    *(v57 + 32) = v52;
    *(v57 + 40) = v53;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v48 = *(v57 + 256);
      v47 = *(v57 + 240);
      type metadata accessor for SFRowCardSection();
      v13 = SAUIAppPunchOut.__allocating_init()();
      *(v57 + 496) = v13;
      *(v57 + 184) = v13;
      *(v57 + 504) = *v47;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v14 = type metadata accessor for SpeakableString();
      (*(*(v14 - 8) + 56))(v48, 0, 1);
      v15 = swift_task_alloc();
      *(v57 + 512) = v15;
      *v15 = *(v57 + 80);
      v15[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v57 + 320);
      v10 = *(v57 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v46 = [*(v57 + 232) accountNumber];
  if (v46)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v16;
    MEMORY[0x277D82BD8](v46);
    v44 = v42;
    v45 = v43;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  *(v57 + 536) = v45;
  *(v57 + 528) = v44;
  if (v45)
  {
    *(v57 + 16) = v44;
    *(v57 + 24) = v45;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v41 = *(v57 + 248);
      v40 = *(v57 + 240);
      type metadata accessor for SFRowCardSection();
      v17 = SAUIAppPunchOut.__allocating_init()();
      *(v57 + 544) = v17;
      *(v57 + 168) = v17;
      *(v57 + 552) = *v40;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v18 = type metadata accessor for SpeakableString();
      (*(*(v18 - 8) + 56))(v41, 0, 1);
      v19 = swift_task_alloc();
      *(v57 + 560) = v19;
      *v19 = *(v57 + 80);
      v19[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v57 + 312);
      v10 = *(v57 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v39 = [*(v57 + 232) balance];
  if (v39)
  {
    v37 = [v39 amount];
    MEMORY[0x277D82BD8](v39);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  *(v57 + 120) = v38;
  if (*(v57 + 120))
  {
    outlined destroy of SFRichText?((v57 + 120));
    v34 = *(v57 + 232);
    type metadata accessor for SFRowCardSection();
    v20 = SAUIAppPunchOut.__allocating_init()();
    *(v57 + 576) = v20;
    *(v57 + 152) = v20;
    v36 = [v34 balance];
    *(v57 + 584) = v36;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v21 = swift_task_alloc();
    v22 = v36;
    *(v57 + 592) = v21;
    *v21 = *(v57 + 80);
    v21[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v23 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v22, v23);
  }

  outlined destroy of SFRichText?((v57 + 120));
  v24 = [*(v57 + 232) secondaryBalance];
  v33 = v24;
  if (v24)
  {
    v31 = [v24 amount];
    MEMORY[0x277D82BD8](v33);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  *(v57 + 128) = v32;
  if (*(v57 + 128))
  {
    outlined destroy of SFRichText?((v57 + 128));
    v29 = *(v57 + 232);
    type metadata accessor for SFRowCardSection();
    v25 = SAUIAppPunchOut.__allocating_init()();
    *(v57 + 648) = v25;
    *(v57 + 136) = v25;
    v30 = [v29 secondaryBalance];
    *(v57 + 656) = v30;
    v26 = swift_task_alloc();
    v22 = v30;
    *(v57 + 664) = v26;
    *v26 = *(v57 + 80);
    v26[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v23 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v22, v23);
  }

  outlined destroy of SFRichText?((v57 + 128));
  v28 = *(v57 + 112);

  outlined destroy of [SFCardSection]((v57 + 112));

  v27 = *(*(v57 + 80) + 8);

  return v27(v28);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[56] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[35]);

    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v12 = *(v0 + 723);
  v1 = *(v0 + 240);
  *(v0 + 80) = v0;
  *(v0 + 456) = *v1;

  Constants.PaymentAccountType.asCATIDForLoc.getter(v12);
  if (v2)
  {
    v10 = v11[53];
    v9 = v11[52];
    v8 = v11[34];
    String.toSpeakableString.getter();

    v10(v8, 0, 1, v9);
  }

  else
  {
    (v11[53])(v11[34], 1, 1, v11[52]);
  }

  (v11[53])(v11[33], 1, 1, v11[52]);
  v3 = swift_task_alloc();
  v11[58] = v3;
  *v3 = v11[10];
  v3[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  v4 = v11[41];
  v5 = v11[34];
  v6 = v11[33];

  return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v4, v5, v6);
}

{
  v5 = *v1;
  v5[10] = *v1;
  v5[59] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v4 = v5[34];
    outlined destroy of SpeakableString?(v5[33]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v60 = *(v0 + 400);
  v57 = *(v0 + 336);
  v52 = *(v0 + 328);
  v51 = *(v0 + 304);
  v58 = *(v0 + 296);
  *(v0 + 80) = v0;
  v54 = TemplatingResult.resultSectionsAsString.getter();
  v56 = v1;
  *(v0 + 48) = v54;
  *(v0 + 56) = v1;
  v59 = *(v51 + 8);
  v59(v52, v58);
  type metadata accessor for SFRichText();
  v2 = TemplatingResult.resultSectionsAsString.getter();
  v53 = @nonobjc SFRichText.__allocating_init(string:)(v2, v3);
  [v60 setLeadingText_];
  MEMORY[0x277D82BD8](v53);

  v55 = @nonobjc SFRichText.__allocating_init(string:)(v54, v56);
  [v60 setTrailingText_];
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BE0](v60);
  [v60 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BE0](v60);
  *(v0 + 208) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();

  v59(v57, v58);
  MEMORY[0x277D82BD8](v60);
  v4 = [*(v0 + 232) nickname];
  v61 = v4;
  if (v4)
  {
    v45 = [v4 spokenPhrase];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v5;
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v45);
    v48 = v46;
    v49 = v47;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  *(v50 + 488) = v49;
  *(v50 + 480) = v48;
  if (v49)
  {
    *(v50 + 32) = v48;
    *(v50 + 40) = v49;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v44 = *(v50 + 256);
      v43 = *(v50 + 240);
      type metadata accessor for SFRowCardSection();
      v6 = SAUIAppPunchOut.__allocating_init()();
      *(v50 + 496) = v6;
      *(v50 + 184) = v6;
      *(v50 + 504) = *v43;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v44, 0, 1);
      v8 = swift_task_alloc();
      *(v50 + 512) = v8;
      *v8 = *(v50 + 80);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v50 + 320);
      v10 = *(v50 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v42 = [*(v50 + 232) accountNumber];
  if (v42)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v12;
    MEMORY[0x277D82BD8](v42);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  *(v50 + 536) = v41;
  *(v50 + 528) = v40;
  if (v41)
  {
    *(v50 + 16) = v40;
    *(v50 + 24) = v41;
    if (String.isEmpty.getter())
    {

      goto LABEL_21;
    }

    v37 = *(v50 + 248);
    v36 = *(v50 + 240);
    type metadata accessor for SFRowCardSection();
    v13 = SAUIAppPunchOut.__allocating_init()();
    *(v50 + 544) = v13;
    *(v50 + 168) = v13;
    *(v50 + 552) = *v36;

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
    String.toSpeakableString.getter();

    v14 = type metadata accessor for SpeakableString();
    (*(*(v14 - 8) + 56))(v37, 0, 1);
    v15 = swift_task_alloc();
    *(v50 + 560) = v15;
    *v15 = *(v50 + 80);
    v15[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v9 = *(v50 + 312);
    v10 = *(v50 + 248);

    return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
  }

LABEL_21:
  v35 = [*(v50 + 232) balance];
  if (v35)
  {
    v33 = [v35 amount];
    MEMORY[0x277D82BD8](v35);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  *(v50 + 120) = v34;
  if (*(v50 + 120))
  {
    outlined destroy of SFRichText?((v50 + 120));
    v30 = *(v50 + 232);
    type metadata accessor for SFRowCardSection();
    v16 = SAUIAppPunchOut.__allocating_init()();
    *(v50 + 576) = v16;
    *(v50 + 152) = v16;
    v32 = [v30 balance];
    *(v50 + 584) = v32;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v17 = swift_task_alloc();
    v18 = v32;
    *(v50 + 592) = v17;
    *v17 = *(v50 + 80);
    v17[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v19 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v18, v19);
  }

  outlined destroy of SFRichText?((v50 + 120));
  v20 = [*(v50 + 232) secondaryBalance];
  v29 = v20;
  if (v20)
  {
    v27 = [v20 amount];
    MEMORY[0x277D82BD8](v29);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v50 + 128) = v28;
  if (*(v50 + 128))
  {
    outlined destroy of SFRichText?((v50 + 128));
    v25 = *(v50 + 232);
    type metadata accessor for SFRowCardSection();
    v21 = SAUIAppPunchOut.__allocating_init()();
    *(v50 + 648) = v21;
    *(v50 + 136) = v21;
    v26 = [v25 secondaryBalance];
    *(v50 + 656) = v26;
    v22 = swift_task_alloc();
    v18 = v26;
    *(v50 + 664) = v22;
    *v22 = *(v50 + 80);
    v22[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v19 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v18, v19);
  }

  outlined destroy of SFRichText?((v50 + 128));
  v24 = *(v50 + 112);

  outlined destroy of [SFCardSection]((v50 + 112));

  v23 = *(*(v50 + 80) + 8);

  return v23(v24);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[65] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[32]);

    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v43 = *(v0 + 496);
  v44 = *(v0 + 488);
  v38 = *(v0 + 480);
  v41 = *(v0 + 320);
  v40 = *(v0 + 304);
  v42 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v37 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v43 setLeadingText_];
  MEMORY[0x277D82BD8](v37);

  v39 = @nonobjc SFRichText.__allocating_init(string:)(v38, v44);
  [v43 setTrailingText_];
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BE0](v43);
  [v43 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BE0](v43);
  *(v0 + 192) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v40 + 8))(v41, v42);
  MEMORY[0x277D82BD8](v43);

  v45 = [*(v0 + 232) accountNumber];
  if (v45)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v3;
    MEMORY[0x277D82BD8](v45);
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  *(v36 + 536) = v35;
  *(v36 + 528) = v34;
  if (v35)
  {
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v31 = *(v36 + 248);
      v30 = *(v36 + 240);
      type metadata accessor for SFRowCardSection();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v36 + 544) = v4;
      *(v36 + 168) = v4;
      *(v36 + 552) = *v30;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      (*(*(v5 - 8) + 56))(v31, 0, 1);
      v6 = swift_task_alloc();
      *(v36 + 560) = v6;
      *v6 = *(v36 + 80);
      v6[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v7 = *(v36 + 312);
      v8 = *(v36 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v7, v8);
    }
  }

  v29 = [*(v36 + 232) balance];
  if (v29)
  {
    v27 = [v29 amount];
    MEMORY[0x277D82BD8](v29);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v36 + 120) = v28;
  if (*(v36 + 120))
  {
    outlined destroy of SFRichText?((v36 + 120));
    v24 = *(v36 + 232);
    type metadata accessor for SFRowCardSection();
    v10 = SAUIAppPunchOut.__allocating_init()();
    *(v36 + 576) = v10;
    *(v36 + 152) = v10;
    v26 = [v24 balance];
    *(v36 + 584) = v26;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v11 = swift_task_alloc();
    v12 = v26;
    *(v36 + 592) = v11;
    *v11 = *(v36 + 80);
    v11[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v13 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v12, v13);
  }

  outlined destroy of SFRichText?((v36 + 120));
  v14 = [*(v36 + 232) secondaryBalance];
  v23 = v14;
  if (v14)
  {
    v21 = [v14 amount];
    MEMORY[0x277D82BD8](v23);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *(v36 + 128) = v22;
  if (*(v36 + 128))
  {
    outlined destroy of SFRichText?((v36 + 128));
    v19 = *(v36 + 232);
    type metadata accessor for SFRowCardSection();
    v15 = SAUIAppPunchOut.__allocating_init()();
    *(v36 + 648) = v15;
    *(v36 + 136) = v15;
    v20 = [v19 secondaryBalance];
    *(v36 + 656) = v20;
    v16 = swift_task_alloc();
    v12 = v20;
    *(v36 + 664) = v16;
    *v16 = *(v36 + 80);
    v16[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v13 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v12, v13);
  }

  outlined destroy of SFRichText?((v36 + 128));
  v18 = *(v36 + 112);

  outlined destroy of [SFCardSection]((v36 + 112));

  v17 = *(*(v36 + 80) + 8);

  return v17(v18);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[71] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[31]);

    v2 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v31 = *(v0 + 544);
  v32 = *(v0 + 536);
  v26 = *(v0 + 528);
  v29 = *(v0 + 312);
  v28 = *(v0 + 304);
  v30 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v25 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v31 setLeadingText_];
  MEMORY[0x277D82BD8](v25);

  v27 = @nonobjc SFRichText.__allocating_init(string:)(v26, v32);
  [v31 setTrailingText_];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v31);
  *(v0 + 176) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v28 + 8))(v29, v30);
  MEMORY[0x277D82BD8](v31);

  v3 = [*(v0 + 232) balance];
  v33 = v3;
  if (v3)
  {
    v22 = [v3 amount];
    MEMORY[0x277D82BD8](v33);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v24 + 120) = v23;
  if (*(v24 + 120))
  {
    outlined destroy of SFRichText?((v24 + 120));
    v19 = *(v24 + 232);
    type metadata accessor for SFRowCardSection();
    v4 = SAUIAppPunchOut.__allocating_init()();
    *(v24 + 576) = v4;
    *(v24 + 152) = v4;
    v21 = [v19 balance];
    *(v24 + 584) = v21;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v5 = swift_task_alloc();
    v6 = v21;
    *(v24 + 592) = v5;
    *v5 = *(v24 + 80);
    v5[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v7 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v6, v7);
  }

  outlined destroy of SFRichText?((v24 + 120));
  v9 = [*(v24 + 232) secondaryBalance];
  v18 = v9;
  if (v9)
  {
    v16 = [v9 amount];
    MEMORY[0x277D82BD8](v18);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v24 + 128) = v17;
  if (*(v24 + 128))
  {
    outlined destroy of SFRichText?((v24 + 128));
    v14 = *(v24 + 232);
    type metadata accessor for SFRowCardSection();
    v10 = SAUIAppPunchOut.__allocating_init()();
    *(v24 + 648) = v10;
    *(v24 + 136) = v10;
    v15 = [v14 secondaryBalance];
    *(v24 + 656) = v15;
    v11 = swift_task_alloc();
    v6 = v15;
    *(v24 + 664) = v11;
    *v11 = *(v24 + 80);
    v11[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v7 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v6, v7);
  }

  outlined destroy of SFRichText?((v24 + 128));
  v13 = *(v24 + 112);

  outlined destroy of [SFCardSection]((v24 + 112));

  v12 = *(*(v24 + 80) + 8);

  return v12(v13);
}

{
  v4 = v0[75];
  v1 = v0[72];
  v5 = v0[29];
  v0[10] = v0;
  [v1 setLeadingText_];
  MEMORY[0x277D82BD8](v4);
  v7 = [v5 balance];
  v0[77] = v7;
  v2 = swift_task_alloc();
  *(v6 + 624) = v2;
  *v2 = *(v6 + 80);
  v2[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v7);
}

{
  v13 = *(v0 + 632);
  v1 = *(v0 + 576);
  v14 = v1;
  *(v0 + 80) = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BE0](v14);
  [v14 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v14);
  *(v0 + 160) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v14);
  v2 = [*(v0 + 232) secondaryBalance];
  v15 = v2;
  if (v2)
  {
    v10 = [v2 amount];
    MEMORY[0x277D82BD8](v15);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12[16] = v11;
  if (v12[16])
  {
    outlined destroy of SFRichText?(v12 + 16);
    v8 = v12[29];
    type metadata accessor for SFRowCardSection();
    v3 = SAUIAppPunchOut.__allocating_init()();
    v12[81] = v3;
    v12[17] = v3;
    v9 = [v8 secondaryBalance];
    v12[82] = v9;
    v4 = swift_task_alloc();
    v12[83] = v4;
    *v4 = v12[10];
    v4[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v9, 0);
  }

  else
  {
    outlined destroy of SFRichText?(v12 + 16);
    v7 = v12[14];

    outlined destroy of [SFCardSection](v12 + 14);

    v6 = *(v12[10] + 8);

    return v6(v7);
  }
}

{
  v4 = v0[84];
  v1 = v0[81];
  v5 = v0[29];
  v0[10] = v0;
  [v1 setLeadingText_];
  MEMORY[0x277D82BD8](v4);
  v7 = [v5 secondaryBalance];
  v0[86] = v7;
  v2 = swift_task_alloc();
  *(v6 + 696) = v2;
  *v2 = *(v6 + 80);
  v2[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v7);
}

{
  v4 = v0[88];
  v1 = v0[81];
  v5 = v1;
  v0[10] = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BE0](v5);
  [v5 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BE0](v5);
  v0[18] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v5);
  v6 = v0[14];

  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2(v6);
}

{
  v4 = v0[46];
  v1 = v0[36];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v4 = v0[50];
  v1 = v0[35];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v8 = v0[50];
  v6 = v0[42];
  v5 = v0[38];
  v7 = v0[37];
  v4 = v0[34];
  v1 = v0[33];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v4 = v0[62];
  v1 = v0[32];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v4 = v0[68];
  v1 = v0[31];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[73];
  v4 = v0[72];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[77];
  v4 = v0[72];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[82];
  v4 = v0[81];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[86];
  v4 = v0[81];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);

  return v2();
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 600) = a1;
  *(v5 + 608) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 632) = a1;
  *(v5 + 640) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 672) = a1;
  *(v5 + 680) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 704) = a1;
  *(v5 + 712) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(uint64_t a1, char a2)
{
  *(v3 + 88) = v2;
  *(v3 + 225) = a2 & 1;
  *(v3 + 80) = a1;
  *(v3 + 32) = v3;
  *(v3 + 40) = 0;
  *(v3 + 224) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 232) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 40) = a1;
  *(v3 + 224) = a2 & 1;
  *(v3 + 48) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)()
{
  v1 = *(v0 + 80);
  v26 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v26)
  {
    v24 = *(v25 + 80);
    *(v25 + 56) = v24;
    *(v25 + 64) = [v24 balanceType];
    *(v25 + 72) = 1;
    type metadata accessor for INBalanceType(0);
    lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType();
    if (== infix<A>(_:_:)())
    {
      if (*(v25 + 225))
      {
        v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1);
        object = v4._object;
        countAndFlagsBits = v4._countAndFlagsBits;
      }

      else
      {
        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryBalance", 0x10uLL, 1);
        object = v5._object;
        countAndFlagsBits = v5._countAndFlagsBits;
      }

      *(v25 + 168) = object;
      v23 = *(v25 + 112);
      v6 = *(v25 + 88);
      *(v25 + 16) = countAndFlagsBits;
      *(v25 + 24) = object;
      *(v25 + 176) = *v6;

      String.toSpeakableString.getter();
      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v23, 0, 1);
      v8 = swift_task_alloc();
      *(v25 + 184) = v8;
      *v8 = *(v25 + 32);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
      v9 = *(v25 + 152);
      v10 = *(v25 + 112);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }

    else
    {
      v19 = *(v25 + 104);
      v18 = *(v25 + 88);
      v22 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)([v24 balanceType], 0);
      *(v25 + 232) = v22;
      *(v25 + 200) = *v18;

      v20 = type metadata accessor for SpeakableString();
      v21 = *(*(v20 - 8) + 56);
      v21(v19, 1);
      if (v22 == 4)
      {
        (v21)(*(v25 + 96), 1, 1, v20);
      }

      else
      {
        v17 = *(v25 + 96);
        Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(v22);
        String.toSpeakableString.getter();

        (v21)(v17, 0, 1, v20);
      }

      v12 = swift_task_alloc();
      *(v25 + 208) = v12;
      *v12 = *(v25 + 32);
      v12[1] = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
      v13 = *(v25 + 144);
      v14 = *(v25 + 104);
      v15 = *(v25 + 96);

      return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v13, v14, v15);
    }
  }

  else
  {

    v16 = *(*(v25 + 32) + 8);

    return v16(0);
  }
}

{
  v4 = *v1;
  v4[4] = *v1;
  v4[24] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[14]);

    v2 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[15];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);

  v14 = v0[20];
  v5 = v0[17];
  v9 = v0[16];
  v12 = v0[15];
  v15 = v0[10];
  type metadata accessor for SFRichText();
  (*(v9 + 16))(v5, v14, v12);
  v10 = TemplatingResult.resultSectionsAsString.getter();
  v11 = v6;
  v13 = *(v9 + 8);
  v13(v5, v12);
  v16 = @nonobjc SFRichText.__allocating_init(string:)(v10, v11);
  v13(v14, v12);
  MEMORY[0x277D82BD8](v15);

  v7 = *(v0[4] + 8);

  return v7(v16);
}

{
  v5 = *v1;
  v5[4] = *v1;
  v5[27] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  else
  {
    v4 = v5[13];
    outlined destroy of SpeakableString?(v5[12]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[15];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v14 = v0[20];
  v5 = v0[17];
  v9 = v0[16];
  v12 = v0[15];
  v15 = v0[10];
  type metadata accessor for SFRichText();
  (*(v9 + 16))(v5, v14, v12);
  v10 = TemplatingResult.resultSectionsAsString.getter();
  v11 = v6;
  v13 = *(v9 + 8);
  v13(v5, v12);
  v16 = @nonobjc SFRichText.__allocating_init(string:)(v10, v11);
  v13(v14, v12);
  MEMORY[0x277D82BD8](v15);

  v7 = *(v0[4] + 8);

  return v7(v16);
}

{
  v1 = v0[14];
  v4 = v0[10];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[4] + 8);

  return v2();
}

{
  v4 = v0[13];
  v1 = v0[12];
  v5 = v0[10];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t SearchForAccountsViewBuilder.buildBalanceText(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceText(for:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceText(for:)()
{
  v29 = v0[9];
  v0[2] = v0;
  type metadata accessor for NSNumberFormatter();
  v28 = SAUIAppPunchOut.__allocating_init()();
  v0[5] = v28;
  [v28 setNumberStyle_];
  MEMORY[0x277D82BE0](v29);
  if (v29)
  {
    v24 = v27[9];
    v25 = [v24 amount];
    MEMORY[0x277D82BD8](v24);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v23 = v27[9];
    v27[6] = v26;
    MEMORY[0x277D82BE0](v23);
    if (v23)
    {
      v19 = v27[9];
      v20 = [v19 balanceType];
      MEMORY[0x277D82BD8](v19);
      v21 = v20;
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 1;
    }

    if ((v22 & 1) != 0 || (v27[7] = v21, v27[8] = 1, type metadata accessor for INBalanceType(0), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v1 = dispatch thunk of static Equatable.== infix(_:_:)(), (v1 & 1) == 0))
    {
      [v28 setNumberStyle_];
      type metadata accessor for SFRichText();
      v11 = [v28 stringFromNumber_];
      if (v11)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v3;
        MEMORY[0x277D82BD8](v11);
        v9 = v7;
        v10 = v8;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v6 = @nonobjc SFRichText.__allocating_init(string:)(v9, v10);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v28);
      v13 = v6;
    }

    else
    {
      type metadata accessor for SFRichText();
      v18 = [v28 stringFromNumber_];
      if (v18)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v2;
        MEMORY[0x277D82BD8](v18);
        v16 = v14;
        v17 = v15;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v12 = @nonobjc SFRichText.__allocating_init(string:)(v16, v17);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v28);
      v13 = v12;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v28);
    v13 = 0;
  }

  v4 = *(v27[2] + 8);

  return v4(v13);
}

uint64_t implicit closure #1 in SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(uint64_t a1, char a2)
{
  *(v3 + 96) = v2;
  *(v3 + 233) = a2 & 1;
  *(v3 + 88) = a1;
  *(v3 + 32) = v3;
  *(v3 + 40) = 0;
  *(v3 + 232) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 240) = 0;
  *(v3 + 80) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 40) = a1;
  *(v3 + 232) = a2 & 1;
  *(v3 + 48) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)()
{
  v1 = *(v0 + 88);
  v26 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v26)
  {
    v24 = *(v25 + 88);
    *(v25 + 56) = v24;
    *(v25 + 64) = [v24 balanceType];
    *(v25 + 72) = 1;
    type metadata accessor for INBalanceType(0);
    lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType();
    if (== infix<A>(_:_:)())
    {
      if (*(v25 + 233))
      {
        v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1);
        object = v4._object;
        countAndFlagsBits = v4._countAndFlagsBits;
      }

      else
      {
        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryBalance", 0x10uLL, 1);
        object = v5._object;
        countAndFlagsBits = v5._countAndFlagsBits;
      }

      *(v25 + 176) = object;
      v23 = *(v25 + 120);
      v6 = *(v25 + 96);
      *(v25 + 16) = countAndFlagsBits;
      *(v25 + 24) = object;
      *(v25 + 184) = *v6;

      String.toSpeakableString.getter();
      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v23, 0, 1);
      v8 = swift_task_alloc();
      *(v25 + 192) = v8;
      *v8 = *(v25 + 32);
      v8[1] = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
      v9 = *(v25 + 160);
      v10 = *(v25 + 120);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }

    else
    {
      v19 = *(v25 + 112);
      v18 = *(v25 + 96);
      v22 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)([v24 balanceType], 0);
      *(v25 + 240) = v22;
      *(v25 + 208) = *v18;

      v20 = type metadata accessor for SpeakableString();
      v21 = *(*(v20 - 8) + 56);
      v21(v19, 1);
      if (v22 == 4)
      {
        (v21)(*(v25 + 104), 1, 1, v20);
      }

      else
      {
        v17 = *(v25 + 104);
        Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(v22);
        String.toSpeakableString.getter();

        (v21)(v17, 0, 1, v20);
      }

      v12 = swift_task_alloc();
      *(v25 + 216) = v12;
      *v12 = *(v25 + 32);
      v12[1] = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
      v13 = *(v25 + 152);
      v14 = *(v25 + 112);
      v15 = *(v25 + 104);

      return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v13, v14, v15);
    }
  }

  else
  {

    v16 = *(*(v25 + 32) + 8);

    return v16(0);
  }
}

{
  v4 = *v1;
  v4[4] = *v1;
  v4[25] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[15]);

    v2 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);

  v11 = v0[21];
  v9 = v0[18];
  v8 = v0[17];
  v12 = v0[16];
  v14 = v0[11];
  type metadata accessor for SAUIDecoratedText();
  v15 = SAUIAppPunchOut.__allocating_init()();
  v0[10] = v15;
  (*(v8 + 16))(v9, v11, v12);
  v5 = TemplatingResult.resultSectionsAsString.getter();
  v10 = MEMORY[0x26D620690](v5);
  v13 = *(v8 + 8);
  v13(v9, v12);

  [v15 setText_];
  MEMORY[0x277D82BD8](v10);
  v13(v11, v12);
  MEMORY[0x277D82BD8](v14);

  v6 = *(v0[4] + 8);

  return v6(v15);
}

{
  v5 = *v1;
  v5[4] = *v1;
  v5[28] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  else
  {
    v4 = v5[14];
    outlined destroy of SpeakableString?(v5[13]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[16];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v11 = v0[21];
  v9 = v0[18];
  v8 = v0[17];
  v12 = v0[16];
  v14 = v0[11];
  type metadata accessor for SAUIDecoratedText();
  v15 = SAUIAppPunchOut.__allocating_init()();
  v0[10] = v15;
  (*(v8 + 16))(v9, v11, v12);
  v5 = TemplatingResult.resultSectionsAsString.getter();
  v10 = MEMORY[0x26D620690](v5);
  v13 = *(v8 + 8);
  v13(v9, v12);

  [v15 setText_];
  MEMORY[0x277D82BD8](v10);
  v13(v11, v12);
  MEMORY[0x277D82BD8](v14);

  v6 = *(v0[4] + 8);

  return v6(v15);
}

{
  v1 = v0[15];
  v4 = v0[11];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[4] + 8);

  return v2();
}

{
  v4 = v0[14];
  v1 = v0[13];
  v5 = v0[11];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchBalanceText(for:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceText(for:)()
{
  v32 = v0[10];
  v0[2] = v0;
  type metadata accessor for NSNumberFormatter();
  v31 = SAUIAppPunchOut.__allocating_init()();
  v0[5] = v31;
  [v31 setNumberStyle_];
  MEMORY[0x277D82BE0](v32);
  if (v32)
  {
    v27 = v30[10];
    v28 = [v27 amount];
    MEMORY[0x277D82BD8](v27);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v26 = v30[10];
    v30[6] = v29;
    type metadata accessor for SAUIDecoratedText();
    v25 = SAUIAppPunchOut.__allocating_init()();
    v30[7] = v25;
    MEMORY[0x277D82BE0](v26);
    if (v26)
    {
      v21 = v30[10];
      v22 = [v21 balanceType];
      MEMORY[0x277D82BD8](v21);
      v23 = v22;
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    if ((v24 & 1) != 0 || (v30[8] = v23, v30[9] = 1, type metadata accessor for INBalanceType(0), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v1 = dispatch thunk of static Equatable.== infix(_:_:)(), (v1 & 1) == 0))
    {
      [v31 setNumberStyle_];
      v13 = [v31 stringFromNumber_];
      if (v13)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v3;
        MEMORY[0x277D82BD8](v13);
        v11 = v9;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      if (v12)
      {
        v7 = MEMORY[0x26D620690](v11);

        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      [v25 setText_];
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      v20 = [v31 stringFromNumber_];
      if (v20)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v2;
        MEMORY[0x277D82BD8](v20);
        v18 = v16;
        v19 = v17;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      if (v19)
      {
        v14 = MEMORY[0x26D620690](v18);

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      [v25 setText_];
      MEMORY[0x277D82BD8](v15);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v31);
    v6 = v25;
  }

  else
  {
    MEMORY[0x277D82BD8](v31);
    v6 = 0;
  }

  v4 = *(v30[2] + 8);

  return v4(v6);
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 272) = v2;
  *(v3 + 264) = a1;
  *(v3 + 80) = v3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 776) = 0;
  *(v3 + 240) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 248) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 320) = v4;
  *(v3 + 328) = *(v4 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.makeTemplateAction(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)()
{
  v83 = v0[33];
  v0[10] = v0;
  type metadata accessor for SASTViewTemplateAction();
  v1 = SAUIAppPunchOut.__allocating_init()();
  v0[46] = v1;
  v0[14] = v1;
  type metadata accessor for SASTItemGroup();
  v80 = SAUIAppPunchOut.__allocating_init()();
  v0[47] = v80;
  v0[15] = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v80 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SASTPropertyListItem();
  v82 = SAUIAppPunchOut.__allocating_init()();
  v0[48] = v82;
  v0[16] = v82;
  v2 = SAUIAppPunchOut.__allocating_init()();
  v0[49] = v2;
  v0[17] = v2;
  v3 = SAUIAppPunchOut.__allocating_init()();
  v0[50] = v3;
  v0[18] = v3;
  v4 = SAUIAppPunchOut.__allocating_init()();
  v0[51] = v4;
  v0[19] = v4;
  v5 = SAUIAppPunchOut.__allocating_init()();
  v0[52] = v5;
  v0[20] = v5;
  v6 = SAUIAppPunchOut.__allocating_init()();
  v0[53] = v6;
  v0[21] = v6;
  v7 = [v83 organizationName];
  v84 = v7;
  if (v7)
  {
    v74 = [v7 spokenPhrase];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v8;
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v74);
    v77 = v75;
    v78 = v76;
  }

  else
  {
    v77 = 0;
    v78 = 0;
  }

  if (v78)
  {
    *(v79 + 64) = v77;
    *(v79 + 72) = v78;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SAUIDecoratedText();
      v73 = SAUIAppPunchOut.__allocating_init()();
      *(v79 + 256) = v73;

      v70 = MEMORY[0x26D620690](v77, v78);

      [v73 setText_];
      MEMORY[0x277D82BD8](v70);
      _allocateUninitializedArray<A>(_:)();
      v71 = v9;
      MEMORY[0x277D82BE0](v73);
      *v71 = v73;
      _finalizeUninitializedArray<A>(_:)();
      v72 = Array._bridgeToObjectiveC()().super.isa;

      [v82 setDecoratedValues_];
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v73);
    }
  }

  v69 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v79 + 264) accountType]);
  *(v79 + 779) = v69;
  if (v69 != 9)
  {
    *(v79 + 776) = v69;
    *(v79 + 777) = v69;
    *(v79 + 778) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v68 = *(v79 + 312);
      v67 = *(v79 + 272);
      *(v79 + 432) = type metadata accessor for SAUIDecoratedText();
      v10 = SAUIAppPunchOut.__allocating_init()();
      *(v79 + 440) = v10;
      *(v79 + 240) = v10;
      *(v79 + 448) = *v67;

      SearchForAccountsSlots.rawValue.getter(1);
      String.toSpeakableString.getter();

      v11 = type metadata accessor for SpeakableString();
      *(v79 + 456) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v79 + 464) = v13;
      *(v79 + 472) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v68, 0, 1);
      v14 = swift_task_alloc();
      *(v79 + 480) = v14;
      *v14 = *(v79 + 80);
      v14[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v79 + 360);
      v16 = *(v79 + 312);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v66 = [*(v79 + 264) nickname];
  if (v66)
  {
    v61 = [v66 spokenPhrase];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v18;
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v61);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  *(v79 + 544) = v65;
  *(v79 + 536) = v64;
  if (v65)
  {
    *(v79 + 32) = v64;
    *(v79 + 40) = v65;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v60 = *(v79 + 288);
      v59 = *(v79 + 272);
      *(v79 + 552) = type metadata accessor for SAUIDecoratedText();
      v19 = SAUIAppPunchOut.__allocating_init()();
      *(v79 + 560) = v19;
      *(v79 + 224) = v19;
      *(v79 + 568) = *v59;

      SearchForAccountsSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v20 = type metadata accessor for SpeakableString();
      (*(*(v20 - 8) + 56))(v60, 0, 1);
      v21 = swift_task_alloc();
      *(v79 + 576) = v21;
      *v21 = *(v79 + 80);
      v21[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v79 + 344);
      v16 = *(v79 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v58 = [*(v79 + 264) accountNumber];
  if (v58)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v22;
    MEMORY[0x277D82BD8](v58);
    v56 = v54;
    v57 = v55;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  *(v79 + 600) = v57;
  *(v79 + 592) = v56;
  if (v57)
  {
    *(v79 + 16) = v56;
    *(v79 + 24) = v57;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v53 = *(v79 + 280);
      v52 = *(v79 + 272);
      *(v79 + 608) = type metadata accessor for SAUIDecoratedText();
      v23 = SAUIAppPunchOut.__allocating_init()();
      *(v79 + 616) = v23;
      *(v79 + 208) = v23;
      *(v79 + 624) = *v52;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v24 = type metadata accessor for SpeakableString();
      (*(*(v24 - 8) + 56))(v53, 0, 1);
      v25 = swift_task_alloc();
      *(v79 + 632) = v25;
      *v25 = *(v79 + 80);
      v25[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v79 + 336);
      v16 = *(v79 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v51 = [*(v79 + 264) balance];
  if (v51)
  {
    v49 = [v51 amount];
    MEMORY[0x277D82BD8](v51);
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  *(v79 + 176) = v50;
  v48 = *(v79 + 176) != 0;
  outlined destroy of SFRichText?((v79 + 176));
  if (v48)
  {
    v47 = [*(v79 + 264) balance];
    *(v79 + 648) = v47;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v26 = swift_task_alloc();
    v27 = v47;
    *(v79 + 656) = v26;
    *v26 = *(v79 + 80);
    v26[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v28 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v27, v28);
  }

  v29 = [*(v79 + 264) secondaryBalance];
  v45 = v29;
  if (v29)
  {
    v43 = [v29 amount];
    MEMORY[0x277D82BD8](v45);
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  *(v79 + 184) = v44;
  v42 = *(v79 + 184) != 0;
  outlined destroy of SFRichText?((v79 + 184));
  if (v42)
  {
    v41 = [*(v79 + 264) secondaryBalance];
    *(v79 + 712) = v41;
    v30 = swift_task_alloc();
    v27 = v41;
    *(v79 + 720) = v30;
    *v30 = *(v79 + 80);
    v30[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v28 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v27, v28);
  }

  v34 = *(v79 + 424);
  v35 = *(v79 + 416);
  v36 = *(v79 + 408);
  v37 = *(v79 + 400);
  v38 = *(v79 + 392);
  v39 = *(v79 + 384);
  v40 = *(v79 + 376);
  v33 = *(v79 + 368);
  MEMORY[0x277D82BE0](v39);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v39, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v38);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v38, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v37);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v37, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v36);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v36, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v35);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v35, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v34);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v34, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v40);
  [v33 setItemGroupView_];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);

  v31 = *(*(v79 + 80) + 8);
  v32 = *(v79 + 368);

  return v31(v32);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[61] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[39]);

    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = *(v0 + 440);
  v19 = *(v0 + 779);
  v15 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 320);
  v18 = *(v0 + 272);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v17 = MEMORY[0x26D620690](v1);
  v2 = *(v13 + 8);
  *(v0 + 496) = v2;
  *(v0 + 504) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v15, v14);

  [v16 setText_];
  MEMORY[0x277D82BD8](v17);
  *(v0 + 512) = *v18;

  Constants.PaymentAccountType.asCATIDForLoc.getter(v19);
  if (v3)
  {
    v11 = v12[58];
    v10 = v12[57];
    v9 = v12[38];
    String.toSpeakableString.getter();

    v11(v9, 0, 1, v10);
  }

  else
  {
    (v12[58])(v12[38], 1, 1, v12[57]);
  }

  (v12[58])(v12[37], 1, 1, v12[57]);
  v4 = swift_task_alloc();
  v12[65] = v4;
  *v4 = v12[10];
  v4[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  v5 = v12[44];
  v6 = v12[38];
  v7 = v12[37];

  return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v5, v6, v7);
}

{
  v5 = *v1;
  v5[10] = *v1;
  v5[66] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    v4 = v5[38];
    outlined destroy of SpeakableString?(v5[37]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v56 = *(v0 + 496);
  v66 = *(v0 + 440);
  v62 = *(v0 + 392);
  v57 = *(v0 + 352);
  v58 = *(v0 + 320);
  *(v0 + 80) = v0;
  v59 = TemplatingResult.resultSectionsAsString.getter();
  v65 = v1;
  *(v0 + 48) = v59;
  *(v0 + 56) = v1;
  v56(v57, v58);
  v64 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 248) = v64;

  v60 = MEMORY[0x26D620690](v59, v65);

  [v64 setText_];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BE0](v66);
  [v62 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v66);
  _allocateUninitializedArray<A>(_:)();
  v61 = v2;
  MEMORY[0x277D82BE0](v64);
  *v61 = v64;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v62 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v64);

  MEMORY[0x277D82BD8](v66);
  v3 = [*(v0 + 264) nickname];
  v67 = v3;
  if (v3)
  {
    v50 = [v3 spokenPhrase];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v4;
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v50);
    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  *(v55 + 544) = v54;
  *(v55 + 536) = v53;
  if (v54)
  {
    *(v55 + 32) = v53;
    *(v55 + 40) = v54;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v49 = *(v55 + 288);
      v48 = *(v55 + 272);
      *(v55 + 552) = type metadata accessor for SAUIDecoratedText();
      v5 = SAUIAppPunchOut.__allocating_init()();
      *(v55 + 560) = v5;
      *(v55 + 224) = v5;
      *(v55 + 568) = *v48;

      SearchForAccountsSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v6 = type metadata accessor for SpeakableString();
      (*(*(v6 - 8) + 56))(v49, 0, 1);
      v7 = swift_task_alloc();
      *(v55 + 576) = v7;
      *v7 = *(v55 + 80);
      v7[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v8 = *(v55 + 344);
      v9 = *(v55 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v8, v9);
    }
  }

  v47 = [*(v55 + 264) accountNumber];
  if (v47)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v11;
    MEMORY[0x277D82BD8](v47);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  *(v55 + 600) = v46;
  *(v55 + 592) = v45;
  if (v46)
  {
    *(v55 + 16) = v45;
    *(v55 + 24) = v46;
    if (String.isEmpty.getter())
    {

      goto LABEL_21;
    }

    v42 = *(v55 + 280);
    v41 = *(v55 + 272);
    *(v55 + 608) = type metadata accessor for SAUIDecoratedText();
    v12 = SAUIAppPunchOut.__allocating_init()();
    *(v55 + 616) = v12;
    *(v55 + 208) = v12;
    *(v55 + 624) = *v41;

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
    String.toSpeakableString.getter();

    v13 = type metadata accessor for SpeakableString();
    (*(*(v13 - 8) + 56))(v42, 0, 1);
    v14 = swift_task_alloc();
    *(v55 + 632) = v14;
    *v14 = *(v55 + 80);
    v14[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v8 = *(v55 + 336);
    v9 = *(v55 + 280);

    return SearchForAccountsCATs.labelForResponseSlot(slot:)(v8, v9);
  }

LABEL_21:
  v40 = [*(v55 + 264) balance];
  if (v40)
  {
    v38 = [v40 amount];
    MEMORY[0x277D82BD8](v40);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  *(v55 + 176) = v39;
  v37 = *(v55 + 176) != 0;
  outlined destroy of SFRichText?((v55 + 176));
  if (v37)
  {
    v36 = [*(v55 + 264) balance];
    *(v55 + 648) = v36;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v15 = swift_task_alloc();
    v16 = v36;
    *(v55 + 656) = v15;
    *v15 = *(v55 + 80);
    v15[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v17 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v16, v17);
  }

  v18 = [*(v55 + 264) secondaryBalance];
  v34 = v18;
  if (v18)
  {
    v32 = [v18 amount];
    MEMORY[0x277D82BD8](v34);
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  *(v55 + 184) = v33;
  v31 = *(v55 + 184) != 0;
  outlined destroy of SFRichText?((v55 + 184));
  if (v31)
  {
    v30 = [*(v55 + 264) secondaryBalance];
    *(v55 + 712) = v30;
    v19 = swift_task_alloc();
    v16 = v30;
    *(v55 + 720) = v19;
    *v19 = *(v55 + 80);
    v19[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v17 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v16, v17);
  }

  v23 = *(v55 + 424);
  v24 = *(v55 + 416);
  v25 = *(v55 + 408);
  v26 = *(v55 + 400);
  v27 = *(v55 + 392);
  v28 = *(v55 + 384);
  v29 = *(v55 + 376);
  v22 = *(v55 + 368);
  MEMORY[0x277D82BE0](v28);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v28, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v27);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v27, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v26);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v26, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v25);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v25, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v24);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v24, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v23);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v23, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v29);
  [v22 setItemGroupView_];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);

  v20 = *(*(v55 + 80) + 8);
  v21 = *(v55 + 368);

  return v20(v21);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[73] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[36]);

    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v53 = *(v0 + 560);
  v54 = *(v0 + 544);
  v47 = *(v0 + 536);
  v50 = *(v0 + 400);
  v45 = *(v0 + 344);
  v43 = *(v0 + 328);
  v44 = *(v0 + 320);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v46 = MEMORY[0x26D620690](v1);
  (*(v43 + 8))(v45, v44);

  [v53 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v46);
  v52 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 232) = v52;

  v48 = MEMORY[0x26D620690](v47, v54);

  [v52 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BE0](v53);
  [v50 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v53);
  _allocateUninitializedArray<A>(_:)();
  v49 = v2;
  MEMORY[0x277D82BE0](v52);
  *v49 = v52;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);

  v55 = [*(v0 + 264) accountNumber];
  if (v55)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v3;
    MEMORY[0x277D82BD8](v55);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  *(v42 + 600) = v41;
  *(v42 + 592) = v40;
  if (v41)
  {
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v37 = *(v42 + 280);
      v36 = *(v42 + 272);
      *(v42 + 608) = type metadata accessor for SAUIDecoratedText();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v42 + 616) = v4;
      *(v42 + 208) = v4;
      *(v42 + 624) = *v36;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      (*(*(v5 - 8) + 56))(v37, 0, 1);
      v6 = swift_task_alloc();
      *(v42 + 632) = v6;
      *v6 = *(v42 + 80);
      v6[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v7 = *(v42 + 336);
      v8 = *(v42 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v7, v8);
    }
  }

  v35 = [*(v42 + 264) balance];
  if (v35)
  {
    v33 = [v35 amount];
    MEMORY[0x277D82BD8](v35);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  *(v42 + 176) = v34;
  v32 = *(v42 + 176) != 0;
  outlined destroy of SFRichText?((v42 + 176));
  if (v32)
  {
    v31 = [*(v42 + 264) balance];
    *(v42 + 648) = v31;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v10 = swift_task_alloc();
    v11 = v31;
    *(v42 + 656) = v10;
    *v10 = *(v42 + 80);
    v10[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v12 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v11, v12);
  }

  v13 = [*(v42 + 264) secondaryBalance];
  v29 = v13;
  if (v13)
  {
    v27 = [v13 amount];
    MEMORY[0x277D82BD8](v29);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v42 + 184) = v28;
  v26 = *(v42 + 184) != 0;
  outlined destroy of SFRichText?((v42 + 184));
  if (v26)
  {
    v25 = [*(v42 + 264) secondaryBalance];
    *(v42 + 712) = v25;
    v14 = swift_task_alloc();
    v11 = v25;
    *(v42 + 720) = v14;
    *v14 = *(v42 + 80);
    v14[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v12 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v11, v12);
  }

  v18 = *(v42 + 424);
  v19 = *(v42 + 416);
  v20 = *(v42 + 408);
  v21 = *(v42 + 400);
  v22 = *(v42 + 392);
  v23 = *(v42 + 384);
  v24 = *(v42 + 376);
  v17 = *(v42 + 368);
  MEMORY[0x277D82BE0](v23);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v23, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v22);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v22, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v21);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v21, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v20);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v20, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v19);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v19, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v18);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v18, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v24);
  [v17 setItemGroupView_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);

  v15 = *(*(v42 + 80) + 8);
  v16 = *(v42 + 368);

  return v15(v16);
}

{
  v4 = *v1;
  v4[10] = *v1;
  v4[80] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[35]);

    v2 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v41 = *(v0 + 616);
  v42 = *(v0 + 600);
  v35 = *(v0 + 592);
  v38 = *(v0 + 408);
  v33 = *(v0 + 336);
  v31 = *(v0 + 328);
  v32 = *(v0 + 320);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v34 = MEMORY[0x26D620690](v1);
  (*(v31 + 8))(v33, v32);

  [v41 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v34);
  v40 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 216) = v40;

  v36 = MEMORY[0x26D620690](v35, v42);

  [v40 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BE0](v41);
  [v38 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v41);
  _allocateUninitializedArray<A>(_:)();
  v37 = v2;
  MEMORY[0x277D82BE0](v40);
  *v37 = v40;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);

  v3 = [*(v0 + 264) balance];
  v43 = v3;
  if (v3)
  {
    v28 = [v3 amount];
    MEMORY[0x277D82BD8](v43);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v30 + 176) = v29;
  v27 = *(v30 + 176) != 0;
  outlined destroy of SFRichText?((v30 + 176));
  if (v27)
  {
    v26 = [*(v30 + 264) balance];
    *(v30 + 648) = v26;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v4 = swift_task_alloc();
    v5 = v26;
    *(v30 + 656) = v4;
    *v4 = *(v30 + 80);
    v4[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v6 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v5, v6);
  }

  v8 = [*(v30 + 264) secondaryBalance];
  v24 = v8;
  if (v8)
  {
    v22 = [v8 amount];
    MEMORY[0x277D82BD8](v24);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v30 + 184) = v23;
  v21 = *(v30 + 184) != 0;
  outlined destroy of SFRichText?((v30 + 184));
  if (v21)
  {
    v20 = [*(v30 + 264) secondaryBalance];
    *(v30 + 712) = v20;
    v9 = swift_task_alloc();
    v5 = v20;
    *(v30 + 720) = v9;
    *v9 = *(v30 + 80);
    v9[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v6 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v5, v6);
  }

  v13 = *(v30 + 424);
  v14 = *(v30 + 416);
  v15 = *(v30 + 408);
  v16 = *(v30 + 400);
  v17 = *(v30 + 392);
  v18 = *(v30 + 384);
  v19 = *(v30 + 376);
  v12 = *(v30 + 368);
  MEMORY[0x277D82BE0](v18);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v18, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v17);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v17, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v16);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v16, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v15);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v15, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v14);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v14, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v13);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v13, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v19);
  [v12 setItemGroupView_];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);

  v10 = *(*(v30 + 80) + 8);
  v11 = *(v30 + 368);

  return v10(v11);
}

{
  v4 = v0[83];
  v1 = v0[52];
  v5 = v0[33];
  v0[10] = v0;
  [v1 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v4);
  v7 = [v5 balance];
  v0[85] = v7;
  v2 = swift_task_alloc();
  *(v6 + 688) = v2;
  *v2 = *(v6 + 80);
  v2[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);

  return SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(v7);
}

{
  v1 = *(v0 + 696);
  *(v0 + 80) = v0;
  if (v1)
  {
    v24 = *(v25 + 696);
    v22 = *(v25 + 416);
    *(v25 + 200) = v24;
    type metadata accessor for SAUIDecoratedText();
    _allocateUninitializedArray<A>(_:)();
    v21 = v2;
    MEMORY[0x277D82BE0](v24);
    *v21 = v24;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setDecoratedValues_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v24);
  }

  v3 = [*(v25 + 264) secondaryBalance];
  v20 = v3;
  if (v3)
  {
    v18 = [v3 amount];
    MEMORY[0x277D82BD8](v20);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *(v25 + 184) = v19;
  v17 = *(v25 + 184) != 0;
  outlined destroy of SFRichText?((v25 + 184));
  if (v17)
  {
    v16 = [*(v25 + 264) secondaryBalance];
    *(v25 + 712) = v16;
    v4 = swift_task_alloc();
    *(v25 + 720) = v4;
    *v4 = *(v25 + 80);
    v4[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v16, 0);
  }

  else
  {
    v9 = *(v25 + 424);
    v10 = *(v25 + 416);
    v11 = *(v25 + 408);
    v12 = *(v25 + 400);
    v13 = *(v25 + 392);
    v14 = *(v25 + 384);
    v15 = *(v25 + 376);
    v8 = *(v25 + 368);
    MEMORY[0x277D82BE0](v14);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v14, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v13);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v13, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v12);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v12, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v11);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v11, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v10);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v10, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v9);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v9, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v15);
    [v8 setItemGroupView_];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);

    v6 = *(*(v25 + 80) + 8);
    v7 = *(v25 + 368);

    return v6(v7);
  }
}

{
  v4 = v0[91];
  v1 = v0[53];
  v5 = v0[33];
  v0[10] = v0;
  [v1 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v4);
  v7 = [v5 secondaryBalance];
  v0[93] = v7;
  v2 = swift_task_alloc();
  *(v6 + 752) = v2;
  *v2 = *(v6 + 80);
  v2[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);

  return SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(v7);
}

{
  v1 = *(v0 + 760);
  *(v0 + 80) = v0;
  if (v1)
  {
    v17 = v18[95];
    v15 = v18[53];
    v18[24] = v17;
    type metadata accessor for SAUIDecoratedText();
    _allocateUninitializedArray<A>(_:)();
    v14 = v2;
    MEMORY[0x277D82BE0](v17);
    *v14 = v17;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setDecoratedValues_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v17);
  }

  v7 = v18[53];
  v8 = v18[52];
  v9 = v18[51];
  v10 = v18[50];
  v11 = v18[49];
  v12 = v18[48];
  v13 = v18[47];
  v6 = v18[46];
  MEMORY[0x277D82BE0](v12);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v12, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v11);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v11, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v10);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v10, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v9);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v9, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v8);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v8, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v7);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v7, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v13);
  [v6 setItemGroupView_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v3 = *(v18[10] + 8);
  v4 = v18[46];

  return v3(v4);
}

{
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[52];
  v7 = v0[51];
  v8 = v0[50];
  v9 = v0[49];
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v1 = v0[39];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v5 = v0[55];
  v6 = v0[53];
  v7 = v0[52];
  v8 = v0[51];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[48];
  v12 = v0[47];
  v13 = v0[46];
  v4 = v0[38];
  v1 = v0[37];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v4 = v0[70];
  v5 = v0[53];
  v6 = v0[52];
  v7 = v0[51];
  v8 = v0[50];
  v9 = v0[49];
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v1 = v0[36];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v4 = v0[77];
  v5 = v0[53];
  v6 = v0[52];
  v7 = v0[51];
  v8 = v0[50];
  v9 = v0[49];
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v1 = v0[35];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[81];
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[85];
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[89];
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[10] + 8);

  return v2();
}

{
  v1 = v0[93];
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = *(v0[10] + 8);

  return v2();
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 664) = a1;
  *(v5 + 672) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 696) = a1;
  *(v5 + 704) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 728) = a1;
  *(v5 + 736) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 80) = *v2;
  *(v5 + 760) = a1;
  *(v5 + 768) = v1;

  if (v1)
  {
    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v3 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

id implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 templateItems];
  v7 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    result = MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/SearchForAccountsViewBuilder.swift", 54, 2, 302, 0);
    __break(1u);
  }

  *a2 = v3;
  return result;
}

uint64_t SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = v2;
  *(v3 + 120) = a2;
  *(v3 + 112) = a1;
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 224) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:), 0);
}

uint64_t SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)()
{
  v1 = v0[24];
  v35 = v0[23];
  v36 = v0[22];
  v0[6] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v35 + 16))(v1, v2, v36);
  v38 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0, v29, v29);
    v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v34 + 80) = v30;
    *(v34 + 88) = v31;
    *(v34 + 96) = v32;
    serialize(_:at:)(0, (v34 + 80));
    serialize(_:at:)(0, (v34 + 80));
    *(v34 + 104) = v39;
    v33 = swift_task_alloc();
    v33[2] = v34 + 80;
    v33[3] = v34 + 88;
    v33[4] = v34 + 96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v38, v37, "#SearchForAccountsHandleIntentStrategy fillWatchLabelForAccountIfNeeded", v30, 2u);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);
  }

  v25 = *(v34 + 192);
  v26 = *(v34 + 176);
  v27 = *(v34 + 112);
  v24 = *(v34 + 184);
  MEMORY[0x277D82BD8](v38);
  (*(v24 + 8))(v25, v26);
  v28 = static Constants.PaymentAccountType.fromINAccountType(_:)([v27 accountType]);
  if (v28 == 9 || (*(v34 + 224) = v28, *(v34 + 225) = v28, *(v34 + 226) = 0, lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v20 = [*(v34 + 112) accountNumber];
    if (v20)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v12;
      MEMORY[0x277D82BD8](v20);
      v18 = v16;
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if (v19)
    {
      *(v34 + 16) = v18;
      *(v34 + 24) = v19;
      if ((String.isEmpty.getter() & 1) == 0)
      {
        v15 = **(v34 + 120);
        MEMORY[0x277D82BE0](v15);

        v14 = MEMORY[0x26D620690](v18, v19);

        [v15 setText_];
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v15);
      }
    }

    v13 = *(*(v34 + 48) + 8);

    return v13();
  }

  else
  {
    *(v34 + 200) = **(v34 + 128);

    Constants.PaymentAccountType.asCATIDForLoc.getter(v28);
    if (v3)
    {
      v23 = *(v34 + 144);
      String.toSpeakableString.getter();

      v4 = type metadata accessor for SpeakableString();
      (*(*(v4 - 8) + 56))(v23, 0, 1);
    }

    else
    {
      v21 = *(v34 + 144);
      v11 = type metadata accessor for SpeakableString();
      (*(*(v11 - 8) + 56))(v21, 1);
    }

    v22 = *(v34 + 136);
    v5 = type metadata accessor for SpeakableString();
    (*(*(v5 - 8) + 56))(v22, 1);
    v6 = swift_task_alloc();
    *(v34 + 208) = v6;
    *v6 = *(v34 + 48);
    v6[1] = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
    v7 = *(v34 + 168);
    v8 = *(v34 + 144);
    v9 = *(v34 + 136);

    return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v7, v8, v9);
  }
}

{
  v5 = *v1;
  v5[6] = *v1;
  v5[27] = v0;

  if (v0)
  {
    v2 = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
  }

  else
  {
    v4 = v5[18];
    outlined destroy of SpeakableString?(v5[17]);
    outlined destroy of SpeakableString?(v4);

    v2 = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[21];
  v4 = v0[20];
  v6 = v0[19];
  v7 = v0[15];
  v0[6] = v0;
  v8 = TemplatingResult.resultSectionsAsString.getter();
  v11 = v1;
  v0[4] = v8;
  v0[5] = v1;
  (*(v4 + 8))(v5, v6);
  v10 = *v7;
  MEMORY[0x277D82BE0](*v7);

  v9 = MEMORY[0x26D620690](v8, v11);

  [v10 setText_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);

  v2 = *(v0[6] + 8);

  return v2();
}

{
  v4 = v0[18];
  v1 = v0[17];
  v0[6] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  v2 = *(v0[6] + 8);

  return v2();
}

id implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 templateItems];
  v7 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    result = MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/SearchForAccountsViewBuilder.swift", 54, 2, 335, 0);
    __break(1u);
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for SearchForAccountsViewBuilding.buildSnippets(for:app:intent:) in conformance SearchForAccountsViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(a1, a2, a3);
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  v1 = lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20SAClientBoundCommand_p_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

unint64_t type metadata accessor for INPaymentAccount()
{
  v2 = lazy cache variable for type metadata for INPaymentAccount;
  if (!lazy cache variable for type metadata for INPaymentAccount)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INPaymentAccount);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType()
{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SASTViewTemplateAction()
{
  v2 = lazy cache variable for type metadata for SASTViewTemplateAction;
  if (!lazy cache variable for type metadata for SASTViewTemplateAction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTViewTemplateAction);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTPropertyListItem()
{
  v2 = lazy cache variable for type metadata for SASTPropertyListItem;
  if (!lazy cache variable for type metadata for SASTPropertyListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTPropertyListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SearchForAccountsViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchForAccountsViewBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *PayeeDisambiguationStrategy.__allocating_init()()
{
  v51 = implicit closure #1 in PayeeDisambiguationStrategy.init();
  v52 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v81 = 0;
  v76 = 0;
  v29 = 0;
  v43 = 0;
  v49 = type metadata accessor for Logger();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v30 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v45 = v20 - v30;
  v31 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v43, v1);
  v32 = v20 - v31;
  v39 = type metadata accessor for SendPaymentCATs(v2);
  default argument 0 of CATWrapper.init(options:globals:)();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  v81 = v41;
  v37 = type metadata accessor for Globals();
  v33 = v80;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v80);
  v34 = &v79;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v35 = &v78;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v36 = &v77;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v38 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v33, v34, v35, v36);
  v76 = v38;

  v42 = v75;
  v75[3] = v37;
  v75[4] = &protocol witness table for Globals;
  v75[0] = v38;
  v40 = type metadata accessor for INSendPaymentIntent();
  type metadata accessor for INSendPaymentIntentResponse();
  v44 = v74;
  default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(v74);
  v3 = PayeeDisambiguationStrategy.__allocating_init(catFamily:globals:mockGlobals:contactResolver:)(v41, v42, v43, v44);
  v4 = v45;
  v46 = v3;

  v82 = v46;
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v47 + 16))(v4, v5, v49);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v50 = 17;
  v54 = 7;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v6 = swift_allocObject();
  v55 = v6;
  *(v6 + 16) = v51;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v52;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v64 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v11;

  v12 = v59;
  v13 = v65;
  *v65 = v58;
  v13[1] = v12;

  v14 = v61;
  v15 = v65;
  v65[2] = v60;
  v15[3] = v14;

  v16 = v64;
  v17 = v65;
  v65[4] = v63;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v67, v68))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25 = &v73;
    v73 = v22;
    v26 = &v72;
    v72 = v23;
    v27 = &v71;
    v71 = v24;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, v25);
    v69 = v58;
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      v20[1] = 0;
      v69 = v63;
      v70 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_2686B1000, v67, v68, "#ContactDisambiguationStrategy<%s> init", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v67);
  (*(v47 + 8))(v45, v49);

  return v46;
}

void *PayerDisambiguationStrategy.__allocating_init()()
{
  v51 = implicit closure #1 in PayerDisambiguationStrategy.init();
  v52 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v81 = 0;
  v76 = 0;
  v29 = 0;
  v43 = 0;
  v49 = type metadata accessor for Logger();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v30 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v45 = v20 - v30;
  v31 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v43, v1);
  v32 = v20 - v31;
  v39 = type metadata accessor for RequestPaymentCATs(v2);
  default argument 0 of CATWrapper.init(options:globals:)();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  v81 = v41;
  v37 = type metadata accessor for Globals();
  v33 = v80;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v80);
  v34 = &v79;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v35 = &v78;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v36 = &v77;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v38 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v33, v34, v35, v36);
  v76 = v38;

  v42 = v75;
  v75[3] = v37;
  v75[4] = &protocol witness table for Globals;
  v75[0] = v38;
  v40 = type metadata accessor for INRequestPaymentIntent();
  type metadata accessor for INRequestPaymentIntentResponse();
  v44 = v74;
  default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(v74);
  v3 = PayeeDisambiguationStrategy.__allocating_init(catFamily:globals:mockGlobals:contactResolver:)(v41, v42, v43, v44);
  v4 = v45;
  v46 = v3;

  v82 = v46;
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v47 + 16))(v4, v5, v49);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v50 = 17;
  v54 = 7;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v6 = swift_allocObject();
  v55 = v6;
  *(v6 + 16) = v51;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v52;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v64 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v11;

  v12 = v59;
  v13 = v65;
  *v65 = v58;
  v13[1] = v12;

  v14 = v61;
  v15 = v65;
  v65[2] = v60;
  v15[3] = v14;

  v16 = v64;
  v17 = v65;
  v65[4] = v63;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v67, v68))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25 = &v73;
    v73 = v22;
    v26 = &v72;
    v72 = v23;
    v27 = &v71;
    v71 = v24;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, v25);
    v69 = v58;
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      v20[1] = 0;
      v69 = v63;
      v70 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_2686B1000, v67, v68, "#ContactDisambiguationStrategy<%s> init", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v67);
  (*(v47 + 8))(v45, v49);

  return v46;
}

uint64_t ContactDisambiguationStrategy.catFamily.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ContactDisambiguationStrategy.mockGlobals.getter()
{
  v2 = *(v0 + 64);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

void *ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v59 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v61 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v65 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v67 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v43 = 0;
  v57 = *v4;
  v53 = type metadata accessor for Logger();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v48 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v31 - v48;
  v50 = &v31 - v48;
  v92 = MEMORY[0x28223BE20](v47, v46);
  v56 = v57[12];
  v91 = v56;
  v90 = v6;
  v89 = v7;
  v88 = v8;
  v87 = v49;
  v54 = v57[10];
  v86 = v54;
  v55 = v57[11];
  v85 = v55;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v51 + 16))(v5, v9, v53);
  v63 = 7;
  v10 = swift_allocObject();
  v11 = v55;
  v12 = v56;
  v13 = v57;
  v60 = v10;
  v10[2] = v54;
  v10[3] = v11;
  v10[4] = v12;
  v10[5] = v13[13];
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  v58 = 17;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v62 = 32;
  v14 = swift_allocObject();
  v15 = v60;
  v64 = v14;
  *(v14 + 16) = v59;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v64;
  v66 = v16;
  *(v16 + 16) = v61;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v66;
  v73 = v18;
  *(v18 + 16) = v65;
  *(v18 + 24) = v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v71 = _allocateUninitializedArray<A>(_:)();
  v74 = v20;

  v21 = v68;
  v22 = v74;
  *v74 = v67;
  v22[1] = v21;

  v23 = v70;
  v24 = v74;
  v74[2] = v69;
  v24[3] = v23;

  v25 = v73;
  v26 = v74;
  v74[4] = v72;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v76, v77))
  {
    v27 = v43;
    v36 = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0, v35, v35);
    v38 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v39 = &v82;
    v82 = v36;
    v40 = &v81;
    v81 = v37;
    v41 = &v80;
    v80 = v38;
    serialize(_:at:)(2, &v82);
    serialize(_:at:)(1, v39);
    v78 = v67;
    v79 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v78, v39, v40, v41);
    v42 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v78 = v69;
      v79 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      v34 = 0;
      v78 = v72;
      v79 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_2686B1000, v76, v77, "#ContactDisambiguationStrategy<%s> init", v36, 0xCu);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v36, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v76);
  (*(v51 + 8))(v50, v53);

  v28 = v46;
  v49[2] = v47;
  v32 = v84;
  outlined init with copy of GlobalsProviding(v28, v84);
  outlined init with take of CommonLabelsProviding(v32, v49 + 3);
  MEMORY[0x277D82BE0](v44);
  v29 = v45;
  v49[8] = v44;
  v33 = v83;
  outlined init with copy of GlobalsProviding(v29, v83);
  outlined init with take of CommonLabelsProviding(v33, v49 + 9);
  __swift_destroy_boxed_opaque_existential_0(v45);
  MEMORY[0x277D82BD8](v44);
  __swift_destroy_boxed_opaque_existential_0(v46);

  return v49;
}

uint64_t ContactDisambiguationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v57 = a1;
  v56 = a2;
  v70 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v72 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v76 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v78 = partial apply for closure #1 in OSLogArguments.append(_:);
  v80 = partial apply for closure #1 in OSLogArguments.append(_:);
  v83 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v42 = 0;
  v67 = *v3;
  v50 = 0;
  v43 = type metadata accessor for Parse();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](0, v4);
  v47 = v32 - v46;
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v32 - v46);
  v49 = v32 - v48;
  v51 = type metadata accessor for USOParse();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v7);
  v55 = v32 - v54;
  v98 = v32 - v54;
  v63 = type metadata accessor for Logger();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v58 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v57, v56);
  v9 = v32 - v58;
  v60 = v32 - v58;
  v97 = v8;
  v96 = v10;
  v64 = v67[10];
  v95 = v64;
  v94 = v59;
  v65 = v67[11];
  v93[2] = v65;
  v66 = v67[12];
  v93[1] = v66;
  v11 = Logger.payments.unsafeMutableAddressor();
  (*(v61 + 16))(v9, v11, v63);
  v74 = 7;
  v12 = swift_allocObject();
  v13 = v65;
  v14 = v66;
  v15 = v67;
  v71 = v12;
  v12[2] = v64;
  v12[3] = v13;
  v12[4] = v14;
  v68 = v15[13];
  v12[5] = v68;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  v69 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v73 = 32;
  v16 = swift_allocObject();
  v17 = v71;
  v75 = v16;
  *(v16 + 16) = v70;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v75;
  v77 = v18;
  *(v18 + 16) = v72;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v77;
  v84 = v20;
  *(v20 + 16) = v76;
  *(v20 + 24) = v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v82 = _allocateUninitializedArray<A>(_:)();
  v85 = v22;

  v23 = v79;
  v24 = v85;
  *v85 = v78;
  v24[1] = v23;

  v25 = v81;
  v26 = v85;
  v85[2] = v80;
  v26[3] = v25;

  v27 = v84;
  v28 = v85;
  v85[4] = v83;
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v87, v88))
  {
    v29 = v42;
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0, v33, v33);
    v36 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = v93;
    v93[0] = v34;
    v38 = &v92;
    v92 = v35;
    v39 = &v91;
    v91 = v36;
    serialize(_:at:)(2, v93);
    serialize(_:at:)(1, v37);
    v89 = v78;
    v90 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v89, v37, v38, v39);
    v40 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v89 = v80;
      v90 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v89, v93, &v92, &v91);
      v32[1] = 0;
      v89 = v83;
      v90 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v89, v93, &v92, &v91);
      _os_log_impl(&dword_2686B1000, v87, v88, "#ContactDisambiguationStrategy<%s> actionForInput", v34, 0xCu);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  (*(v61 + 8))(v60, v63);
  Input.parse.getter();
  if ((*(v44 + 88))(v49, v43) == *MEMORY[0x277D5C160])
  {
    v30 = v55;
    (*(v44 + 96))(v49, v43);
    (*(v52 + 32))(v30, v49, v51);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      static ActionForInput.handle()();
      return (*(v52 + 8))(v55, v51);
    }

    (*(v52 + 8))(v55, v51);
  }

  else
  {
    (*(v44 + 8))(v49, v43);
  }

  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v47, v64, *(v68 + 8), v41);
  return (*(v44 + 8))(v47, v43);
}

uint64_t ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v9 = *v1;
  v2[8] = *v1;
  v2[9] = v9[10];
  v3 = type metadata accessor for ParameterResolutionRecord();
  v2[10] = v3;
  v6 = *(v3 - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v2[18] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v7;
  v2[19] = v9[11];
  v2[20] = v9[12];

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v90 = v0;
  v60 = v0[20];
  v59 = v0[19];
  v52 = v0[18];
  v1 = v0[17];
  v53 = v0[15];
  v54 = v0[14];
  v64 = v0[13];
  v62 = v0[11];
  v65 = v0[10];
  v58 = v0[9];
  v56 = v0[8];
  v57 = v0[7];
  v0[2] = v0;
  v2 = SignpostName.makeDisambiguationItemContainer.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v52);
  v3 = Logger.payments.unsafeMutableAddressor();
  v55 = *(v53 + 16);
  v55(v1, v3, v54);
  v66 = swift_allocObject();
  v66[2] = v58;
  v66[3] = v59;
  v66[4] = v60;
  v61 = *(v56 + 104);
  v66[5] = v61;
  (*(v62 + 16))(v64, v57, v65);
  v63 = (*(v62 + 80) + 48) & ~*(v62 + 80);
  v69 = swift_allocObject();
  *(v69 + 2) = v58;
  *(v69 + 3) = v59;
  *(v69 + 4) = v60;
  *(v69 + 5) = v61;
  (*(v62 + 32))(&v69[v63], v64, v65);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v67 + 24) = v66;
  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v68 + 24) = v67;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v73 + 24) = v68;
  v74 = swift_allocObject();
  *(v74 + 16) = 64;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v70 = swift_allocObject();
  *(v70 + 16) = partial apply for implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:);
  *(v70 + 24) = v69;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v76 + 24) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v77 = v4;

  *v77 = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[1] = v71;

  v77[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[3] = v72;

  v77[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[5] = v73;

  v77[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[7] = v74;

  v77[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[9] = v75;

  v77[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[11] = v76;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v79))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = createStorage<A>(capacity:type:)(1, v47, v47);
    v50 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v85 = buf;
    v86 = v49;
    v87 = v50;
    serialize(_:at:)(2, &v85);
    serialize(_:at:)(2, &v85);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v71;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_2686B1000, v78, v79, "#ContactDisambiguationStrategy<%s> Intent resolution result: %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v49, 1, v47);
    destroyStorage<A>(_:count:)(v50, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v41 = v51[17];
  v42 = v51[14];
  v40 = v51[15];
  MEMORY[0x277D82BD8](v78);
  v43 = *(v40 + 8);
  v43(v41, v42);
  v45 = ParameterResolutionRecord.result.getter();
  v44 = [v45 disambiguationItems];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v45);
  type metadata accessor for INPerson();
  v46 = _arrayConditionalCast<A, B>(_:)();
  if (v46)
  {
    v24 = v51[20];
    v23 = v51[19];
    v5 = v51[16];
    v21 = v51[14];
    v22 = v51[9];
    v51[5] = v46;

    MEMORY[0x277D82BD8](v44);
    v6 = Logger.payments.unsafeMutableAddressor();
    v55(v5, v6, v21);
    v26 = swift_allocObject();
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v24;
    v26[5] = v61;

    v25 = swift_allocObject();
    *(v25 + 16) = v46;

    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v29 + 24) = v25;

    oslog = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v28 + 24) = v27;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v33 + 24) = v28;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
    *(v30 + 24) = v29;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v36 + 24) = v30;
    _allocateUninitializedArray<A>(_:)();
    v37 = v7;

    *v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[1] = v31;

    v37[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v32;

    v37[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[5] = v33;

    v37[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[7] = v34;

    v37[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[9] = v35;

    v37[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[11] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v39))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v80 = v18;
      v81 = v19;
      v82 = v20;
      serialize(_:at:)(2, &v80);
      serialize(_:at:)(2, &v80);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v31;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      _os_log_impl(&dword_2686B1000, oslog, v39, "#ContactDisambiguationStrategy<%s> INPersons retrieved from disambiguation items: %s", v18, 0x16u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v18, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = v51[16];
    v16 = v51[14];
    MEMORY[0x277D82BD8](oslog);
    v43(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
    v51[6] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    Sequence.sorted(by:)();
    v13 = v51[18];
    v14 = BasicDisambiguationItemContainer.__allocating_init(_:_:)();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v13);

    v8 = *(v51[2] + 8);

    return v8(v14);
  }

  else
  {
    v12 = v51[18];

    MEMORY[0x277D82BD8](v44);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 17;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v12);

    v11 = *(v51[2] + 8);

    return v11();
  }
}

uint64_t closure #1 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(id *a1, id *a2)
{
  v5 = *a2;
  v9 = [*a1 0x1FB359778];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v2;
  v7 = [v5 0x1FB359778];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x26D620720](v6, v8, v3);

  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v9);
  return v10 & 1;
}

uint64_t ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = v4;
  v5[59] = a4;
  v5[58] = a3;
  v5[57] = a2;
  v5[56] = a1;
  v5[33] = v5;
  v5[34] = 0;
  v5[35] = 0;
  v5[36] = 0;
  v5[37] = 0;
  v5[38] = 0;
  v5[40] = 0;
  v5[43] = 0;
  v5[44] = 0;
  v5[47] = 0;
  v5[49] = 0;
  v5[50] = 0;
  v5[51] = 0;
  v5[53] = 0;
  v5[54] = 0;
  v5[31] = 0;
  v5[32] = 0;
  v5[55] = 0;
  v19 = *v4;
  v5[61] = *v4;
  v5[62] = v19[10];
  v6 = type metadata accessor for IntentPromptAnswer();
  v5[63] = v6;
  v5[64] = *(v6 - 8);
  v5[65] = swift_task_alloc();
  v7 = type metadata accessor for ParameterIdentifier();
  v5[66] = v7;
  v5[67] = *(v7 - 8);
  v5[68] = swift_task_alloc();
  v8 = type metadata accessor for PersonNameComponents();
  v5[69] = v8;
  v5[70] = *(v8 - 8);
  v5[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v5[75] = v9;
  v14 = *(v9 - 8);
  v5[76] = v14;
  v5[77] = *(v14 + 64);
  v5[78] = swift_task_alloc();
  v10 = type metadata accessor for Parse.DirectInvocation();
  v5[79] = v10;
  v5[80] = *(v10 - 8);
  v5[81] = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  v5[82] = v11;
  v5[83] = *(v11 - 8);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[87] = v12;
  v5[88] = *(v12 - 8);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v5[99] = swift_task_alloc();
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = a4;
  v5[37] = v18;
  v5[100] = v19[11];
  v5[101] = v19[12];

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v453 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v389 = *(v2 + 808);
  v388 = *(v2 + 800);
  v383 = *(v2 + 792);
  v3 = *(v2 + 784);
  v384 = *(v2 + 704);
  v385 = *(v2 + 696);
  v387 = *(v2 + 496);
  v390 = *(v2 + 488);
  *(v2 + 264) = v2;
  v4 = SignpostName.parseDisambiguationResult.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v4, v4[1], *(v4 + 16), v383);
  v5 = Logger.payments.unsafeMutableAddressor();
  v386 = *(v384 + 16);
  v386(v3, v5, v385);
  v392 = swift_allocObject();
  v392[2] = v387;
  v392[3] = v388;
  v392[4] = v389;
  v391 = *(v390 + 104);
  v392[5] = v391;
  oslog = Logger.logObject.getter();
  v400 = static os_log_type_t.debug.getter();
  v395 = swift_allocObject();
  *(v395 + 16) = 32;
  v396 = swift_allocObject();
  *(v396 + 16) = 8;
  v393 = swift_allocObject();
  *(v393 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v393 + 24) = v392;
  v394 = swift_allocObject();
  *(v394 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v394 + 24) = v393;
  v397 = swift_allocObject();
  *(v397 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v397 + 24) = v394;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v398 = v6;

  *v398 = partial apply for closure #1 in OSLogArguments.append(_:);
  v398[1] = v395;

  v398[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v398[3] = v396;

  v398[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v398[5] = v397;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v400))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v381 = createStorage<A>(capacity:type:)(0, v379, v379);
    v382 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v448 = buf;
    v449 = v381;
    v450 = v382;
    serialize(_:at:)(2, &v448);
    serialize(_:at:)(1, &v448);
    v451 = partial apply for closure #1 in OSLogArguments.append(_:);
    v452 = v395;
    closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
    v451 = partial apply for closure #1 in OSLogArguments.append(_:);
    v452 = v396;
    closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
    v451 = partial apply for closure #1 in OSLogArguments.append(_:);
    v452 = v397;
    closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
    _os_log_impl(&dword_2686B1000, oslog, v400, "#ContactDisambiguationStrategy<%s> Running parseDisambiguationResult()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v381, 0, v379);
    destroyStorage<A>(_:count:)(v382, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v369 = *(v2 + 784);
  v370 = *(v2 + 696);
  v377 = *(v2 + 688);
  v378 = *(v2 + 656);
  v368 = *(v2 + 704);
  v376 = *(v2 + 664);
  MEMORY[0x277D82BD8](oslog);
  v371 = *(v368 + 8);
  v371(v369, v370);
  v372 = swift_allocObject();
  *(v2 + 304) = v372 + 16;
  *(v372 + 16) = 0;
  *(v372 + 24) = 0;
  *(v2 + 312) = 0;
  v374 = PaginatedItemContainer.items.getter();
  v373 = type metadata accessor for INPerson();
  v375 = MEMORY[0x26D620910](v374);
  *(v2 + 320) = v375;

  Input.parse.getter();
  if ((*(v376 + 88))(v377, v378) != *MEMORY[0x277D5C150])
  {
    v299 = *(v2 + 680);
    v300 = *(v2 + 656);
    v297 = *(v2 + 480);
    v298 = *(v2 + 664);
    Input.parse.getter();
    outlined init with copy of GlobalsProviding(v297 + 24, v2 + 16);
    v296 = *(v2 + 40);
    v295 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), v296);
    (*(v295 + 24))(v296);
    outlined init with copy of GlobalsProviding(v297 + 72, v2 + 96);
    v302 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v2 + 56, v2 + 96);
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v301 = *(v298 + 8);
    v301(v299, v300);
    if (v302)
    {
      v294 = swift_dynamicCastUnknownClass();
      if (v294)
      {
        v293 = v294;
      }

      else
      {
        MEMORY[0x277D82BD8](v302);
        v293 = 0;
      }

      v292 = v293;
    }

    else
    {
      v292 = 0;
    }

    if (v292)
    {
      v277 = *(v2 + 808);
      v276 = *(v2 + 800);
      v17 = *(v2 + 760);
      v274 = *(v2 + 696);
      v275 = *(v2 + 496);
      *(v2 + 424) = v292;
      v18 = Logger.payments.unsafeMutableAddressor();
      v386(v17, v18, v274);
      v278 = swift_allocObject();
      v278[2] = v275;
      v278[3] = v276;
      v278[4] = v277;
      v278[5] = v391;
      MEMORY[0x277D82BE0](v292);
      v281 = swift_allocObject();
      v281[2] = v275;
      v281[3] = v276;
      v281[4] = v277;
      v281[5] = v391;
      v281[6] = v292;
      v290 = Logger.logObject.getter();
      v291 = static os_log_type_t.debug.getter();
      v283 = swift_allocObject();
      *(v283 + 16) = 32;
      v284 = swift_allocObject();
      *(v284 + 16) = 8;
      v279 = swift_allocObject();
      *(v279 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v279 + 24) = v278;
      v280 = swift_allocObject();
      *(v280 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v280 + 24) = v279;
      v285 = swift_allocObject();
      *(v285 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v285 + 24) = v280;
      v286 = swift_allocObject();
      *(v286 + 16) = 32;
      v287 = swift_allocObject();
      *(v287 + 16) = 8;
      v282 = swift_allocObject();
      *(v282 + 16) = partial apply for implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
      *(v282 + 24) = v281;
      v288 = swift_allocObject();
      *(v288 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v288 + 24) = v282;
      _allocateUninitializedArray<A>(_:)();
      v289 = v19;

      *v289 = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[1] = v283;

      v289[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[3] = v284;

      v289[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[5] = v285;

      v289[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[7] = v286;

      v289[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[9] = v287;

      v289[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v289[11] = v288;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v290, v291))
      {
        v271 = static UnsafeMutablePointer.allocate(capacity:)();
        v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v272 = createStorage<A>(capacity:type:)(0, v270, v270);
        v273 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v433 = v271;
        v434 = v272;
        v435 = v273;
        serialize(_:at:)(2, &v433);
        serialize(_:at:)(2, &v433);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v283;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v284;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v285;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v286;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v287;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        v436 = partial apply for closure #1 in OSLogArguments.append(_:);
        v437 = v288;
        closure #1 in osLogInternal(_:log:type:)(&v436, &v433, &v434, &v435);
        _os_log_impl(&dword_2686B1000, v290, v291, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, Intent: %s", v271, 0x16u);
        destroyStorage<A>(_:count:)(v272, 0, v270);
        destroyStorage<A>(_:count:)(v273, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v271, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v268 = *(v2 + 760);
      v269 = *(v2 + 696);
      MEMORY[0x277D82BD8](v290);
      v371(v268, v269);
      Input.parse.getter();
      v21 = Parse.toContactId()();
      v301(*(v2 + 672), *(v2 + 656));
      if (v20)
      {

        v267._countAndFlagsBits = 0;
        v267._object = 0;
      }

      else
      {
        v267 = v21;
      }

      *(v372 + 16) = v267;

      MEMORY[0x277D82BD8](v292);
    }

    v301(*(v2 + 688), *(v2 + 656));
    v303 = 0;
    v304 = 1;
    goto LABEL_33;
  }

  v362 = *(v2 + 688);
  v364 = *(v2 + 648);
  v363 = *(v2 + 632);
  v361 = *(v2 + 640);
  (*(*(v2 + 664) + 96))();
  (*(v361 + 32))(v364, v362, v363);
  *(v2 + 432) = v364;
  v365 = static PaymentsDirectInvocations.from(_:)(v364);
  v366 = v8;
  v367 = v7;
  if (v7 == 255)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    v328 = *(v2 + 808);
    v327 = *(v2 + 800);
    v12 = *(v2 + 776);
    v325 = *(v2 + 696);
    v326 = *(v2 + 496);
    *(v2 + 440) = v365;
    v13 = Logger.payments.unsafeMutableAddressor();
    v386(v12, v13, v325);
    v329 = swift_allocObject();
    v329[2] = v326;
    v329[3] = v327;
    v329[4] = v328;
    v329[5] = v391;
    v332 = swift_allocObject();
    *(v332 + 16) = v365;
    log = Logger.logObject.getter();
    v342 = static os_log_type_t.debug.getter();
    v334 = swift_allocObject();
    *(v334 + 16) = 32;
    v335 = swift_allocObject();
    *(v335 + 16) = 8;
    v330 = swift_allocObject();
    *(v330 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v330 + 24) = v329;
    v331 = swift_allocObject();
    *(v331 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v331 + 24) = v330;
    v336 = swift_allocObject();
    *(v336 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v336 + 24) = v331;
    v337 = swift_allocObject();
    *(v337 + 16) = 0;
    v338 = swift_allocObject();
    *(v338 + 16) = 8;
    v333 = swift_allocObject();
    *(v333 + 16) = partial apply for implicit closure #21 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
    *(v333 + 24) = v332;
    v339 = swift_allocObject();
    *(v339 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v339 + 24) = v333;
    _allocateUninitializedArray<A>(_:)();
    v340 = v14;

    *v340 = partial apply for closure #1 in OSLogArguments.append(_:);
    v340[1] = v334;

    v340[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v340[3] = v335;

    v340[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v340[5] = v336;

    v340[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v340[7] = v337;

    v340[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v340[9] = v338;

    v340[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v340[11] = v339;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v342))
    {
      v322 = static UnsafeMutablePointer.allocate(capacity:)();
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v323 = createStorage<A>(capacity:type:)(0, v321, v321);
      v324 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v443 = v322;
      v444 = v323;
      v445 = v324;
      serialize(_:at:)(2, &v443);
      serialize(_:at:)(2, &v443);
      v446 = partial apply for closure #1 in OSLogArguments.append(_:);
      v447 = v334;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      v446 = partial apply for closure #1 in OSLogArguments.append(_:);
      v447 = v335;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      v446 = partial apply for closure #1 in OSLogArguments.append(_:);
      v447 = v336;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      v446 = partial apply for closure #1 in OSLogArguments.append(_:);
      v447 = v337;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      v446 = partial apply for closure #1 in OSLogArguments.append(_:);
      v447 = v338;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      v446 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v447 = v339;
      closure #1 in osLogInternal(_:log:type:)(&v446, &v443, &v444, &v445);
      _os_log_impl(&dword_2686B1000, log, v342, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, personDisambiguation DI selected index: %ld", v322, 0x16u);
      destroyStorage<A>(_:count:)(v323, 0, v321);
      destroyStorage<A>(_:count:)(v324, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v322, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v317 = *(v2 + 776);
    v318 = *(v2 + 696);
    MEMORY[0x277D82BD8](log);
    v371(v317, v318);
    outlined consume of PaymentsDirectInvocations?(v365, v366, 0);
    v319 = v365;
    v320 = 0;
    goto LABEL_17;
  }

  if (v7 != 2)
  {
LABEL_16:
    v310 = *(v2 + 792);
    v308 = *(v2 + 648);
    v309 = *(v2 + 632);
    v307 = *(v2 + 640);
    v306 = Parse.DirectInvocation.identifier.getter();
    v305 = v15;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v306;
    *(v16 + 8) = v305;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    swift_willThrow();
    outlined consume of PaymentsDirectInvocations?(v365, v366, v367);
    (*(v307 + 8))(v308, v309);
    outlined destroy of SFRichText?((v2 + 312));

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v310);
    goto LABEL_105;
  }

  v346 = *(v2 + 808);
  v345 = *(v2 + 800);
  v9 = *(v2 + 768);
  v343 = *(v2 + 696);
  v344 = *(v2 + 496);

  *(v2 + 248) = v365;
  *(v2 + 256) = v366;
  v10 = Logger.payments.unsafeMutableAddressor();
  v386(v9, v10, v343);
  v347 = swift_allocObject();
  v347[2] = v344;
  v347[3] = v345;
  v347[4] = v346;
  v347[5] = v391;

  v350 = swift_allocObject();
  *(v350 + 16) = v365;
  *(v350 + 24) = v366;
  v359 = Logger.logObject.getter();
  v360 = static os_log_type_t.debug.getter();
  v352 = swift_allocObject();
  *(v352 + 16) = 32;
  v353 = swift_allocObject();
  *(v353 + 16) = 8;
  v348 = swift_allocObject();
  *(v348 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v348 + 24) = v347;
  v349 = swift_allocObject();
  *(v349 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v349 + 24) = v348;
  v354 = swift_allocObject();
  *(v354 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v354 + 24) = v349;
  v355 = swift_allocObject();
  *(v355 + 16) = 32;
  v356 = swift_allocObject();
  *(v356 + 16) = 8;
  v351 = swift_allocObject();
  *(v351 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v351 + 24) = v350;
  v357 = swift_allocObject();
  *(v357 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v357 + 24) = v351;
  _allocateUninitializedArray<A>(_:)();
  v358 = v11;

  *v358 = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[1] = v352;

  v358[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[3] = v353;

  v358[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[5] = v354;

  v358[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[7] = v355;

  v358[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[9] = v356;

  v358[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v358[11] = v357;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v359, v360))
  {
    v314 = static UnsafeMutablePointer.allocate(capacity:)();
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v315 = createStorage<A>(capacity:type:)(0, v313, v313);
    v316 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v438 = v314;
    v439 = v315;
    v440 = v316;
    serialize(_:at:)(2, &v438);
    serialize(_:at:)(2, &v438);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v352;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v353;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v354;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v355;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v356;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    v441 = partial apply for closure #1 in OSLogArguments.append(_:);
    v442 = v357;
    closure #1 in osLogInternal(_:log:type:)(&v441, &v438, &v439, &v440);
    _os_log_impl(&dword_2686B1000, v359, v360, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, contactPicker DI selected id: %s", v314, 0x16u);
    destroyStorage<A>(_:count:)(v315, 0, v313);
    destroyStorage<A>(_:count:)(v316, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v314, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v311 = *(v2 + 768);
  v312 = *(v2 + 696);
  MEMORY[0x277D82BD8](v359);
  v371(v311, v312);

  *(v372 + 16) = v365;
  *(v372 + 24) = v366;

  outlined consume of PaymentsDirectInvocations?(v365, v366, v367);
  v319 = 0;
  v320 = 1;
LABEL_17:
  (*(*(v2 + 640) + 8))(*(v2 + 648), *(v2 + 632));
  v303 = v319;
  v304 = v320;
LABEL_33:
  v22 = *(v2 + 752);
  v249 = *(v2 + 696);
  v253 = *(v2 + 624);
  v254 = *(v2 + 600);
  v251 = *(v2 + 464);
  v250 = *(v2 + 608);
  v23 = Logger.payments.unsafeMutableAddressor();
  v386(v22, v23, v249);

  (*(v250 + 16))(v253, v251, v254);
  v252 = (*(v250 + 80) + 16) & ~*(v250 + 80);
  v256 = swift_allocObject();
  (*(v250 + 32))(v256 + v252, v253, v254);
  v265 = Logger.logObject.getter();
  v266 = static os_log_type_t.debug.getter();
  v258 = swift_allocObject();
  *(v258 + 16) = 32;
  v259 = swift_allocObject();
  *(v259 + 16) = 8;
  v255 = swift_allocObject();
  *(v255 + 16) = partial apply for implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v255 + 24) = v372;
  v260 = swift_allocObject();
  *(v260 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v260 + 24) = v255;
  v261 = swift_allocObject();
  *(v261 + 16) = 32;
  v262 = swift_allocObject();
  *(v262 + 16) = 8;
  v257 = swift_allocObject();
  *(v257 + 16) = partial apply for implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v257 + 24) = v256;
  v263 = swift_allocObject();
  *(v263 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v263 + 24) = v257;
  _allocateUninitializedArray<A>(_:)();
  v264 = v24;

  *v264 = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[1] = v258;

  v264[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[3] = v259;

  v264[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[5] = v260;

  v264[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[7] = v261;

  v264[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[9] = v262;

  v264[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v264[11] = v263;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v265, v266))
  {
    v246 = static UnsafeMutablePointer.allocate(capacity:)();
    v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v247 = createStorage<A>(capacity:type:)(0, v245, v245);
    v248 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v428 = v246;
    v429 = v247;
    v430 = v248;
    serialize(_:at:)(2, &v428);
    serialize(_:at:)(2, &v428);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v258;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v259;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v260;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v261;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v262;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    v431 = partial apply for closure #1 in OSLogArguments.append(_:);
    v432 = v263;
    closure #1 in osLogInternal(_:log:type:)(&v431, &v428, &v429, &v430);
    _os_log_impl(&dword_2686B1000, v265, v266, "comparing personId %s to paginatedItems: %s", v246, 0x16u);
    destroyStorage<A>(_:count:)(v247, 0, v245);
    destroyStorage<A>(_:count:)(v248, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v246, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v243 = *(v2 + 752);
  v244 = *(v2 + 696);
  MEMORY[0x277D82BD8](v265);
  v371(v243, v244);
  if ((v304 & 1) != 0 || (*(v2 + 408) = v303, v303 < 0) || v303 >= v375)
  {
    *(v2 + 336) = PaginatedItemContainer.items.getter();
    *(swift_task_alloc() + 16) = v372 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    Sequence.first(where:)();

    outlined destroy of [SFCardSection]((v2 + 336));
    v216 = *(v2 + 328);
    if (v216)
    {
      v201 = *(v2 + 808);
      v200 = *(v2 + 800);
      v28 = *(v2 + 736);
      v198 = *(v2 + 696);
      v199 = *(v2 + 496);
      *(v2 + 400) = v216;
      MEMORY[0x277D82BE0](v216);
      MEMORY[0x277D82BE0](v216);
      v29 = *(v2 + 312);
      *(v2 + 312) = v216;
      MEMORY[0x277D82BD8](v29);
      v30 = Logger.payments.unsafeMutableAddressor();
      v386(v28, v30, v198);
      v202 = swift_allocObject();
      v202[2] = v199;
      v202[3] = v200;
      v202[4] = v201;
      v202[5] = v391;
      v205 = swift_allocObject();
      *(v205 + 16) = v216;
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.debug.getter();
      v207 = swift_allocObject();
      *(v207 + 16) = 32;
      v208 = swift_allocObject();
      *(v208 + 16) = 8;
      v203 = swift_allocObject();
      *(v203 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v203 + 24) = v202;
      v204 = swift_allocObject();
      *(v204 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v204 + 24) = v203;
      v209 = swift_allocObject();
      *(v209 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v209 + 24) = v204;
      v210 = swift_allocObject();
      *(v210 + 16) = 32;
      v211 = swift_allocObject();
      *(v211 + 16) = 8;
      v206 = swift_allocObject();
      *(v206 + 16) = partial apply for specialized implicit closure #13 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
      *(v206 + 24) = v205;
      v212 = swift_allocObject();
      *(v212 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v212 + 24) = v206;
      _allocateUninitializedArray<A>(_:)();
      v213 = v31;

      *v213 = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[1] = v207;

      v213[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[3] = v208;

      v213[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[5] = v209;

      v213[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[7] = v210;

      v213[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[9] = v211;

      v213[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v213[11] = v212;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v214, v215))
      {
        v195 = static UnsafeMutablePointer.allocate(capacity:)();
        v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v196 = createStorage<A>(capacity:type:)(0, v194, v194);
        v197 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v418 = v195;
        v419 = v196;
        v420 = v197;
        serialize(_:at:)(2, &v418);
        serialize(_:at:)(2, &v418);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v207;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v208;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v209;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v210;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v211;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        v421 = partial apply for closure #1 in OSLogArguments.append(_:);
        v422 = v212;
        closure #1 in osLogInternal(_:log:type:)(&v421, &v418, &v419, &v420);
        _os_log_impl(&dword_2686B1000, v214, v215, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, selected person by ID: %s", v195, 0x16u);
        destroyStorage<A>(_:count:)(v196, 0, v194);
        destroyStorage<A>(_:count:)(v197, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v195, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v192 = *(v2 + 736);
      v193 = *(v2 + 696);
      MEMORY[0x277D82BD8](v214);
      v371(v192, v193);
      MEMORY[0x277D82BD8](v216);
    }
  }

  else
  {
    v227 = *(v2 + 808);
    v226 = *(v2 + 800);
    v223 = *(v2 + 744);
    v224 = *(v2 + 696);
    v225 = *(v2 + 496);
    PaginatedItemContainer.items.getter();
    Array.subscript.getter();
    v228 = *(v2 + 416);

    MEMORY[0x277D82BE0](v228);
    v25 = *(v2 + 312);
    *(v2 + 312) = v228;
    MEMORY[0x277D82BD8](v25);
    v26 = Logger.payments.unsafeMutableAddressor();
    v386(v223, v26, v224);
    v229 = swift_allocObject();
    v229[2] = v225;
    v229[3] = v226;
    v229[4] = v227;
    v229[5] = v391;
    v232 = swift_allocObject();
    *(v232 + 16) = v228;
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.debug.getter();
    v234 = swift_allocObject();
    *(v234 + 16) = 32;
    v235 = swift_allocObject();
    *(v235 + 16) = 8;
    v230 = swift_allocObject();
    *(v230 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v230 + 24) = v229;
    v231 = swift_allocObject();
    *(v231 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v231 + 24) = v230;
    v236 = swift_allocObject();
    *(v236 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v236 + 24) = v231;
    v237 = swift_allocObject();
    *(v237 + 16) = 32;
    v238 = swift_allocObject();
    *(v238 + 16) = 8;
    v233 = swift_allocObject();
    *(v233 + 16) = partial apply for specialized implicit closure #13 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
    *(v233 + 24) = v232;
    v239 = swift_allocObject();
    *(v239 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v239 + 24) = v233;
    _allocateUninitializedArray<A>(_:)();
    v240 = v27;

    *v240 = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[1] = v234;

    v240[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[3] = v235;

    v240[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[5] = v236;

    v240[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[7] = v237;

    v240[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[9] = v238;

    v240[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v240[11] = v239;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v241, v242))
    {
      v220 = static UnsafeMutablePointer.allocate(capacity:)();
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v221 = createStorage<A>(capacity:type:)(0, v219, v219);
      v222 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v423 = v220;
      v424 = v221;
      v425 = v222;
      serialize(_:at:)(2, &v423);
      serialize(_:at:)(2, &v423);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v234;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v235;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v236;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v237;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v238;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      v426 = partial apply for closure #1 in OSLogArguments.append(_:);
      v427 = v239;
      closure #1 in osLogInternal(_:log:type:)(&v426, &v423, &v424, &v425);
      _os_log_impl(&dword_2686B1000, v241, v242, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, selected participant ordinally or by direct invocation: %s", v220, 0x16u);
      destroyStorage<A>(_:count:)(v221, 0, v219);
      destroyStorage<A>(_:count:)(v222, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v220, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v217 = *(v2 + 744);
    v218 = *(v2 + 696);
    MEMORY[0x277D82BD8](v241);
    v371(v217, v218);
  }

  swift_beginAccess();
  v191 = *(v2 + 312);
  MEMORY[0x277D82BE0](v191);
  swift_endAccess();
  if (v191)
  {
    MEMORY[0x277D82BE0](v191);
    *(v2 + 344) = v191;
    v190 = [v191 personHandle];
    if (v190)
    {
      *(v2 + 392) = v190;
      MEMORY[0x277D82BD8](v191);
      MEMORY[0x277D82BE0](v190);
      v188 = *(v2 + 344);
      MEMORY[0x277D82BE0](v188);
      MEMORY[0x277D82BE0](v188);
      v189 = [v188 nameComponents];
      if (v189)
      {
        v187 = *(v2 + 592);
        v185 = *(v2 + 568);
        v186 = *(v2 + 552);
        v184 = *(v2 + 560);
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v184 + 32))(v187, v185, v186);
        (*(v184 + 56))(v187, 0, 1, v186);
        MEMORY[0x277D82BD8](v189);
      }

      else
      {
        (*(*(v2 + 560) + 56))(*(v2 + 592), 1, 1, *(v2 + 552));
      }

      MEMORY[0x277D82BD8](v188);
      MEMORY[0x277D82BE0](v188);
      v183 = [v188 nameComponents];
      if (v183)
      {
        v182 = *(v2 + 576);
        v180 = *(v2 + 568);
        v181 = *(v2 + 552);
        v179 = *(v2 + 560);
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v179 + 32))(v182, v180, v181);
        (*(v179 + 56))(v182, 0, 1, v181);
        MEMORY[0x277D82BD8](v183);
      }

      else
      {
        (*(*(v2 + 560) + 56))(*(v2 + 576), 1, 1, *(v2 + 552));
      }

      v178 = *(v2 + 584);
      v177 = *(v2 + 552);
      v176 = *(v2 + 560);
      outlined init with take of PersonNameComponents?(*(v2 + 576), v178);
      if ((*(v176 + 48))(v178, 1, v177))
      {
        outlined destroy of PersonNameComponents?(*(v2 + 584));
        MEMORY[0x277D82BD8](v188);
        v175._countAndFlagsBits = 0;
        v175._object = 0;
      }

      else
      {
        v171 = *(v2 + 584);
        v173 = *(v2 + 568);
        v174 = *(v2 + 552);
        v172 = *(v2 + 560);
        (*(v172 + 16))(v173);
        outlined destroy of PersonNameComponents?(v171);
        MEMORY[0x277D82BD8](v188);
        v32 = PersonNameComponents.formatted()();
        (*(v172 + 8))(v173, v174);
        v175 = v32;
      }

      *(v2 + 232) = v175;
      if (*(v2 + 240))
      {
        v33 = *(v2 + 240);
        *(v2 + 216) = *(v2 + 232);
        *(v2 + 224) = v33;
      }

      else
      {
        v34 = String.EMPTY.unsafeMutableAddressor();
        outlined init with copy of String(v34, (v2 + 216));
        if (*(v2 + 240))
        {
          outlined destroy of String.UTF8View(v2 + 232);
        }
      }

      v167 = *(v2 + 216);
      v168 = *(v2 + 224);
      v169 = [v188 image];
      MEMORY[0x277D82BE0](v188);
      v170 = [v188 contactIdentifier];
      if (v170)
      {
        v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v164 = v35;
        MEMORY[0x277D82BD8](v170);
        v165 = v163;
        v166 = v164;
      }

      else
      {
        v165 = 0;
        v166 = 0;
      }

      MEMORY[0x277D82BD8](v188);
      v162 = [v188 customIdentifier];
      if (v162)
      {
        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v159 = v36;
        MEMORY[0x277D82BD8](v162);
        v160 = v158;
        v161 = v159;
      }

      else
      {
        v160 = 0;
        v161 = 0;
      }

      v157 = *(v2 + 592);
      MEMORY[0x277D82BD8](v188);
      v37 = INPerson.__allocating_init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v190, v157, v167, v168, v169, v165, v166, v160, v161);
      v38 = *(v2 + 344);
      *(v2 + 344) = v37;
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v190);
    }

    else
    {
      MEMORY[0x277D82BD8](v191);
    }

    v154 = *(v2 + 496);
    type metadata accessor for ParameterResolutionRecord();
    v155 = ParameterResolutionRecord.intent.getter();
    v156 = (*(v391 + 16))(v154);
    MEMORY[0x277D82BD8](v155);
    if (v156)
    {
      v153 = [v156 siriMatches];
      if (v153)
      {
        v151 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v153);
        v152 = v151;
      }

      else
      {
        v152 = 0;
      }

      MEMORY[0x277D82BD8](v156);
      v150 = v152;
    }

    else
    {
      v150 = 0;
    }

    *(v2 + 360) = v150;
    if (*(v2 + 360))
    {
      v148 = *(v2 + 360);

      *(v2 + 352) = v148;
      v149 = v148;
    }

    else
    {
      v147 = Array.init()();

      *(v2 + 352) = v147;
      if (*(v2 + 360))
      {
        outlined destroy of [SFCardSection]((v2 + 360));
      }

      v149 = v147;
    }

    *(v2 + 368) = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    v146 = Collection.isEmpty.getter();

    if (v146)
    {
      v136 = *(v2 + 808);
      v135 = *(v2 + 800);
      v39 = *(v2 + 728);
      v133 = *(v2 + 696);
      v134 = *(v2 + 496);
      v40 = Logger.payments.unsafeMutableAddressor();
      v386(v39, v40, v133);
      v137 = swift_allocObject();
      v137[2] = v134;
      v137[3] = v135;
      v137[4] = v136;
      v137[5] = v391;
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.debug.getter();
      v140 = swift_allocObject();
      *(v140 + 16) = 32;
      v141 = swift_allocObject();
      *(v141 + 16) = 8;
      v138 = swift_allocObject();
      *(v138 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v138 + 24) = v137;
      v139 = swift_allocObject();
      *(v139 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v139 + 24) = v138;
      v142 = swift_allocObject();
      *(v142 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v142 + 24) = v139;
      _allocateUninitializedArray<A>(_:)();
      v143 = v41;

      *v143 = partial apply for closure #1 in OSLogArguments.append(_:);
      v143[1] = v140;

      v143[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v143[3] = v141;

      v143[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v143[5] = v142;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v144, v145))
      {
        v130 = static UnsafeMutablePointer.allocate(capacity:)();
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v131 = createStorage<A>(capacity:type:)(0, v129, v129);
        v132 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v413 = v130;
        v414 = v131;
        v415 = v132;
        serialize(_:at:)(2, &v413);
        serialize(_:at:)(1, &v413);
        v416 = partial apply for closure #1 in OSLogArguments.append(_:);
        v417 = v140;
        closure #1 in osLogInternal(_:log:type:)(&v416, &v413, &v414, &v415);
        v416 = partial apply for closure #1 in OSLogArguments.append(_:);
        v417 = v141;
        closure #1 in osLogInternal(_:log:type:)(&v416, &v413, &v414, &v415);
        v416 = partial apply for closure #1 in OSLogArguments.append(_:);
        v417 = v142;
        closure #1 in osLogInternal(_:log:type:)(&v416, &v413, &v414, &v415);
        _os_log_impl(&dword_2686B1000, v144, v145, "#ContactDisambiguationStrategy<%s> appending selectedPerson to empty persons array", v130, 0xCu);
        destroyStorage<A>(_:count:)(v131, 0, v129);
        destroyStorage<A>(_:count:)(v132, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v130, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v126 = *(v2 + 728);
      v127 = *(v2 + 696);
      MEMORY[0x277D82BD8](v144);
      v371(v126, v127);
      v128 = *(v2 + 344);
      MEMORY[0x277D82BE0](v128);
      *(v2 + 384) = v128;
      Array.append(_:)();
    }

    else
    {
      ParameterResolutionRecord.parameter.getter();
      v125 = ParameterIdentifier.multicardinalIndex.getter();
      if (v42)
      {
        (*(*(v2 + 536) + 8))(*(v2 + 544), *(v2 + 528));
      }

      else
      {
        v110 = *(v2 + 808);
        v109 = *(v2 + 800);
        v43 = *(v2 + 720);
        v107 = *(v2 + 696);
        v44 = *(v2 + 544);
        v45 = *(v2 + 536);
        v46 = *(v2 + 528);
        v108 = *(v2 + 496);
        *(v2 + 376) = v125;
        (*(v45 + 8))(v44, v46);
        v47 = Logger.payments.unsafeMutableAddressor();
        v386(v43, v47, v107);
        v111 = swift_allocObject();
        v111[2] = v108;
        v111[3] = v109;
        v111[4] = v110;
        v111[5] = v391;
        v114 = swift_allocObject();
        *(v114 + 16) = v125;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.debug.getter();
        v116 = swift_allocObject();
        *(v116 + 16) = 32;
        v117 = swift_allocObject();
        *(v117 + 16) = 8;
        v112 = swift_allocObject();
        *(v112 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
        *(v112 + 24) = v111;
        v113 = swift_allocObject();
        *(v113 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v113 + 24) = v112;
        v118 = swift_allocObject();
        *(v118 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v118 + 24) = v113;
        v119 = swift_allocObject();
        *(v119 + 16) = 0;
        v120 = swift_allocObject();
        *(v120 + 16) = 8;
        v115 = swift_allocObject();
        *(v115 + 16) = partial apply for implicit closure #21 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
        *(v115 + 24) = v114;
        v121 = swift_allocObject();
        *(v121 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
        *(v121 + 24) = v115;
        _allocateUninitializedArray<A>(_:)();
        v122 = v48;

        *v122 = partial apply for closure #1 in OSLogArguments.append(_:);
        v122[1] = v116;

        v122[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v122[3] = v117;

        v122[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v122[5] = v118;

        v122[6] = partial apply for closure #1 in OSLogArguments.append(_:);
        v122[7] = v119;

        v122[8] = partial apply for closure #1 in OSLogArguments.append(_:);
        v122[9] = v120;

        v122[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v122[11] = v121;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v123, v124))
        {
          v104 = static UnsafeMutablePointer.allocate(capacity:)();
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v105 = createStorage<A>(capacity:type:)(0, v103, v103);
          v106 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v408 = v104;
          v409 = v105;
          v410 = v106;
          serialize(_:at:)(2, &v408);
          serialize(_:at:)(2, &v408);
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v116;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v117;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v118;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v119;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          v411 = partial apply for closure #1 in OSLogArguments.append(_:);
          v412 = v120;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          v411 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v412 = v121;
          closure #1 in osLogInternal(_:log:type:)(&v411, &v408, &v409, &v410);
          _os_log_impl(&dword_2686B1000, v123, v124, "#ContactDisambiguationStrategy<%s> setting selectedPerson to multicardinalValueIndex %ld", v104, 0x16u);
          destroyStorage<A>(_:count:)(v105, 0, v103);
          destroyStorage<A>(_:count:)(v106, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v104, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v99 = *(v2 + 720);
        v100 = *(v2 + 696);
        MEMORY[0x277D82BD8](v123);
        v371(v99, v100);
        v101 = *(v2 + 344);
        MEMORY[0x277D82BE0](v101);
        v102 = Array.subscript.modify();
        v50 = *v49;
        *v49 = v101;
        MEMORY[0x277D82BD8](v50);
        v102();
      }
    }

    v97 = *(v2 + 792);
    v98 = *(v2 + 520);
    v96 = *(v2 + 504);
    v94 = *(v2 + 496);
    v95 = *(v2 + 512);
    v92 = ParameterResolutionRecord.intent.getter();
    v93 = *(v2 + 344);
    MEMORY[0x277D82BE0](v93);
    MEMORY[0x277D82BE0](v93);
    v90 = ParameterResolutionRecord.intent.getter();
    v51 = (*(v391 + 24))(v94);
    v91 = MEMORY[0x26D620690](v51);
    MEMORY[0x277D82BD8](v90);

    [v92 setValue:v93 forKeyPath:v91];
    MEMORY[0x277D82BD8](v91);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v92);
    v407 = v373;
    v406 = v93;
    ParameterResolutionRecord.intent.getter();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    static DisambiguationResult.chosenItem(_:)();
    (*(v95 + 8))(v98, v96);
    outlined destroy of [SFCardSection]((v2 + 352));
    MEMORY[0x277D82BD8](*(v2 + 344));
    outlined destroy of SFRichText?((v2 + 312));

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v97);

    v52 = *(*(v2 + 264) + 8);

    return v52();
  }

  v71 = *(v2 + 808);
  v70 = *(v2 + 800);
  v54 = *(v2 + 712);
  v68 = *(v2 + 696);
  v69 = *(v2 + 496);
  v55 = Logger.payments.unsafeMutableAddressor();
  v386(v54, v55, v68);
  v72 = swift_allocObject();
  v72[2] = v69;
  v72[3] = v70;
  v72[4] = v71;
  v72[5] = v391;

  v76 = swift_allocObject();
  *(v76 + 16) = v303;
  *(v76 + 24) = v304 & 1;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v73 + 24) = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v74 + 24) = v73;
  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v80 + 24) = v74;
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = 8;
  v75 = swift_allocObject();
  *(v75 + 16) = partial apply for implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v75 + 24) = v372;
  v83 = swift_allocObject();
  *(v83 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v83 + 24) = v75;
  v84 = swift_allocObject();
  *(v84 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v77 = swift_allocObject();
  *(v77 + 16) = partial apply for specialized implicit closure #16 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v77 + 24) = v76;
  v86 = swift_allocObject();
  *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v86 + 24) = v77;
  _allocateUninitializedArray<A>(_:)();
  v87 = v56;

  *v87 = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[1] = v78;

  v87[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[3] = v79;

  v87[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[5] = v80;

  v87[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[7] = v81;

  v87[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[9] = v82;

  v87[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[11] = v83;

  v87[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[13] = v84;

  v87[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[15] = v85;

  v87[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v87[17] = v86;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v88, v89))
  {
    v65 = static UnsafeMutablePointer.allocate(capacity:)();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v66 = createStorage<A>(capacity:type:)(0, v64, v64);
    v67 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v401 = v65;
    v402 = v66;
    v403 = v67;
    serialize(_:at:)(2, &v401);
    serialize(_:at:)(3, &v401);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v80;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v83;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v84;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v85;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    v404 = partial apply for closure #1 in OSLogArguments.append(_:);
    v405 = v86;
    closure #1 in osLogInternal(_:log:type:)(&v404, &v401, &v402, &v403);
    _os_log_impl(&dword_2686B1000, v88, v89, "#ContactDisambiguationStrategy<%s> Could not resolve disambiguation selection from id: %s or index: %s", v65, 0x20u);
    destroyStorage<A>(_:count:)(v66, 0, v64);
    destroyStorage<A>(_:count:)(v67, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v65, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v63 = *(v2 + 792);
  v59 = *(v2 + 712);
  v60 = *(v2 + 696);
  MEMORY[0x277D82BD8](v88);
  v371(v59, v60);
  swift_beginAccess();
  v61 = *(v372 + 16);
  v62 = *(v372 + 24);

  swift_endAccess();
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v57 = v61;
  *(v57 + 8) = v62;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = 0;
  *(v57 + 48) = 13;
  swift_willThrow();
  outlined destroy of SFRichText?((v2 + 312));

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v63);
LABEL_105:

  v58 = *(*(v2 + 264) + 8);

  return v58();
}

uint64_t implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  swift_getWitnessTable();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  v3 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t specialized implicit closure #11 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return String.init<A>(describing:)();
}

uint64_t closure #1 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t *a1, __int128 *a2)
{
  v16 = 0;
  v15 = 0;
  v16 = *a1;
  v15 = a2;
  v7 = INPerson.identifier.getter();
  v8 = v2;

  swift_beginAccess();
  v9 = *a2;

  swift_endAccess();

  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;
  if (!v8)
  {
    if (!*(&v14 + 1))
    {
      outlined destroy of String.UTF8View(v13);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v13, &v12);
  if (!*(&v14 + 1))
  {
    outlined destroy of String.UTF8View(&v12);
LABEL_8:
    outlined destroy of DIIdentifier(v13);
    v5 = 0;
    goto LABEL_7;
  }

  v11 = v12;
  v10 = v14;
  v4 = MEMORY[0x26D620740](v12, *(&v12 + 1), v14, *(&v14 + 1));
  outlined destroy of String.UTF8View(&v10);
  outlined destroy of String.UTF8View(&v11);
  outlined destroy of String.UTF8View(v13);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 624) = v3;
  *(v4 + 616) = a3;
  *(v4 + 608) = a2;
  *(v4 + 600) = a1;
  *(v4 + 632) = *v3;
  *(v4 + 456) = v4;
  *(v4 + 464) = 0;
  *(v4 + 472) = 0;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  *(v4 + 992) = 0;
  *(v4 + 544) = 0;
  *(v4 + 1000) = 0;
  *(v4 + 552) = 0;
  *(v4 + 560) = 0;
  v14 = *v3;
  *(v4 + 640) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v4 + 648) = swift_task_alloc();
  v5 = type metadata accessor for AceOutput();
  *(v4 + 656) = v5;
  *(v4 + 664) = *(v5 - 8);
  *(v4 + 672) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v4 + 680) = v6;
  *(v4 + 688) = *(v6 - 8);
  *(v4 + 696) = swift_task_alloc();
  type metadata accessor for DialogPhase();
  *(v4 + 704) = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  *(v4 + 712) = v7;
  *(v4 + 720) = *(v7 - 8);
  *(v4 + 728) = swift_task_alloc();
  v8 = type metadata accessor for NLContextUpdate();
  *(v4 + 736) = v8;
  *(v4 + 744) = *(v8 - 8);
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v4 + 768) = v9;
  *(v4 + 776) = *(v9 - 8);
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 464) = a2;
  *(v4 + 472) = a3;
  *(v4 + 824) = v14[10];
  *(v4 + 480) = v13;
  *(v4 + 832) = v14[11];
  *(v4 + 840) = v14[12];

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v110 = v0;
  v92 = v0[105];
  v91 = v0[104];
  v90 = v0[103];
  v86 = v0[102];
  v1 = v0[101];
  v87 = v0[97];
  v88 = v0[96];
  v93 = v0[80];
  v0[57] = v0;
  v2 = SignpostName.makePromptForDisambiguation.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v86);
  v3 = Logger.payments.unsafeMutableAddressor();
  v89 = *(v87 + 16);
  v0[106] = v89;
  v0[107] = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89(v1, v3, v88);
  v95 = swift_allocObject();
  v95[2] = v90;
  v95[3] = v91;
  v95[4] = v92;
  v94 = *(v93 + 104);
  v0[108] = v94;
  v95[5] = v94;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  v98 = swift_allocObject();
  *(v98 + 16) = 32;
  v99 = swift_allocObject();
  *(v99 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v96 + 24) = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v97 + 24) = v96;
  v100 = swift_allocObject();
  *(v100 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v100 + 24) = v97;
  v0[109] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v101 = v4;

  *v101 = partial apply for closure #1 in OSLogArguments.append(_:);
  v101[1] = v98;

  v101[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v101[3] = v99;

  v101[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v101[5] = v100;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v102, v103))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v83 = createStorage<A>(capacity:type:)(0, v81, v81);
    v84 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v105 = buf;
    v106 = v83;
    v107 = v84;
    serialize(_:at:)(2, &v105);
    serialize(_:at:)(1, &v105);
    v108 = partial apply for closure #1 in OSLogArguments.append(_:);
    v109 = v98;
    closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
    v108 = partial apply for closure #1 in OSLogArguments.append(_:);
    v109 = v99;
    closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
    v108 = partial apply for closure #1 in OSLogArguments.append(_:);
    v109 = v100;
    closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
    _os_log_impl(&dword_2686B1000, v102, v103, "#ContactDisambiguationStrategy<%s> Running makePromptForDisambiguation()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v83, 0, v81);
    destroyStorage<A>(_:count:)(v84, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v76 = *(v85 + 808);
  v77 = *(v85 + 768);
  v75 = *(v85 + 776);
  MEMORY[0x277D82BD8](v102);
  v78 = *(v75 + 8);
  *(v85 + 880) = v78;
  *(v85 + 888) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78(v76, v77);
  *(v85 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v79 = PaginatedItemContainer.items.getter();
  v80 = static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(v79);

  if (v80)
  {
    v72 = PaginatedItemContainer.items.getter();
    v73 = static ContactDisambiguationStrategy.handleType(for:)(v72);

    *(v85 + 993) = v73;
    v74 = v73;
  }

  else
  {
    *(v85 + 993) = 4;
    v74 = 4;
  }

  v67 = *(v85 + 624);
  type metadata accessor for DisambiguationViewBuilder();
  v66 = PaginatedItemContainer.items.getter();
  outlined init with copy of GlobalsProviding(v67 + 24, v85 + 16);
  v65 = *(v85 + 40);
  v64 = *(v85 + 48);
  __swift_project_boxed_opaque_existential_1((v85 + 16), v65);
  (*(v64 + 16))(v65);
  v70 = DisambiguationViewBuilder.__allocating_init(contactDisambiguationType:persons:deviceState:)(v74, v66, v104);
  *(v85 + 904) = v70;
  __swift_destroy_boxed_opaque_existential_0((v85 + 16));
  *(v85 + 488) = v70;
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.app.getter();
  outlined init with copy of GlobalsProviding(v67 + 24, v85 + 56);
  v69 = *(v85 + 80);
  v68 = *(v85 + 88);
  __swift_project_boxed_opaque_existential_1((v85 + 56), v69);
  (*(v68 + 16))(v69);
  __swift_project_boxed_opaque_existential_1((v85 + 96), *(v85 + 120));
  dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0((v85 + 96));
  __swift_destroy_boxed_opaque_existential_0((v85 + 56));
  v71 = DisambiguationViewBuilder.makeDisambiguationItems(app:compact:)();
  *(v85 + 912) = v71;

  *(v85 + 496) = v71;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v5 = *(v85 + 800);
    v60 = *(v85 + 768);
    v6 = Logger.payments.unsafeMutableAddressor();
    v89(v5, v6, v60);
    oslog = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v63 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v61))
    {
      v56 = static UnsafeMutablePointer.allocate(capacity:)();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v57 = createStorage<A>(capacity:type:)(0, v55, v55);
      v58 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 568) = v56;
      *(v85 + 576) = v57;
      *(v85 + 584) = v58;
      serialize(_:at:)(0, (v85 + 568));
      serialize(_:at:)(0, (v85 + 568));
      *(v85 + 592) = v63;
      v59 = swift_task_alloc();
      v59[2] = v85 + 568;
      v59[3] = v85 + 576;
      v59[4] = v85 + 584;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, oslog, v61, "SnippetViews for disambiguation using RF 2.0", v56, 2u);
      destroyStorage<A>(_:count:)(v57, 0, v55);
      destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);
    }

    v49 = *(v85 + 824);
    v46 = *(v85 + 800);
    v47 = *(v85 + 768);
    v52 = *(v85 + 760);
    v53 = *(v85 + 624);
    MEMORY[0x277D82BD8](oslog);
    v78(v46, v47);
    v48 = PaginatedItemContainer.items.getter();
    *(v85 + 920) = v48;
    *(v85 + 544) = v48;
    v50 = v49 == type metadata accessor for INSendPaymentIntent();
    *(v85 + 1000) = v50 & 1;
    v51 = PaginatedItemContainer.items.getter();
    static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)(v51, v50, v52);

    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v52;
    OutputGenerationManifest.init(dialogPhase:_:)();

    v54 = *(v53 + 64);
    MEMORY[0x277D82BE0](v54);
    if (v54)
    {
      *(v85 + 560) = v54;
      type metadata accessor for ContactResolutionSnippetGenerator();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
      MEMORY[0x277D82BE0](v54);
      v44 = ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:)();

      *(v85 + 552) = v44;
      MEMORY[0x277D82BD8](v54);
      v45 = v44;
    }

    else
    {
      v40 = *(v85 + 624);
      type metadata accessor for ContactResolutionSnippetGenerator();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
      outlined init with copy of GlobalsProviding(v40 + 24, v85 + 416);
      v42 = *(v85 + 440);
      v41 = *(v85 + 448);
      __swift_project_boxed_opaque_existential_1((v85 + 416), v42);
      (*(v41 + 16))(v42);
      default argument 1 of ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)();
      v43 = ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:deviceState:)();
      __swift_destroy_boxed_opaque_existential_0((v85 + 416));

      *(v85 + 552) = v43;
      v45 = v43;
    }

    *(v85 + 928) = v45;
    v38 = PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
    v39 = v7;
    *(v85 + 936) = v7;
    v8 = swift_task_alloc();
    *(v85 + 944) = v8;
    *v8 = *(v85 + 456);
    v8[1] = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v9 = *(v85 + 728);
    v10 = *(v85 + 600);

    return MEMORY[0x2821B91D0](v10, v48, v38, v39, v9);
  }

  else
  {
    v11 = *(v85 + 792);
    v34 = *(v85 + 768);
    v12 = Logger.payments.unsafeMutableAddressor();
    v89(v11, v12, v34);
    log = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v35))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 512) = v30;
      *(v85 + 520) = v31;
      *(v85 + 528) = v32;
      serialize(_:at:)(0, (v85 + 512));
      serialize(_:at:)(0, (v85 + 512));
      *(v85 + 536) = v37;
      v33 = swift_task_alloc();
      v33[2] = v85 + 512;
      v33[3] = v85 + 520;
      v33[4] = v85 + 528;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, log, v35, "AceViews for disambiguation", v30, 2u);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);
    }

    v24 = *(v85 + 824);
    v17 = *(v85 + 792);
    v18 = *(v85 + 768);
    v26 = *(v85 + 624);
    MEMORY[0x277D82BD8](log);
    v78(v17, v18);
    v22 = ParameterResolutionRecord.app.getter();
    type metadata accessor for SiriKitDisambiguationList();
    PaginatedItemContainer.items.getter();
    type metadata accessor for INPerson();
    _arrayForceCast<A, B>(_:)();

    _swift_stdlib_has_malloc_size();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21 = SiriKitDisambiguationList.__allocating_init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();

    outlined init with copy of GlobalsProviding(v26 + 24, v85 + 136);
    v20 = *(v85 + 160);
    v19 = *(v85 + 168);
    __swift_project_boxed_opaque_existential_1((v85 + 136), v20);
    (*(v19 + 16))(v20);
    v13 = type metadata accessor for SiriKitDisambiguationSnippetFactory();
    v23 = static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(v22, v21, (v85 + 176), v13, &protocol witness table for SiriKitDisambiguationSnippetFactory);
    *(v85 + 960) = v23;
    __swift_destroy_boxed_opaque_existential_0((v85 + 176));
    __swift_destroy_boxed_opaque_existential_0((v85 + 136));

    *(v85 + 504) = v23;
    v25 = ParameterResolutionRecord.intent.getter();
    v27 = (*(v94 + 16))(v24);
    *(v85 + 968) = v27;
    MEMORY[0x277D82BD8](v25);
    v28 = (*(*v26 + 184) + **(*v26 + 184));
    v14 = swift_task_alloc();
    *(v85 + 976) = v14;
    *v14 = *(v85 + 456);
    v14[1] = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v15 = *(v85 + 696);

    return v28(v15, v27);
  }
}

{
  v4 = *v1;
  *(v4 + 456) = *v1;
  *(v4 + 952) = v0;

  if (v0)
  {
    v2 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {

    v2 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v9 = v0[102];
  v7 = v0[95];
  v6 = v0[93];
  v8 = v0[92];
  v4 = v0[91];
  v3 = v0[90];
  v5 = v0[89];
  v0[57] = v0;

  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v7, v8);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v9);

  v1 = *(v0[57] + 8);

  return v1();
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 456) = *v1;
  *(v5 + 984) = v0;

  if (v0)
  {
    v2 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {

    v2 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v56 = v0;
  v41 = v0[108];
  v37 = v0[106];
  v40 = v0[105];
  v39 = v0[104];
  v38 = v0[103];
  v1 = v0[98];
  v36 = v0[96];
  v0[57] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v37(v1, v2, v36);
  v42 = swift_allocObject();
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  v42[5] = v41;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v43 + 24) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v44 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v47 + 24) = v44;
  _allocateUninitializedArray<A>(_:)();
  v48 = v3;

  *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[1] = v45;

  v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[3] = v46;

  v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[5] = v47;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v49, v50))
  {
    v4 = *(v35 + 984);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0, v31, v31);
    v34 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v51 = buf;
    v52 = v33;
    v53 = v34;
    serialize(_:at:)(2, &v51);
    serialize(_:at:)(1, &v51);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    if (v4)
    {
    }

    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_2686B1000, v49, v50, "#ContactDisambiguationStrategy<%s> Creating SDAs and updating NLContext()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33, 0, v31);
    destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = *(v35 + 880);
  v11 = *(v35 + 824);
  v30 = *(v35 + 816);
  v8 = *(v35 + 784);
  v9 = *(v35 + 768);
  v25 = *(v35 + 752);
  v26 = *(v35 + 736);
  v28 = *(v35 + 696);
  v29 = *(v35 + 680);
  v24 = *(v35 + 672);
  v23 = *(v35 + 656);
  v20 = *(v35 + 648);
  v16 = *(v35 + 624);
  v21 = *(v35 + 600);
  v19 = *(v35 + 744);
  v27 = *(v35 + 688);
  v22 = *(v35 + 664);
  MEMORY[0x277D82BD8](v49);
  v10(v8, v9);
  v12 = v11 == type metadata accessor for INSendPaymentIntent();
  *(v35 + 992) = v12 & 1;
  v13 = PaginatedItemContainer.items.getter();
  static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)(v13, v12, v25);

  outlined init with copy of GlobalsProviding(v16 + 24, v35 + 216);
  v15 = *(v35 + 240);
  v14 = *(v35 + 248);
  __swift_project_boxed_opaque_existential_1((v35 + 216), v15);
  (*(v14 + 16))(v15);
  outlined init with copy of GlobalsProviding(v16 + 24, v35 + 296);
  v18 = *(v35 + 320);
  v17 = *(v35 + 328);
  __swift_project_boxed_opaque_existential_1((v35 + 296), v18);
  (*(v17 + 16))(v18);
  __swift_project_boxed_opaque_existential_1((v35 + 336), *(v35 + 360));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v19 + 16))(v20, v25, v26);
  (*(v19 + 56))(v20);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  *(v35 + 376) = 0;
  *(v35 + 384) = 0;
  *(v35 + 392) = 0;
  *(v35 + 400) = 0;
  *(v35 + 408) = 0;
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of FlowActivity?((v35 + 376));

  outlined destroy of NLContextUpdate?(v20);
  __swift_destroy_boxed_opaque_existential_0((v35 + 336));
  __swift_destroy_boxed_opaque_existential_0((v35 + 296));
  __swift_destroy_boxed_opaque_existential_0((v35 + 256));
  __swift_destroy_boxed_opaque_existential_0((v35 + 216));
  v21[3] = v23;
  v21[4] = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v22 + 16))(boxed_opaque_existential_1, v24, v23);
  (*(v22 + 8))(v24, v23);
  (*(v19 + 8))(v25, v26);
  (*(v27 + 8))(v28, v29);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v30);

  v7 = *(*(v35 + 456) + 8);

  return v7();
}

{
  v9 = v0[102];
  v7 = v0[95];
  v6 = v0[93];
  v8 = v0[92];
  v4 = v0[91];
  v3 = v0[90];
  v5 = v0[89];
  v0[57] = v0;

  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v7, v8);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v9);

  v1 = *(v0[57] + 8);

  return v1();
}

{
  v1 = v0[121];
  v4 = v0[102];
  v0[57] = v0;
  MEMORY[0x277D82BD8](v1);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v4);

  v2 = *(v0[57] + 8);

  return v2();
}

uint64_t static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(_BYTE *a1)
{
  v301 = a1;
  v299 = 0;
  v379 = 0;
  v378 = 0;
  v300 = 0;
  v371 = 0;
  v369 = 0;
  v368 = 0;
  v363 = 0;
  v354 = 0;
  v353 = 0;
  v349 = 0;
  v348 = 0;
  v314 = type metadata accessor for Logger();
  v302 = v314;
  v303 = *(v314 - 8);
  v313 = v303;
  v304 = v303;
  v306 = *(v303 + 64);
  v1 = MEMORY[0x28223BE20](v301, v314);
  v308 = (v306 + 15) & 0xFFFFFFFFFFFFFFF0;
  v305 = &v108 - v308;
  v2 = MEMORY[0x28223BE20](v1, &v108 - v308);
  v307 = &v108 - v308;
  v3 = MEMORY[0x28223BE20](v2, &v108 - v308);
  v4 = &v108 - v308;
  v309 = &v108 - v308;
  v379 = v3;
  v378 = v5;
  v317 = v5[10];
  v310 = v317;
  v377[4] = v317;
  v318 = v5[11];
  v311 = v318;
  v377[3] = v318;
  v319 = v5[12];
  v312 = v319;
  v377[2] = v319;
  v6 = Logger.payments.unsafeMutableAddressor();
  v315 = *(v313 + 16);
  v316 = (v313 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v315(v4, v6, v314);
  v330 = 7;
  v7 = swift_allocObject();
  v8 = v318;
  v9 = v319;
  v10 = v320;
  v328 = v7;
  v7[2] = v317;
  v7[3] = v8;
  v7[4] = v9;
  v321 = *(v10 + 104);
  v7[5] = v321;
  v342 = Logger.logObject.getter();
  v322 = v342;
  v341 = static os_log_type_t.debug.getter();
  v323 = v341;
  v324 = 17;
  v335 = swift_allocObject();
  v325 = v335;
  v326 = 32;
  *(v335 + 16) = 32;
  v11 = swift_allocObject();
  v12 = v326;
  v336 = v11;
  v327 = v11;
  *(v11 + 16) = 8;
  v329 = v12;
  v13 = swift_allocObject();
  v14 = v328;
  v331 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v331;
  v332 = v15;
  *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v332;
  v339 = v17;
  v333 = v17;
  *(v17 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v17 + 24) = v18;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v334 = v340;
  v337 = _allocateUninitializedArray<A>(_:)();
  v338 = v19;

  v20 = v335;
  v21 = v338;
  *v338 = partial apply for closure #1 in OSLogArguments.append(_:);
  v21[1] = v20;

  v22 = v336;
  v23 = v338;
  v338[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v23[3] = v22;

  v24 = v338;
  v25 = v339;
  v338[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v24[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v342, v341))
  {
    v26 = v300;
    v292 = static UnsafeMutablePointer.allocate(capacity:)();
    v289 = v292;
    v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v293 = createStorage<A>(capacity:type:)(0, v290, v290);
    v291 = v293;
    v295 = 1;
    v294 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v347[0] = v292;
    v346 = v293;
    v345 = v294;
    v296 = v347;
    serialize(_:at:)(2, v347);
    serialize(_:at:)(v295, v296);
    v343 = partial apply for closure #1 in OSLogArguments.append(_:);
    v344 = v325;
    closure #1 in osLogInternal(_:log:type:)(&v343, v296, &v346, &v345);
    v297 = v26;
    v298 = v26;
    if (v26)
    {
      v287 = 0;

      __break(1u);
    }

    else
    {
      v343 = partial apply for closure #1 in OSLogArguments.append(_:);
      v344 = v327;
      closure #1 in osLogInternal(_:log:type:)(&v343, v347, &v346, &v345);
      v285 = 0;
      v286 = 0;
      v343 = partial apply for closure #1 in OSLogArguments.append(_:);
      v344 = v333;
      closure #1 in osLogInternal(_:log:type:)(&v343, v347, &v346, &v345);
      v283 = 0;
      v284 = 0;
      _os_log_impl(&dword_2686B1000, v322, v323, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier", v289, 0xCu);
      destroyStorage<A>(_:count:)(v291, 0, v290);
      destroyStorage<A>(_:count:)(v294, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v289, MEMORY[0x277D84B78]);

      v288 = v283;
    }
  }

  else
  {
    v27 = v300;

    v288 = v27;
  }

  v277 = v288;

  v278 = *(v304 + 8);
  v279 = (v304 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v278(v309, v302);
  v377[1] = v301;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v280 = v281;
  v282 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    v84 = v305;
    v85 = Logger.payments.unsafeMutableAddressor();
    v315(v84, v85, v302);
    v133 = 7;
    v86 = swift_allocObject();
    v87 = v311;
    v88 = v312;
    v89 = v321;
    v131 = v86;
    v86[2] = v310;
    v86[3] = v87;
    v86[4] = v88;
    v86[5] = v89;
    v143 = Logger.logObject.getter();
    v125 = v143;
    v142 = static os_log_type_t.debug.getter();
    v126 = v142;
    v127 = 17;
    v137 = swift_allocObject();
    v128 = v137;
    v129 = 32;
    *(v137 + 16) = 32;
    v90 = swift_allocObject();
    v91 = v129;
    v138 = v90;
    v130 = v90;
    *(v90 + 16) = 8;
    v132 = v91;
    v92 = swift_allocObject();
    v93 = v131;
    v134 = v92;
    *(v92 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v92 + 24) = v93;
    v94 = swift_allocObject();
    v95 = v134;
    v135 = v94;
    *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v94 + 24) = v95;
    v96 = swift_allocObject();
    v97 = v135;
    v141 = v96;
    v136 = v96;
    *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v96 + 24) = v97;
    v139 = _allocateUninitializedArray<A>(_:)();
    v140 = v98;

    v99 = v137;
    v100 = v140;
    *v140 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100[1] = v99;

    v101 = v138;
    v102 = v140;
    v140[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[3] = v101;

    v103 = v140;
    v104 = v141;
    v140[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[5] = v104;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v143, v142))
    {
      v105 = v277;
      v118 = static UnsafeMutablePointer.allocate(capacity:)();
      v115 = v118;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v119 = createStorage<A>(capacity:type:)(0, v116, v116);
      v117 = v119;
      v121 = 1;
      v120 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v377[0] = v118;
      v376 = v119;
      v375 = v120;
      v122 = v377;
      serialize(_:at:)(2, v377);
      serialize(_:at:)(v121, v122);
      v373 = partial apply for closure #1 in OSLogArguments.append(_:);
      v374 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v373, v122, &v376, &v375);
      v123 = v105;
      v124 = v105;
      if (v105)
      {
        v113 = 0;

        __break(1u);
      }

      else
      {
        v373 = partial apply for closure #1 in OSLogArguments.append(_:);
        v374 = v130;
        closure #1 in osLogInternal(_:log:type:)(&v373, v377, &v376, &v375);
        v111 = 0;
        v112 = 0;
        v373 = partial apply for closure #1 in OSLogArguments.append(_:);
        v374 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v373, v377, &v376, &v375);
        v109 = 0;
        v110 = 0;
        _os_log_impl(&dword_2686B1000, v125, v126, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier no recipients provided, returning false", v115, 0xCu);
        destroyStorage<A>(_:count:)(v117, 0, v116);
        destroyStorage<A>(_:count:)(v120, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v115, MEMORY[0x277D84B78]);

        v114 = v109;
      }
    }

    else
    {
      v106 = v277;

      v114 = v106;
    }

    v108 = v114;

    v278(v305, v302);
    v145 = 0;
    v146 = v108;
    return v145 & 1;
  }

  v28 = v277;
  v372 = v301;
  v274 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  v29 = Sequence.allSatisfy(_:)();
  v275 = v28;
  v276 = v29;
  if (!v28)
  {
    v271 = v276;
    v371 = v276 & 1;
    v370 = v301;
    v30 = Sequence.allSatisfy(_:)();
    v272 = 0;
    v273 = v30;
    v270 = v30;
    v369 = v30 & 1;
    if (v271)
    {
      v351 = v301;
      Collection.first.getter();
      v269 = v350;
      if (v350)
      {
        v268 = v269;
        v266 = v269;
        v267 = [v269 contactIdentifier];
        if (v267)
        {
          v265 = v267;
          v260 = v267;
          v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v262 = v31;

          v263 = v261;
          v264 = v262;
        }

        else
        {
          v263 = 0;
          v264 = 0;
        }

        v257 = v264;
        v256 = v263;

        v258 = v256;
        v259 = v257;
      }

      else
      {
        v258 = 0;
        v259 = 0;
      }

      v254 = v259;
      v255 = v258;
      if (v259)
      {
        v252 = v255;
        v253 = v254;
        v32 = v272;
        v247 = v254;
        v249 = v255;
        v348 = v255;
        v349 = v254;
        v347[1] = v301;

        v248 = &v108;
        MEMORY[0x28223BE20](&v108, v33);
        *(&v108 - 2) = v249;
        *(&v108 - 1) = v34;
        v35 = Sequence.allSatisfy(_:)();
        v250 = v32;
        v251 = v35;
        if (!v32)
        {
          v244 = v251;

          v368 = v244 & 1;

          v245 = v244;
          v246 = v250;
LABEL_48:
          v47 = v307;
          v169 = v246;
          v170 = v245;
          v48 = Logger.payments.unsafeMutableAddressor();
          v315(v47, v48, v302);
          v186 = 7;
          v49 = swift_allocObject();
          v50 = v311;
          v51 = v312;
          v52 = v321;
          v176 = v49;
          v49[2] = v310;
          v49[3] = v50;
          v49[4] = v51;
          v49[5] = v52;
          v180 = 17;
          v183 = swift_allocObject();
          *(v183 + 16) = v170 & 1;
          v199 = Logger.logObject.getter();
          v171 = v199;
          v198 = static os_log_type_t.debug.getter();
          v172 = v198;
          v190 = swift_allocObject();
          v173 = v190;
          v174 = 32;
          *(v190 + 16) = 32;
          v53 = swift_allocObject();
          v54 = v174;
          v191 = v53;
          v175 = v53;
          *(v53 + 16) = 8;
          v185 = v54;
          v55 = swift_allocObject();
          v56 = v176;
          v177 = v55;
          *(v55 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
          *(v55 + 24) = v56;
          v57 = swift_allocObject();
          v58 = v177;
          v178 = v57;
          *(v57 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v57 + 24) = v58;
          v59 = swift_allocObject();
          v60 = v178;
          v192 = v59;
          v179 = v59;
          *(v59 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v59 + 24) = v60;
          v193 = swift_allocObject();
          v181 = v193;
          *(v193 + 16) = 0;
          v194 = swift_allocObject();
          v182 = v194;
          *(v194 + 16) = 4;
          v61 = swift_allocObject();
          v62 = v183;
          v184 = v61;
          *(v61 + 16) = partial apply for implicit closure #6 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:);
          *(v61 + 24) = v62;
          v63 = swift_allocObject();
          v64 = v184;
          v187 = v63;
          *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
          *(v63 + 24) = v64;
          v65 = swift_allocObject();
          v66 = v187;
          v188 = v65;
          *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
          *(v65 + 24) = v66;
          v67 = swift_allocObject();
          v68 = v188;
          v197 = v67;
          v189 = v67;
          *(v67 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
          *(v67 + 24) = v68;
          v195 = _allocateUninitializedArray<A>(_:)();
          v196 = v69;

          v70 = v190;
          v71 = v196;
          *v196 = partial apply for closure #1 in OSLogArguments.append(_:);
          v71[1] = v70;

          v72 = v191;
          v73 = v196;
          v196[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v73[3] = v72;

          v74 = v192;
          v75 = v196;
          v196[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v75[5] = v74;

          v76 = v193;
          v77 = v196;
          v196[6] = partial apply for closure #1 in OSLogArguments.append(_:);
          v77[7] = v76;

          v78 = v194;
          v79 = v196;
          v196[8] = partial apply for closure #1 in OSLogArguments.append(_:);
          v79[9] = v78;

          v80 = v196;
          v81 = v197;
          v196[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v80[11] = v81;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v199, v198))
          {
            v82 = v169;
            v162 = static UnsafeMutablePointer.allocate(capacity:)();
            v159 = v162;
            v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v163 = createStorage<A>(capacity:type:)(0, v160, v160);
            v161 = v163;
            v164 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v362 = v162;
            v361 = v163;
            v360 = v164;
            v165 = 2;
            v166 = &v362;
            serialize(_:at:)(2, &v362);
            serialize(_:at:)(v165, v166);
            v358 = partial apply for closure #1 in OSLogArguments.append(_:);
            v359 = v173;
            closure #1 in osLogInternal(_:log:type:)(&v358, v166, &v361, &v360);
            v167 = v82;
            v168 = v82;
            if (v82)
            {
              v157 = 0;

              __break(1u);
            }

            else
            {
              v358 = partial apply for closure #1 in OSLogArguments.append(_:);
              v359 = v175;
              closure #1 in osLogInternal(_:log:type:)(&v358, &v362, &v361, &v360);
              v155 = 0;
              v156 = 0;
              v358 = partial apply for closure #1 in OSLogArguments.append(_:);
              v359 = v179;
              closure #1 in osLogInternal(_:log:type:)(&v358, &v362, &v361, &v360);
              v153 = 0;
              v154 = 0;
              v358 = partial apply for closure #1 in OSLogArguments.append(_:);
              v359 = v181;
              closure #1 in osLogInternal(_:log:type:)(&v358, &v362, &v361, &v360);
              v151 = 0;
              v152 = 0;
              v358 = partial apply for closure #1 in OSLogArguments.append(_:);
              v359 = v182;
              closure #1 in osLogInternal(_:log:type:)(&v358, &v362, &v361, &v360);
              v149 = 0;
              v150 = 0;
              v358 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
              v359 = v189;
              closure #1 in osLogInternal(_:log:type:)(&v358, &v362, &v361, &v360);
              v147 = 0;
              v148 = 0;
              _os_log_impl(&dword_2686B1000, v171, v172, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier %{BOOL}d", v159, 0x12u);
              destroyStorage<A>(_:count:)(v161, 0, v160);
              destroyStorage<A>(_:count:)(v164, 1, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v159, MEMORY[0x277D84B78]);

              v158 = v147;
            }
          }

          else
          {
            v83 = v169;

            v158 = v83;
          }

          v144 = v158;

          v278(v307, v302);
          v145 = v170;
          v146 = v144;
          return v145 & 1;
        }

        goto LABEL_62;
      }
    }

    if (v270)
    {
      v356 = v301;
      Collection.first.getter();
      v243 = v355;
      if (v355)
      {
        v242 = v243;
        v240 = v243;
        v241 = [v243 customIdentifier];
        if (v241)
        {
          v239 = v241;
          v234 = v241;
          v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v236 = v36;

          v237 = v235;
          v238 = v236;
        }

        else
        {
          v237 = 0;
          v238 = 0;
        }

        v231 = v238;
        v230 = v237;

        v232 = v230;
        v233 = v231;
      }

      else
      {
        v232 = 0;
        v233 = 0;
      }

      v228 = v233;
      v229 = v232;
      if (v233)
      {
        v226 = v229;
        v227 = v228;
        v37 = v272;
        v221 = v228;
        v223 = v229;
        v353 = v229;
        v354 = v228;
        v352 = v301;

        v222 = &v108;
        MEMORY[0x28223BE20](&v108, v38);
        *(&v108 - 2) = v223;
        *(&v108 - 1) = v39;
        v40 = Sequence.allSatisfy(_:)();
        v224 = v37;
        v225 = v40;
        if (v37)
        {
          goto LABEL_63;
        }

        v218 = v225;

        v368 = v218 & 1;

        v219 = v218;
        v220 = v224;
LABEL_47:
        v245 = v219;
        v246 = v220;
        goto LABEL_48;
      }
    }

    v366 = v301;
    Collection.first.getter();
    v217 = v365;
    if (v365)
    {
      v216 = v217;
      v211 = v217;
      v213 = [v217 displayName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v212 = v42;
      *&v214 = v41;

      *(&v214 + 1) = v212;
      v215 = v214;
    }

    else
    {
      v215 = 0uLL;
    }

    v364 = v215;
    if (*(&v215 + 1))
    {
      v367 = v364;
    }

    else
    {
      v367 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v364._object)
      {
        outlined destroy of String.UTF8View(&v364);
      }
    }

    v208 = v367;
    object = v367._object;
    v363 = v367;
    v210 = String.isEmpty.getter();

    if ((v210 & 1) == 0)
    {
      v43 = v272;
      v357 = v301;

      v205 = &v108;
      MEMORY[0x28223BE20](&v108, v44);
      *(&v108 - 2) = v208._countAndFlagsBits;
      *(&v108 - 1) = v45;
      v46 = Sequence.allSatisfy(_:)();
      v206 = v43;
      v207 = v46;
      if (!v43)
      {
        v202 = v207;

        v203 = v202;
        v204 = v206;
LABEL_45:
        v201 = v204;
        v200 = v203;

        v368 = v200 & 1;

        v219 = v200;
        v220 = v201;
        goto LABEL_47;
      }

      __break(1u);
    }

    v203 = 0;
    v204 = v272;
    goto LABEL_45;
  }

  __break(1u);
  __break(1u);
LABEL_62:

  __break(1u);
LABEL_63:

  __break(1u);
  return result;
}

uint64_t static ContactDisambiguationStrategy.handleType(for:)(uint64_t a1)
{
  v200 = a1;
  v221 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v223 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v227 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v229 = partial apply for closure #1 in OSLogArguments.append(_:);
  v231 = partial apply for closure #1 in OSLogArguments.append(_:);
  v234 = partial apply for closure #1 in OSLogArguments.append(_:);
  v179 = closure #1 in static ContactDisambiguationStrategy.handleType(for:);
  v180 = closure #2 in static ContactDisambiguationStrategy.handleType(for:);
  v181 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v182 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v183 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v184 = partial apply for closure #1 in OSLogArguments.append(_:);
  v185 = partial apply for closure #1 in OSLogArguments.append(_:);
  v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v188 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v189 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v190 = partial apply for closure #1 in OSLogArguments.append(_:);
  v191 = partial apply for closure #1 in OSLogArguments.append(_:);
  v192 = partial apply for closure #1 in OSLogArguments.append(_:);
  v193 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v194 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v195 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v196 = partial apply for closure #1 in OSLogArguments.append(_:);
  v197 = partial apply for closure #1 in OSLogArguments.append(_:);
  v198 = partial apply for closure #1 in OSLogArguments.append(_:);
  v268 = 0;
  v267 = 0;
  v199 = 0;
  v262 = 0;
  v260 = 0;
  v212 = type metadata accessor for Logger();
  v210 = *(v212 - 8);
  v211 = v212 - 8;
  v206 = v210[8];
  v201 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v200, v1);
  v202 = v91 - v201;
  v203 = v201;
  v3 = MEMORY[0x28223BE20](v2, v91 - v201);
  v204 = v91 - v203;
  v205 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3, v91 - v203);
  v207 = v91 - v205;
  v208 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4, v91 - v205);
  v6 = v91 - v208;
  v209 = v91 - v208;
  v268 = v5;
  v267 = v7;
  v215 = v7[10];
  v266 = v215;
  v216 = v7[11];
  v265 = v216;
  v217 = v7[12];
  v264 = v217;
  v8 = Logger.payments.unsafeMutableAddressor();
  v213 = v210[2];
  v214 = v210 + 2;
  v213(v6, v8, v212);
  v225 = 7;
  v9 = swift_allocObject();
  v10 = v216;
  v11 = v217;
  v12 = v218;
  v222 = v9;
  v9[2] = v215;
  v9[3] = v10;
  v9[4] = v11;
  v219 = *(v12 + 104);
  v9[5] = v219;
  v238 = Logger.logObject.getter();
  v239 = static os_log_type_t.debug.getter();
  v220 = 17;
  v230 = swift_allocObject();
  *(v230 + 16) = 32;
  v232 = swift_allocObject();
  *(v232 + 16) = 8;
  v224 = 32;
  v13 = swift_allocObject();
  v14 = v222;
  v226 = v13;
  *(v13 + 16) = v221;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v226;
  v228 = v15;
  *(v15 + 16) = v223;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v228;
  v235 = v17;
  *(v17 + 16) = v227;
  *(v17 + 24) = v18;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v233 = _allocateUninitializedArray<A>(_:)();
  v236 = v19;

  v20 = v230;
  v21 = v236;
  *v236 = v229;
  v21[1] = v20;

  v22 = v232;
  v23 = v236;
  v236[2] = v231;
  v23[3] = v22;

  v24 = v235;
  v25 = v236;
  v236[4] = v234;
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v238, v239))
  {
    v26 = v199;
    v172 = static UnsafeMutablePointer.allocate(capacity:)();
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v173 = createStorage<A>(capacity:type:)(0, v171, v171);
    v174 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v175 = &v244;
    v244 = v172;
    v176 = &v243;
    v243 = v173;
    v177 = &v242;
    v242 = v174;
    serialize(_:at:)(2, &v244);
    serialize(_:at:)(1, v175);
    v240 = v229;
    v241 = v230;
    closure #1 in osLogInternal(_:log:type:)(&v240, v175, v176, v177);
    v178 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v240 = v231;
      v241 = v232;
      closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
      v169 = 0;
      v240 = v234;
      v241 = v235;
      closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
      v168 = 0;
      _os_log_impl(&dword_2686B1000, v238, v239, "#ContactDisambiguationStrategy<%s> handleType(for:)", v172, 0xCu);
      destroyStorage<A>(_:count:)(v173, 0, v171);
      destroyStorage<A>(_:count:)(v174, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v172, MEMORY[0x277D84B78]);

      v170 = v168;
    }
  }

  else
  {
    v27 = v199;

    v170 = v27;
  }

  v28 = v170;
  MEMORY[0x277D82BD8](v238);
  v162 = v210[1];
  v163 = v210 + 1;
  v162(v209, v212);
  v263 = v200;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v165 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  result = Sequence.allSatisfy(_:)();
  v166 = v28;
  v167 = result;
  if (v28)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v159 = v167;
    v262 = v167 & 1;
    v261 = v200;
    v30 = Sequence.allSatisfy(_:)();
    v160 = 0;
    v161 = v30;
    v158 = v30;
    v260 = v30 & 1;
    if (v159)
    {
      v31 = v207;
      v32 = Logger.payments.unsafeMutableAddressor();
      v213(v31, v32, v212);
      v148 = 7;
      v33 = swift_allocObject();
      v34 = v216;
      v35 = v217;
      v36 = v219;
      v146 = v33;
      v33[2] = v215;
      v33[3] = v34;
      v33[4] = v35;
      v33[5] = v36;
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.debug.getter();
      v145 = 17;
      v151 = swift_allocObject();
      *(v151 + 16) = 32;
      v152 = swift_allocObject();
      *(v152 + 16) = 8;
      v147 = 32;
      v37 = swift_allocObject();
      v38 = v146;
      v149 = v37;
      *(v37 + 16) = v193;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v149;
      v150 = v39;
      *(v39 + 16) = v194;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v150;
      v154 = v41;
      *(v41 + 16) = v195;
      *(v41 + 24) = v42;
      v153 = _allocateUninitializedArray<A>(_:)();
      v155 = v43;

      v44 = v151;
      v45 = v155;
      *v155 = v196;
      v45[1] = v44;

      v46 = v152;
      v47 = v155;
      v155[2] = v197;
      v47[3] = v46;

      v48 = v154;
      v49 = v155;
      v155[4] = v198;
      v49[5] = v48;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v156, v157))
      {
        v50 = v160;
        v138 = static UnsafeMutablePointer.allocate(capacity:)();
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v139 = createStorage<A>(capacity:type:)(0, v137, v137);
        v140 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v141 = &v249;
        v249 = v138;
        v142 = &v248;
        v248 = v139;
        v143 = &v247;
        v247 = v140;
        serialize(_:at:)(2, &v249);
        serialize(_:at:)(1, v141);
        v245 = v196;
        v246 = v151;
        closure #1 in osLogInternal(_:log:type:)(&v245, v141, v142, v143);
        v144 = v50;
        if (v50)
        {

          __break(1u);
        }

        else
        {
          v245 = v197;
          v246 = v152;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v136 = 0;
          v245 = v198;
          v246 = v154;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          _os_log_impl(&dword_2686B1000, v156, v157, "#ContactDisambiguationStrategy<%s> handleType(for:) found .allEmail", v138, 0xCu);
          destroyStorage<A>(_:count:)(v139, 0, v137);
          destroyStorage<A>(_:count:)(v140, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v138, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v156);
      v162(v207, v212);
      return 1;
    }

    else if (v158)
    {
      v51 = v204;
      v52 = Logger.payments.unsafeMutableAddressor();
      v213(v51, v52, v212);
      v125 = 7;
      v53 = swift_allocObject();
      v54 = v216;
      v55 = v217;
      v56 = v219;
      v123 = v53;
      v53[2] = v215;
      v53[3] = v54;
      v53[4] = v55;
      v53[5] = v56;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.debug.getter();
      v122 = 17;
      v128 = swift_allocObject();
      *(v128 + 16) = 32;
      v129 = swift_allocObject();
      *(v129 + 16) = 8;
      v124 = 32;
      v57 = swift_allocObject();
      v58 = v123;
      v126 = v57;
      *(v57 + 16) = v187;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v126;
      v127 = v59;
      *(v59 + 16) = v188;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v127;
      v131 = v61;
      *(v61 + 16) = v189;
      *(v61 + 24) = v62;
      v130 = _allocateUninitializedArray<A>(_:)();
      v132 = v63;

      v64 = v128;
      v65 = v132;
      *v132 = v190;
      v65[1] = v64;

      v66 = v129;
      v67 = v132;
      v132[2] = v191;
      v67[3] = v66;

      v68 = v131;
      v69 = v132;
      v132[4] = v192;
      v69[5] = v68;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v133, v134))
      {
        v70 = v160;
        v115 = static UnsafeMutablePointer.allocate(capacity:)();
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v116 = createStorage<A>(capacity:type:)(0, v114, v114);
        v117 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v118 = &v254;
        v254 = v115;
        v119 = &v253;
        v253 = v116;
        v120 = &v252;
        v252 = v117;
        serialize(_:at:)(2, &v254);
        serialize(_:at:)(1, v118);
        v250 = v190;
        v251 = v128;
        closure #1 in osLogInternal(_:log:type:)(&v250, v118, v119, v120);
        v121 = v70;
        if (v70)
        {

          __break(1u);
        }

        else
        {
          v250 = v191;
          v251 = v129;
          closure #1 in osLogInternal(_:log:type:)(&v250, &v254, &v253, &v252);
          v113 = 0;
          v250 = v192;
          v251 = v131;
          closure #1 in osLogInternal(_:log:type:)(&v250, &v254, &v253, &v252);
          _os_log_impl(&dword_2686B1000, v133, v134, "#ContactDisambiguationStrategy<%s> handleType(for:) found .allPhone", v115, 0xCu);
          destroyStorage<A>(_:count:)(v116, 0, v114);
          destroyStorage<A>(_:count:)(v117, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v115, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v133);
      v162(v204, v212);
      return 0;
    }

    else
    {
      v71 = v202;
      v72 = Logger.payments.unsafeMutableAddressor();
      v213(v71, v72, v212);
      v103 = 7;
      v73 = swift_allocObject();
      v74 = v216;
      v75 = v217;
      v76 = v219;
      v101 = v73;
      v73[2] = v215;
      v73[3] = v74;
      v73[4] = v75;
      v73[5] = v76;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();
      v100 = 17;
      v106 = swift_allocObject();
      *(v106 + 16) = 32;
      v107 = swift_allocObject();
      *(v107 + 16) = 8;
      v102 = 32;
      v77 = swift_allocObject();
      v78 = v101;
      v104 = v77;
      *(v77 + 16) = v181;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v104;
      v105 = v79;
      *(v79 + 16) = v182;
      *(v79 + 24) = v80;
      v81 = swift_allocObject();
      v82 = v105;
      v109 = v81;
      *(v81 + 16) = v183;
      *(v81 + 24) = v82;
      v108 = _allocateUninitializedArray<A>(_:)();
      v110 = v83;

      v84 = v106;
      v85 = v110;
      *v110 = v184;
      v85[1] = v84;

      v86 = v107;
      v87 = v110;
      v110[2] = v185;
      v87[3] = v86;

      v88 = v109;
      v89 = v110;
      v110[4] = v186;
      v89[5] = v88;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v111, v112))
      {
        v90 = v160;
        v93 = static UnsafeMutablePointer.allocate(capacity:)();
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v94 = createStorage<A>(capacity:type:)(0, v92, v92);
        v95 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v96 = &v259;
        v259 = v93;
        v97 = &v258;
        v258 = v94;
        v98 = &v257;
        v257 = v95;
        serialize(_:at:)(2, &v259);
        serialize(_:at:)(1, v96);
        v255 = v184;
        v256 = v106;
        closure #1 in osLogInternal(_:log:type:)(&v255, v96, v97, v98);
        v99 = v90;
        if (v90)
        {

          __break(1u);
        }

        else
        {
          v255 = v185;
          v256 = v107;
          closure #1 in osLogInternal(_:log:type:)(&v255, &v259, &v258, &v257);
          v91[1] = 0;
          v255 = v186;
          v256 = v109;
          closure #1 in osLogInternal(_:log:type:)(&v255, &v259, &v258, &v257);
          _os_log_impl(&dword_2686B1000, v111, v112, "#ContactDisambiguationStrategy<%s> handleType(for:) found .phoneAndEmail", v93, 0xCu);
          destroyStorage<A>(_:count:)(v94, 0, v92);
          destroyStorage<A>(_:count:)(v95, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v93, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v111);
      v162(v202, v212);
      return 2;
    }
  }

  return result;
}

uint64_t closure #1 in ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v10 = a2;
  v23 = 0;
  v22 = 0;
  v9 = 0;
  v20 = type metadata accessor for ResponseType();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v3);
  v21 = &v7 - v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v10);
  v16 = &v7 - v8;
  v23 = a1;
  v22 = v5;
  v13 = 0;
  v14 = 1;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v15 = type metadata accessor for NLContextUpdate();
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  (*(v11 + 16))(v16, v10);
  (*(v11 + 56))(v16, v13, v14, v15);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v18 + 104))(v21, *MEMORY[0x277D5BC50], v20);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t ContactDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t ContactDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  *(v0 + 16) = v0;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v1 = 11;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 17;
  swift_willThrow();
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t closure #1 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1)
{
  v9 = 0;
  v9 = *a1;
  v6 = [v9 contactIdentifier];
  if (v6)
  {
    v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4._object = v1;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  v3 = String.isEmpty.getter();

  return (v3 ^ 1) & 1;
}

uint64_t closure #2 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1)
{
  v9 = 0;
  v9 = *a1;
  v6 = [v9 customIdentifier];
  if (v6)
  {
    v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4._object = v1;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  v3 = String.isEmpty.getter();

  return (v3 ^ 1) & 1;
}

uint64_t closure #3 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *a1;
  v17 = a2;
  v18 = a3;

  v11 = [v19 contactIdentifier];
  if (v11)
  {
    *&v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7 + 1) = v3;
    MEMORY[0x277D82BD8](v11);
    v8 = v7;
  }

  else
  {
    v8 = 0uLL;
  }

  v15[0] = a2;
  v15[1] = a3;
  v16 = v8;
  if (!a3)
  {
    if (!*(&v16 + 1))
    {
      outlined destroy of String.UTF8View(v15);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String(v15, &v14);
  if (!*(&v16 + 1))
  {
    outlined destroy of String.UTF8View(&v14);
LABEL_11:
    outlined destroy of DIIdentifier(v15);
    v6 = 0;
    goto LABEL_10;
  }

  v13 = v14;
  v12 = v16;
  v5 = MEMORY[0x26D620740](v14, *(&v14 + 1), v16, *(&v16 + 1));
  outlined destroy of String.UTF8View(&v12);
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(v15);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t closure #4 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *a1;
  v17 = a2;
  v18 = a3;

  v11 = [v19 customIdentifier];
  if (v11)
  {
    *&v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7 + 1) = v3;
    MEMORY[0x277D82BD8](v11);
    v8 = v7;
  }

  else
  {
    v8 = 0uLL;
  }

  v15[0] = a2;
  v15[1] = a3;
  v16 = v8;
  if (!a3)
  {
    if (!*(&v16 + 1))
    {
      outlined destroy of String.UTF8View(v15);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String(v15, &v14);
  if (!*(&v16 + 1))
  {
    outlined destroy of String.UTF8View(&v14);
LABEL_11:
    outlined destroy of DIIdentifier(v15);
    v6 = 0;
    goto LABEL_10;
  }

  v13 = v14;
  v12 = v16;
  v5 = MEMORY[0x26D620740](v14, *(&v14 + 1), v16, *(&v16 + 1));
  outlined destroy of String.UTF8View(&v12);
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(v15);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t closure #5 in implicit closure #4 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*a1 displayName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MEMORY[0x26D620740](a2, a3, v3);

  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t closure #1 in static ContactDisambiguationStrategy.handleType(for:)(id *a1)
{
  v10 = 0;
  v10 = *a1;
  v7 = v10;
  v8 = INPerson.hasHandleLabel.getter();
  MEMORY[0x277D82BE0](v10);
  if (v8)
  {
    v6 = 1;
  }

  else
  {
    v6 = INPerson.hasHandleValue.getter();
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v10);
  if (v6)
  {
    v9 = [v10 personHandle];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      outlined destroy of SFRichText?(&v9);
      [v4 type];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      outlined destroy of SFRichText?(&v9);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for INPersonHandleType(0);
      lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](v7);
  return v2 & 1;
}

uint64_t closure #2 in static ContactDisambiguationStrategy.handleType(for:)(id *a1)
{
  v10 = 0;
  v10 = *a1;
  v7 = v10;
  v8 = INPerson.hasHandleLabel.getter();
  MEMORY[0x277D82BE0](v10);
  if (v8)
  {
    v6 = 1;
  }

  else
  {
    v6 = INPerson.hasHandleValue.getter();
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v10);
  if (v6)
  {
    v9 = [v10 personHandle];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      outlined destroy of SFRichText?(&v9);
      [v4 type];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      outlined destroy of SFRichText?(&v9);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for INPersonHandleType(0);
      lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](v7);
  return v2 & 1;
}

uint64_t ContactDisambiguationStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  outlined destroy of SFRichText?(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  return v2;
}

uint64_t protocol witness for ContactDisambiguationStrategyProviding.catFamily.getter in conformance ContactDisambiguationStrategy<A, B, C>@<X0>(uint64_t *a1@<X8>)
{
  result = ContactDisambiguationStrategy.catFamily.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[11];
  v4 = a2[12];
  v5 = a2[13];
  v10[0] = a2[10];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = type metadata accessor for ContactDisambiguationStrategy(0, v10);
  return MEMORY[0x26D61E450](a1, v6, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 32) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v7 = v3 + 16;
  v8 = v3 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    **(v7 + 8) = a1;
    v4 = *(*v8 + 8);
  }

  return v4();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v13 = v5;
  v5[6] = v5;
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a4[11];
  v8 = a4[12];
  v9 = a4[13];
  v13[2] = a4[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for ContactDisambiguationStrategy(0, (v13 + 2));
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F38](a1, a2, a3, v10, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>()
{
  v2 = *v1;
  *(v2 + 48) = *v1;
  v5 = v2 + 48;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v13 = v5;
  v5[6] = v5;
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a4[11];
  v8 = a4[12];
  v9 = a4[13];
  v13[2] = a4[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for ContactDisambiguationStrategy(0, (v13 + 2));
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F48](a1, a2, a3, v10, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = v4;
  v4[6] = v4;
  v5 = swift_task_alloc();
  v12[7] = v5;
  v6 = a3[11];
  v7 = a3[12];
  v8 = a3[13];
  v12[2] = a3[10];
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = type metadata accessor for ContactDisambiguationStrategy(0, (v12 + 2));
  *v5 = v12[6];
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = v4;
  v4[6] = v4;
  v5 = swift_task_alloc();
  v12[7] = v5;
  v6 = a3[11];
  v7 = a3[12];
  v8 = a3[13];
  v12[2] = a3[10];
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = type metadata accessor for ContactDisambiguationStrategy(0, (v12 + 2));
  *v5 = v12[6];
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[11];
  v4 = a2[12];
  v5 = a2[13];
  v7[0] = a2[10];
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for ContactDisambiguationStrategy(0, v7);
  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v14 = v6;
  v6[6] = v6;
  v7 = swift_task_alloc();
  v14[7] = v7;
  v8 = a5[11];
  v9 = a5[12];
  v10 = a5[13];
  v14[2] = a5[10];
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = type metadata accessor for ContactDisambiguationStrategy(0, (v14 + 2));
  *v7 = v14[6];
  v7[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v11, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = v7;
  v7[6] = v7;
  v8 = swift_task_alloc();
  v15[7] = v8;
  v9 = a6[11];
  v10 = a6[12];
  v11 = a6[13];
  v15[2] = a6[10];
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v12 = type metadata accessor for ContactDisambiguationStrategy(0, (v15 + 2));
  *v8 = v15[6];
  v8[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v12, a7);
}

uint64_t PayeeDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[21] = a2;
  v3[20] = a1;
  v3[14] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[17] = 0;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[23] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[24] = swift_task_alloc();
  v3[15] = a2;
  v3[16] = v2;

  return MEMORY[0x2822009F8](PayeeDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t PayeeDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  *(v0 + 112) = v0;

  type metadata accessor for SendPaymentCATs(0);
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v30 = v32;
  }

  else
  {

    v30 = 0;
  }

  v31[25] = v30;
  if (v30)
  {
    v29 = v31[21];
    v31[17] = v30;
    MEMORY[0x277D82BE0](v29);
    if (v29)
    {
      v26 = v31[21];
      v27 = v31[23];
      v23 = v31[22];
      v31[18] = v26;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v26);

      outlined init with copy of GlobalsProviding(v23 + 24, (v31 + 2));

      v25 = v31[5];
      v24 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v25);
      (*(v24 + 16))(v25);
      __swift_project_boxed_opaque_existential_1(v31 + 7, v31[10]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v28 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      v31[26] = v28;
      __swift_destroy_boxed_opaque_existential_0(v31 + 7);
      __swift_destroy_boxed_opaque_existential_0(v31 + 2);
      v31[19] = v28;
      SendPaymentSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v1 = type metadata accessor for SpeakableString();
      (*(*(v1 - 8) + 56))(v27, 0, 1);

      v2 = swift_task_alloc();
      v31[27] = v2;
      *v2 = v31[14];
      v2[1] = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
      v3 = v31[23];
      v4 = v31[20];

      return SendPaymentCATs.disambiguateSlotValue(slot:payee:)(v4, v3, v28);
    }

    v19 = SendPaymentSlots.rawValue.getter(0);
    v20 = v6;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
    v31[12] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v31[13] = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v10 = type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v10);
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v11);

    v18 = v31[12];
    v17 = v31[13];

    outlined destroy of String.UTF8View((v31 + 12));
    v22 = MEMORY[0x26D620710](v18, v17);
    v21 = v12;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v13 = v19;
    *(v13 + 8) = v20;
    *(v13 + 16) = v7;
    *(v13 + 32) = v22;
    *(v13 + 40) = v21;
    *(v13 + 48) = 9;
    swift_willThrow();
  }

  else
  {
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 6;
    swift_willThrow();
  }

  v16 = *(v31[14] + 8);

  return v16();
}

{
  v5 = *v1;
  v5[14] = *v1;
  v5[28] = v0;

  if (v0)
  {
    v2 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  else
  {
    v4 = v5[23];

    outlined destroy of SpeakableString?(v4);
    v2 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v3 = *(v0 + 168);
  *(v0 + 112) = v0;

  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v0 + 112) + 8);

  return v1();
}

{
  v3 = v0[23];
  v4 = v0[21];
  v0[14] = v0;

  outlined destroy of SpeakableString?(v3);

  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[14] + 8);

  return v1();
}

void *PayeeDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = 0;
  v11[8] = a1;
  v11[7] = a2;
  v11[6] = a3;
  v11[5] = a4;

  outlined init with copy of GlobalsProviding(a2, v11);
  MEMORY[0x277D82BE0](a3);
  outlined init with copy of GlobalsProviding(a4, v10);
  v9 = ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(a1, v11, a3, v10);

  v12 = v9;
  __swift_destroy_boxed_opaque_existential_0(a4);
  MEMORY[0x277D82BD8](a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v9;
}

uint64_t PayerDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[21] = a2;
  v3[20] = a1;
  v3[14] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[17] = 0;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[23] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[24] = swift_task_alloc();
  v3[15] = a2;
  v3[16] = v2;

  return MEMORY[0x2822009F8](PayerDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t PayerDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  *(v0 + 112) = v0;

  type metadata accessor for RequestPaymentCATs(0);
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v30 = v32;
  }

  else
  {

    v30 = 0;
  }

  v31[25] = v30;
  if (v30)
  {
    v29 = v31[21];
    v31[17] = v30;
    MEMORY[0x277D82BE0](v29);
    if (v29)
    {
      v26 = v31[21];
      v28 = v31[23];
      v23 = v31[22];
      v31[18] = v26;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v26);

      outlined init with copy of GlobalsProviding(v23 + 24, (v31 + 2));

      v25 = v31[5];
      v24 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v25);
      (*(v24 + 16))(v25);
      __swift_project_boxed_opaque_existential_1(v31 + 7, v31[10]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v27 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      v31[26] = v27;
      __swift_destroy_boxed_opaque_existential_0(v31 + 7);
      __swift_destroy_boxed_opaque_existential_0(v31 + 2);
      v31[19] = v27;
      RequestPaymentSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v1 = type metadata accessor for SpeakableString();
      (*(*(v1 - 8) + 56))(v28, 0, 1);
      v2 = swift_task_alloc();
      v31[27] = v2;
      *v2 = v31[14];
      v2[1] = PayerDisambiguationStrategy.disambiguationPromptDialog(person:);
      v3 = v31[23];
      v4 = v31[20];

      return RequestPaymentCATs.disambiguateSlotValue(slot:)(v4, v3);
    }

    v19 = RequestPaymentSlots.rawValue.getter(0);
    v20 = v6;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
    v31[12] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v31[13] = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v10 = type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v10);
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v11);

    v18 = v31[12];
    v17 = v31[13];

    outlined destroy of String.UTF8View((v31 + 12));
    v22 = MEMORY[0x26D620710](v18, v17);
    v21 = v12;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v13 = v19;
    *(v13 + 8) = v20;
    *(v13 + 16) = v7;
    *(v13 + 32) = v22;
    *(v13 + 40) = v21;
    *(v13 + 48) = 9;
    swift_willThrow();
  }

  else
  {
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#DisambiguateSlotValue", 0x24uLL, 1);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 6;
    swift_willThrow();
  }

  v16 = *(v31[14] + 8);

  return v16();
}

{
  v4 = *v1;
  v4[14] = *v1;
  v4[28] = v0;

  if (v0)
  {
    v2 = PayerDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[23]);
    v2 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[23];
  v4 = v0[21];
  v0[14] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[14] + 8);

  return v2();
}