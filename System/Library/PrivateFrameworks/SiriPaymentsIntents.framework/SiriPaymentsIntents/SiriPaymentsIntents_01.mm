uint64_t ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[11] = *v3;
  v6[34] = v2;
  v6[35] = a1;
  v6[36] = a2;

  if (v2)
  {
    v4 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  else
  {
    v4 = ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x26D620690](a1);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t protocol witness for ConfirmationViewBuilding.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:) in conformance ConfirmationViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for ConfirmationViewBuilding.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:) in conformance ConfirmationViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for ConfirmationViewBuilding.makeTCCAcceptanceView(app:) in conformance ConfirmationViewBuilder(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(a1);
}

unint64_t lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SAAceView()
{
  v2 = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAceView);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SATextDecorationRegion()
{
  v2 = lazy cache variable for type metadata for SATextDecorationRegion;
  if (!lazy cache variable for type metadata for SATextDecorationRegion)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SATextDecorationRegion);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTApplicationBannerItem()
{
  v2 = lazy cache variable for type metadata for SASTApplicationBannerItem;
  if (!lazy cache variable for type metadata for SASTApplicationBannerItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTApplicationBannerItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAAppsLaunchApp()
{
  v2 = lazy cache variable for type metadata for SAAppsLaunchApp;
  if (!lazy cache variable for type metadata for SAAppsLaunchApp)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAppsLaunchApp);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFAbstractCommand()
{
  v2 = lazy cache variable for type metadata for SFAbstractCommand;
  if (!lazy cache variable for type metadata for SFAbstractCommand)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFAbstractCommand);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFCardSection()
{
  v2 = lazy cache variable for type metadata for SFCardSection;
  if (!lazy cache variable for type metadata for SFCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRichTitleCardSection()
{
  v2 = lazy cache variable for type metadata for SFRichTitleCardSection;
  if (!lazy cache variable for type metadata for SFRichTitleCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRichTitleCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRowCardSection()
{
  v2 = lazy cache variable for type metadata for SFRowCardSection;
  if (!lazy cache variable for type metadata for SFRowCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRowCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INSendPaymentIntent()
{
  v2 = lazy cache variable for type metadata for INSendPaymentIntent;
  if (!lazy cache variable for type metadata for INSendPaymentIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSendPaymentIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SACardSnippet()
{
  v2 = lazy cache variable for type metadata for SACardSnippet;
  if (!lazy cache variable for type metadata for SACardSnippet)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SACardSnippet);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFRichText()
{
  v2 = lazy cache variable for type metadata for SFRichText;
  if (!lazy cache variable for type metadata for SFRichText)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFRichText);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INRequestPaymentIntent()
{
  v2 = lazy cache variable for type metadata for INRequestPaymentIntent;
  if (!lazy cache variable for type metadata for INRequestPaymentIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INRequestPaymentIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of (A, B)(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

void *outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1)
{

  outlined consume of Data._Representation(a1[8], a1[9]);
  outlined consume of Data._Representation(a1[10], a1[11]);

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

unint64_t type metadata accessor for INSendPaymentIntentResponse()
{
  v2 = lazy cache variable for type metadata for INSendPaymentIntentResponse;
  if (!lazy cache variable for type metadata for INSendPaymentIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSendPaymentIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v6 = a1[7];

  a2[7] = v6;
  v7 = a1[8];
  v8 = a1[9];
  outlined copy of Data._Representation(v7, v8);
  a2[8] = v7;
  a2[9] = v8;
  v9 = a1[10];
  v10 = a1[11];
  outlined copy of Data._Representation(v9, v10);
  a2[10] = v9;
  a2[11] = v10;
  a2[12] = a1[12];
  v13 = a1[13];

  result = a2;
  a2[13] = v13;
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v16 = (a1 + *(v6 + 24));
  v18 = (a2 + *(v6 + 24));
  *v18 = *v16;
  v8 = v16[1];

  v18[1] = v8;
  v18[2] = v16[2];
  v9 = v16[3];

  v18[3] = v9;
  v18[4] = v16[4];
  v10 = v16[5];

  v18[5] = v10;
  v18[6] = v16[6];
  v11 = v16[7];

  v18[7] = v11;
  v12 = v16[8];
  v13 = v16[9];
  outlined copy of Data._Representation(v12, v13);
  v18[8] = v12;
  v18[9] = v13;
  v14 = v16[10];
  v15 = v16[11];
  outlined copy of Data._Representation(v14, v15);
  v18[10] = v14;
  v18[11] = v15;
  v18[12] = v16[12];
  v19 = v16[13];

  result = a2;
  v18[13] = v19;
  return result;
}

char *outlined init with take of SiriPaymentsSnippetModel(char *a1, char *a2)
{
  v15 = type metadata accessor for SiriPaymentsSnippetModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
      (*(*(v4 - 8) + 32))(a2, a1);
      v9 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
      v8 = &a2[*(v9 + 20)];
      v7 = &a1[*(v9 + 20)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
      (*(*(v5 - 8) + 32))(v8, v7);
      memcpy(&a2[*(v9 + 24)], &a1[*(v9 + 24)], 0x70uLL);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v2 - 8) + 32))(a2, a1);
    v12 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    v11 = &a2[*(v12 + 20)];
    v10 = &a1[*(v12 + 20)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v3 - 8) + 32))(v11, v10);
    memcpy(&a2[*(v12 + 24)], &a1[*(v12 + 24)], 0x70uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v1 - 8) + 8))(a1);
  v5 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v4 = *(v5 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v2 - 8) + 8))(a1 + v4);
  v6 = a1 + *(v5 + 24);

  outlined consume of Data._Representation(*(v6 + 64), *(v6 + 72));
  outlined consume of Data._Representation(*(v6 + 80), *(v6 + 88));

  return a1;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined init with copy of SiriPaymentsSnippetModel(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SiriPaymentsSnippetModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
      (*(*(v4 - 8) + 16))(a2, a1);
      v17 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
      v16 = a2 + *(v17 + 20);
      v15 = a1 + *(v17 + 20);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
      (*(*(v5 - 8) + 16))(v16, v15);
      v27 = (a2 + *(v17 + 24));
      v26 = (a1 + *(v17 + 24));
      *v27 = *v26;
      v18 = v26[1];

      v27[1] = v18;
      v27[2] = v26[2];
      v19 = v26[3];

      v27[3] = v19;
      v27[4] = v26[4];
      v20 = v26[5];

      v27[5] = v20;
      v27[6] = v26[6];
      v21 = v26[7];

      v27[7] = v21;
      v22 = v26[8];
      v23 = v26[9];
      outlined copy of Data._Representation(v22, v23);
      v27[8] = v22;
      v27[9] = v23;
      v24 = v26[10];
      v25 = v26[11];
      outlined copy of Data._Representation(v24, v25);
      v27[10] = v24;
      v27[11] = v25;
      v27[12] = v26[12];
      v28 = v26[13];

      v27[13] = v28;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = *a1;

        *a2 = v13;
        a2[1] = a1[1];
        v14 = a1[2];

        a2[2] = v14;
      }

      else
      {
        v7 = *a1;
        v8 = a1[1];
        outlined copy of Data._Representation(*a1, v8);
        *a2 = v7;
        a2[1] = v8;
        a2[2] = a1[2];
        v9 = a1[3];

        a2[3] = v9;
        v10 = a1[4];
        v11 = a1[5];
        outlined copy of Data._Representation(v10, v11);
        a2[4] = v10;
        a2[5] = v11;
        a2[6] = a1[6];
        v12 = a1[7];

        a2[7] = v12;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v2 - 8) + 16))(a2, a1);
    v31 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    v30 = a2 + *(v31 + 20);
    v29 = a1 + *(v31 + 20);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v3 - 8) + 16))(v30, v29);
    v41 = (a2 + *(v31 + 24));
    v40 = (a1 + *(v31 + 24));
    *v41 = *v40;
    v32 = v40[1];

    v41[1] = v32;
    v41[2] = v40[2];
    v33 = v40[3];

    v41[3] = v33;
    v41[4] = v40[4];
    v34 = v40[5];

    v41[5] = v34;
    v41[6] = v40[6];
    v35 = v40[7];

    v41[7] = v35;
    v36 = v40[8];
    v37 = v40[9];
    outlined copy of Data._Representation(v36, v37);
    v41[8] = v36;
    v41[9] = v37;
    v38 = v40[10];
    v39 = v40[11];
    outlined copy of Data._Representation(v38, v39);
    v41[10] = v38;
    v41[11] = v39;
    v41[12] = v40[12];
    v42 = v40[13];

    v41[13] = v42;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t type metadata accessor for DialogExecutionResult()
{
  v2 = lazy cache variable for type metadata for DialogExecutionResult;
  if (!lazy cache variable for type metadata for DialogExecutionResult)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for DialogExecutionResult);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *outlined destroy of SiriPaymentsSnippetModel(uint64_t *a1)
{
  type metadata accessor for SiriPaymentsSnippetModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
        (*(*(v3 - 8) + 8))(a1);
        v7 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
        v6 = a1 + *(v7 + 20);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
        (*(*(v4 - 8) + 8))(v6);
        v8 = a1 + *(v7 + 24);

        outlined consume of Data._Representation(*(v8 + 8), *(v8 + 9));
        outlined consume of Data._Representation(*(v8 + 10), *(v8 + 11));

        break;
      case 2:

        break;
      case 3:
        outlined consume of Data._Representation(*a1, a1[1]);

        outlined consume of Data._Representation(a1[4], a1[5]);

        break;
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    (*(*(v1 - 8) + 8))(a1);
    v10 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    v9 = a1 + *(v10 + 20);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    (*(*(v2 - 8) + 8))(v9);
    v11 = a1 + *(v10 + 24);

    outlined consume of Data._Representation(*(v11 + 8), *(v11 + 9));
    outlined consume of Data._Representation(*(v11 + 10), *(v11 + 11));
  }

  return a1;
}

unint64_t type metadata accessor for INRequestPaymentIntentResponse()
{
  v2 = lazy cache variable for type metadata for INRequestPaymentIntentResponse;
  if (!lazy cache variable for type metadata for INRequestPaymentIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INRequestPaymentIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v16 = (a1 + *(v6 + 24));
  v18 = (a2 + *(v6 + 24));
  *v18 = *v16;
  v8 = v16[1];

  v18[1] = v8;
  v18[2] = v16[2];
  v9 = v16[3];

  v18[3] = v9;
  v18[4] = v16[4];
  v10 = v16[5];

  v18[5] = v10;
  v18[6] = v16[6];
  v11 = v16[7];

  v18[7] = v11;
  v12 = v16[8];
  v13 = v16[9];
  outlined copy of Data._Representation(v12, v13);
  v18[8] = v12;
  v18[9] = v13;
  v14 = v16[10];
  v15 = v16[11];
  outlined copy of Data._Representation(v14, v15);
  v18[10] = v14;
  v18[11] = v15;
  v18[12] = v16[12];
  v19 = v16[13];

  result = a2;
  v18[13] = v19;
  return result;
}

uint64_t outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v1 - 8) + 8))(a1);
  v5 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v4 = *(v5 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v2 - 8) + 8))(a1 + v4);
  v6 = a1 + *(v5 + 24);

  outlined consume of Data._Representation(*(v6 + 64), *(v6 + 72));
  outlined consume of Data._Representation(*(v6 + 80), *(v6 + 88));

  return a1;
}

unint64_t type metadata accessor for SAUIConfirmationOption()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationOption;
  if (!lazy cache variable for type metadata for SAUIConfirmationOption)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationOption);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  v2 = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIConfirmationView()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationView;
  if (!lazy cache variable for type metadata for SAUIConfirmationView)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationView);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAIntentGroupSendPaymentSnippet()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet;
  if (!lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupSendPaymentSnippet);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAIntentGroupProtobufMessage()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupProtobufMessage;
  if (!lazy cache variable for type metadata for SAIntentGroupProtobufMessage)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIConfirmationOptions()
{
  v2 = lazy cache variable for type metadata for SAUIConfirmationOptions;
  if (!lazy cache variable for type metadata for SAUIConfirmationOptions)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIConfirmationOptions);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewBuilder.WalletAppLaunchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationViewBuilder.WalletAppLaunchAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SASTItemGroup and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject)
  {
    type metadata accessor for SASTItemGroup();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SASTItemGroup and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsContinueInAppStrategy.init(globals:commonLabelsProvider:errorTemplateProvider:)(void *a1, void *a2, void *a3)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = 0;
  v6 = *v3;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = *(v6 + 80);
  v20 = *(v6 + 88);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v7 + 16))(v8);
  outlined init with take of CommonLabelsProviding(v18, (v15 + 16));
  outlined init with copy of GlobalsProviding(a2, v17);
  outlined init with take of CommonLabelsProviding(v17, (v15 + 56));
  v11 = a3[3];
  v9 = a3[4];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v11);
  v16[3] = v11;
  v16[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10);
  outlined init with take of CommonLabelsProviding(v16, (v15 + 96));
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

uint64_t PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[88] = v2;
  v3[87] = a2;
  v3[86] = a1;
  v3[76] = v3;
  v3[77] = 0;
  v3[78] = 0;
  v3[79] = 0;
  v3[72] = 0;
  v3[73] = 0;
  v3[74] = 0;
  v3[75] = 0;
  v9 = *v2;
  v3[89] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[91] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v3[92] = v4;
  v3[93] = *(v4 - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[96] = v5;
  v3[97] = *(v5 - 8);
  v3[98] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[99] = v6;
  v3[100] = *(v6 - 8);
  v3[101] = swift_task_alloc();
  v3[77] = a2;
  v3[102] = *(v9 + 80);
  v3[103] = *(v9 + 88);
  v3[78] = v2;

  return MEMORY[0x2822009F8](PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0);
}

{
  v8 = *v3;
  v6 = (*v3 + 16);
  v7 = (*v3 + 496);
  v8[76] = *v3;
  v8[110] = v2;
  v8[111] = a1;
  v8[112] = a2;

  if (v2)
  {
    v4 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    (*(v6[91] + 8))(v6[93], v6[90]);
    __swift_destroy_boxed_opaque_existential_0(v7);

    v4 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v8 = *v3;
  v6 = (*v3 + 16);
  v7 = (*v3 + 376);
  v8[76] = *v3;
  v8[115] = v2;
  v8[116] = a1;
  v8[117] = a2;

  if (v2)
  {
    v4 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    (*(v6[91] + 8))(v6[92], v6[90]);
    __swift_destroy_boxed_opaque_existential_0(v7);

    v4 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  v1 = v0[101];
  v20 = v0[100];
  v21 = v0[99];
  v0[76] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v20 + 16))(v1, v2, v21);
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v19 + 656) = v15;
    *(v19 + 664) = v16;
    *(v19 + 672) = v17;
    serialize(_:at:)(0, (v19 + 656));
    serialize(_:at:)(0, (v19 + 656));
    *(v19 + 680) = v24;
    v18 = swift_task_alloc();
    v18[2] = v19 + 656;
    v18[3] = v19 + 664;
    v18[4] = v19 + 672;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v23, v22, "#PaymentsContinueInAppStrategy makeContinueInAppResponse", v15, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v15, MEMORY[0x277D84B78]);
  }

  v12 = *(v19 + 808);
  v13 = *(v19 + 792);
  v11 = *(v19 + 800);
  MEMORY[0x277D82BD8](v23);
  (*(v11 + 8))(v12, v13);
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    *(v19 + 944) = 0;
    v10 = 0;
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      *(v19 + 944) = 1;
      v10 = 1;
    }

    else
    {
      type metadata accessor for INSearchForAccountsIntent();
      if (swift_dynamicCastMetatype())
      {
        *(v19 + 944) = 2;
        v10 = 2;
      }

      else
      {
        *(v19 + 944) = 1;
        v10 = 1;
      }
    }
  }

  outlined init with copy of GlobalsProviding(*(v19 + 704) + 96, v19 + 16);
  v7 = *(v19 + 40);
  v8 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v7);
  *(v19 + 832) = type metadata accessor for IntentResolutionRecord();
  v6 = IntentResolutionRecord.app.getter();
  *(v19 + 840) = v6;
  v9 = (*(v8 + 40) + **(v8 + 40));
  v3 = swift_task_alloc();
  *(v19 + 848) = v3;
  *v3 = *(v19 + 608);
  v3[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v4 = *(v19 + 784);

  return v9(v4, v10, v6, v7, v8);
}

{
  v4 = *v1;
  *(v4 + 608) = *v1;
  *(v4 + 856) = v0;

  if (v0)
  {
    v2 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {

    v2 = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v34 = v0[88];
  v0[76] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  type metadata accessor for SAAceView();
  v0[79] = Array.init()();
  outlined init with copy of GlobalsProviding(v34 + 16, (v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v35 = dispatch thunk of DeviceState.isPhone.getter();

  if (v35)
  {

    __swift_destroy_boxed_opaque_existential_0(v33 + 7);
  }

  else
  {
    outlined init with copy of GlobalsProviding(v33[88] + 16, (v33 + 12));
    __swift_project_boxed_opaque_existential_1(v33 + 12, v33[15]);
    v32 = dispatch thunk of DeviceState.isPad.getter();
    __swift_destroy_boxed_opaque_existential_0(v33 + 12);

    __swift_destroy_boxed_opaque_existential_0(v33 + 7);

    if ((v32 & 1) == 0)
    {
      outlined init with copy of GlobalsProviding(v33[88] + 16, (v33 + 17));
      __swift_project_boxed_opaque_existential_1(v33 + 17, v33[20]);
      v31 = dispatch thunk of DeviceState.isPod.getter();
      __swift_destroy_boxed_opaque_existential_0(v33 + 17);

      if ((v31 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  outlined init with copy of GlobalsProviding(v33[88] + 16, (v33 + 52));
  __swift_project_boxed_opaque_existential_1(v33 + 52, v33[55]);
  v30 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0(v33 + 52);
  if ((v30 & 1) == 0)
  {
    v25 = v33[88];
    outlined init with copy of GlobalsProviding(v25 + 56, (v33 + 57));
    v26 = v33[60];
    v27 = v33[61];
    __swift_project_boxed_opaque_existential_1(v33 + 57, v26);
    v29 = IntentResolutionRecord.app.getter();
    v33[108] = v29;
    outlined init with copy of GlobalsProviding(v25 + 16, (v33 + 62));
    __swift_project_boxed_opaque_existential_1(v33 + 62, v33[65]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v28 = (*(v27 + 32) + **(v27 + 32));
    v1 = swift_task_alloc();
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v1;
    v6 = v29;
    v33[109] = v5;
    *v5 = v33[76];
    v5[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
    v7 = v33[95];

    return v4(v6, v7, v2, v3);
  }

LABEL_10:
  outlined init with copy of GlobalsProviding(v33[88] + 16, (v33 + 22));
  __swift_project_boxed_opaque_existential_1(v33 + 22, v33[25]);
  v24 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v33 + 22);
  if (v24)
  {
    v19 = v33[88];
    outlined init with copy of GlobalsProviding(v19 + 56, (v33 + 42));
    v20 = v33[45];
    v21 = v33[46];
    __swift_project_boxed_opaque_existential_1(v33 + 42, v20);
    v23 = IntentResolutionRecord.app.getter();
    v33[113] = v23;
    outlined init with copy of GlobalsProviding(v19 + 16, (v33 + 47));
    __swift_project_boxed_opaque_existential_1(v33 + 47, v33[50]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v22 = (*(v21 + 32) + **(v21 + 32));
    v9 = swift_task_alloc();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v10 = v9;
    v6 = v23;
    v33[114] = v10;
    *v10 = v33[76];
    v10[1] = PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
    v7 = v33[94];

    return v4(v6, v7, v2, v3);
  }

  v17 = v33[98];
  v16 = v33[96];
  v18 = v33[90];
  v13 = v33[88];
  v14 = v33[86];
  v15 = v33[97];
  outlined init with copy of GlobalsProviding(v13 + 16, (v33 + 27));
  outlined init with copy of GlobalsProviding(v13 + 16, (v33 + 32));
  __swift_project_boxed_opaque_existential_1(v33 + 32, v33[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();

  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v18, 1);
  v33[37] = 0;
  v33[38] = 0;
  v33[39] = 0;
  v33[40] = 0;
  v33[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v14[3] = type metadata accessor for AceOutput();
  v14[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v14);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v33 + 37);
  outlined destroy of NLContextUpdate?(v18);

  __swift_destroy_boxed_opaque_existential_0(v33 + 32);
  __swift_destroy_boxed_opaque_existential_0(v33 + 27);
  outlined destroy of [SFCardSection](v33 + 79);
  (*(v15 + 8))(v17, v16);

  v12 = *(v33[76] + 8);

  return v12();
}

{
  v10 = v0[112];
  v6 = v0[111];
  v7 = v0[91];
  v5 = v0[88];
  v0[76] = v0;
  v0[74] = v6;
  v0[75] = v10;
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  v8 = IntentResolutionRecord.app.getter();
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 56))(v7, 1);
  outlined init with copy of GlobalsProviding(v5 + 16, (v0 + 67));
  v9 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(v8, v6, v10, v7, v0 + 67);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  outlined destroy of URL?(v7);

  v0[81] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  Array.append(_:)();

  v15 = v0[98];
  v13 = v0[97];
  v14 = v0[96];
  v16 = v0[90];
  v11 = v0[88];
  v12 = v0[86];
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v11 + 16, (v0 + 32));
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();

  v2 = type metadata accessor for NLContextUpdate();
  (*(*(v2 - 8) + 56))(v16, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v12[3] = type metadata accessor for AceOutput();
  v12[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v12);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v13 + 8))(v15, v14);

  v3 = *(v0[76] + 8);

  return v3();
}

{
  v8 = v0[117];
  v4 = v0[116];
  v0[76] = v0;
  v0[72] = v4;
  v0[73] = v8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v6 = IntentResolutionRecord.app.getter();
  v5 = IntentResolutionRecord.intent.getter();
  v7 = static ConfirmationViewBuilder.makeWatchAppLaunchButton(for:buttonText:intent:)(v6, v4, v8, v5);
  MEMORY[0x277D82BD8](v5);

  v0[80] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  Array.append(_:)();

  v13 = v0[98];
  v11 = v0[97];
  v12 = v0[96];
  v14 = v0[90];
  v9 = v0[88];
  v10 = v0[86];
  outlined init with copy of GlobalsProviding(v9 + 16, (v0 + 27));
  outlined init with copy of GlobalsProviding(v9 + 16, (v0 + 32));
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v14, 1);
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[40] = 0;
  v0[41] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v10[3] = type metadata accessor for AceOutput();
  v10[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v10);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 37);
  outlined destroy of NLContextUpdate?(v14);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v11 + 8))(v13, v12);

  v2 = *(v0[76] + 8);

  return v2();
}

{
  *(v0 + 608) = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 608) + 8);

  return v1();
}

{
  v8 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[92];
  v0[76] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);

  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v6 + 8))(v8, v7);

  v4 = *(v0[76] + 8);

  return v4();
}

{
  v8 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v0[76] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  outlined destroy of [SFCardSection](v0 + 79);
  (*(v6 + 8))(v8, v7);

  v4 = *(v0[76] + 8);

  return v4();
}

uint64_t PaymentsContinueInAppStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return v2;
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance PaymentsContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2);
}

uint64_t type metadata completion function for PaymentsContinueInAppStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t instantiation function for generic protocol witness table for PaymentsContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[6] = a1;
  v9[5] = a2;
  v4 = type metadata accessor for Globals();
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9);
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  result = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v8, v7, v6);
  a3[3] = v4;
  a3[4] = &protocol witness table for Globals;
  *a3 = result;
  return result;
}

uint64_t default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v6 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0, v2);
  v7 = &v5 - v6;
  type metadata accessor for PaymentsBaseCATs(v3);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t PaymentsRCHFlowStrategy.init(globals:contactResolver:)(void *a1, void *a2)
{
  v32 = a2;
  v31 = a1;
  v43 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v29 = 0;
  v38 = *v2;
  v40 = type metadata accessor for Logger();
  v33 = v40;
  v34 = *(v40 - 8);
  v39 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  v3 = &v11 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  v57 = MEMORY[0x28223BE20](v31, v32);
  v56 = v4;
  v55 = v5;
  v54 = *(v38 + 80);
  v53 = *(v38 + 88);
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v39 + 16))(v3, v6, v40);
  v45 = Logger.logObject.getter();
  v41 = v45;
  v44 = static os_log_type_t.debug.getter();
  v42 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    v7 = v29;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = 0;
    v21 = createStorage<A>(capacity:type:)(0, v17, v17);
    v19 = v21;
    v22 = createStorage<A>(capacity:type:)(v18, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v50 = v20;
    v49 = v21;
    v48 = v22;
    v23 = 0;
    v24 = &v50;
    serialize(_:at:)(0, &v50);
    serialize(_:at:)(v23, v24);
    v47 = v46;
    v25 = &v11;
    MEMORY[0x28223BE20](&v11, v8);
    v26 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v49;
    *(&v11 - 2) = &v48;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v28 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v41, v42, "#PaymentsRCHFlowStrategy init", v16, 2u);
      v14 = 0;
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v22, v14, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v16, MEMORY[0x277D84B78]);

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v35 + 8))(v37, v33);
  v12 = v52;
  outlined init with copy of GlobalsProviding(v31, v52);
  outlined init with take of CommonLabelsProviding(v12, (v30 + 16));
  v13 = v51;
  outlined init with copy of GlobalsProviding(v32, v51);
  outlined init with take of CommonLabelsProviding(v13, (v30 + 56));
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v30;
}

uint64_t PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[40] = v2;
  v3[39] = a2;
  v3[38] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[25] = 0;
  v7 = *v2;
  v3[41] = *v2;
  v4 = type metadata accessor for Logger();
  v3[42] = v4;
  v3[43] = *(v4 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[48] = swift_task_alloc();
  v3[18] = a1;
  v3[19] = a2;
  v3[49] = *(v7 + 80);
  v3[20] = v2;

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v75 = v0[48];
  v1 = v0[47];
  v76 = v0[43];
  v77 = v0[42];
  v0[17] = v0;
  v2 = SignpostName.makeIntentFromParse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v75);
  v3 = Logger.payments.unsafeMutableAddressor();
  v78 = *(v76 + 16);
  v78(v1, v3, v77);
  v80 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v81 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v80, v79))
  {
    v70 = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v71 = createStorage<A>(capacity:type:)(0, v69, v69);
    v72 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 272) = v70;
    *(v74 + 280) = v71;
    *(v74 + 288) = v72;
    serialize(_:at:)(0, (v74 + 272));
    serialize(_:at:)(0, (v74 + 272));
    *(v74 + 296) = v81;
    v73 = swift_task_alloc();
    v73[2] = v74 + 272;
    v73[3] = v74 + 280;
    v73[4] = v74 + 288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v80, v79, "#PaymentsRCHFlowStrategy makeIntentFromParse", v70, 2u);
    destroyStorage<A>(_:count:)(v71, 0, v69);
    destroyStorage<A>(_:count:)(v72, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v70, MEMORY[0x277D84B78]);
  }

  v63 = *(v74 + 376);
  v4 = *(v74 + 368);
  v65 = *(v74 + 336);
  v62 = *(v74 + 344);
  MEMORY[0x277D82BD8](v80);
  v64 = *(v62 + 8);
  v64(v63, v65);
  v5 = Logger.payments.unsafeMutableAddressor();
  v78(v4, v5, v65);
  oslog = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v68 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v66))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v59 = createStorage<A>(capacity:type:)(0, v57, v57);
    v60 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 240) = buf;
    *(v74 + 248) = v59;
    *(v74 + 256) = v60;
    serialize(_:at:)(0, (v74 + 240));
    serialize(_:at:)(0, (v74 + 240));
    *(v74 + 264) = v68;
    v61 = swift_task_alloc();
    v61[2] = v74 + 240;
    v61[3] = v74 + 248;
    v61[4] = v74 + 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v66, "#PaymentsRCHFlowStrategy Transforming Parse to SiriKitPaymentsIntent.", buf, 2u);
    destroyStorage<A>(_:count:)(v59, 0, v57);
    destroyStorage<A>(_:count:)(v60, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v54 = *(v74 + 368);
  v55 = *(v74 + 336);
  v56 = *(v74 + 312);
  MEMORY[0x277D82BD8](oslog);
  v64(v54, v55);
  MEMORY[0x277D82BE0](v56);
  if (v56)
  {
    v52 = *(v74 + 312);
    v53 = *(*(v74 + 328) + 96);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v50 = *(v74 + 320);
  outlined init with copy of GlobalsProviding(v50 + 16, v74 + 16);
  v49 = *(v74 + 40);
  v48 = *(v74 + 48);
  __swift_project_boxed_opaque_existential_1((v74 + 16), v49);
  (*(v48 + 24))(v49);
  outlined init with copy of GlobalsProviding(v50 + 56, v74 + 96);
  v51 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v52, v53, v74 + 56, v74 + 96);
  __swift_destroy_boxed_opaque_existential_0((v74 + 96));
  __swift_destroy_boxed_opaque_existential_0((v74 + 56));
  __swift_destroy_boxed_opaque_existential_0((v74 + 16));
  MEMORY[0x277D82BD8](v52);
  if (v51)
  {
    v47 = swift_dynamicCastUnknownClass();
    if (v47)
    {
      v46 = v47;
    }

    else
    {
      MEMORY[0x277D82BD8](v51);
      v46 = 0;
    }

    v45 = v46;
  }

  else
  {
    v45 = 0;
  }

  if (v45)
  {
    v6 = *(v74 + 360);
    v41 = *(v74 + 336);
    *(v74 + 200) = v45;
    v7 = Logger.payments.unsafeMutableAddressor();
    v78(v6, v7, v41);
    log = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v42))
    {
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = createStorage<A>(capacity:type:)(0, v36, v36);
      v39 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v74 + 208) = v37;
      *(v74 + 216) = v38;
      *(v74 + 224) = v39;
      serialize(_:at:)(0, (v74 + 208));
      serialize(_:at:)(0, (v74 + 208));
      *(v74 + 232) = v44;
      v40 = swift_task_alloc();
      v40[2] = v74 + 208;
      v40[3] = v74 + 216;
      v40[4] = v74 + 224;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, log, v42, "#PaymentsRCHFlowStrategy Returning SiriKitPaymentsIntent.", v37, 2u);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v37, MEMORY[0x277D84B78]);
    }

    v34 = *(v74 + 384);
    v35 = *(v74 + 360);
    v33 = *(v74 + 336);
    MEMORY[0x277D82BD8](log);
    v64(v35, v33);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v34);

    v8 = v45;
    v9 = *(*(v74 + 136) + 8);

    return v9(v8);
  }

  v11 = *(v74 + 352);
  v29 = *(v74 + 336);
  v12 = Logger.payments.unsafeMutableAddressor();
  v78(v11, v12, v29);
  v31 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0, v24, v24);
    v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 168) = v25;
    *(v74 + 176) = v26;
    *(v74 + 184) = v27;
    serialize(_:at:)(0, (v74 + 168));
    serialize(_:at:)(0, (v74 + 168));
    *(v74 + 192) = v32;
    v28 = swift_task_alloc();
    v28[2] = v74 + 168;
    v28[3] = v74 + 176;
    v28[4] = v74 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v31, v30, "#PaymentsRCHFlowStrategy could not convert to SiriKitPaymentsIntent.", v25, 2u);
    destroyStorage<A>(_:count:)(v26, 0, v24);
    destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v25, MEMORY[0x277D84B78]);
  }

  v21 = *(v74 + 352);
  v22 = *(v74 + 336);
  MEMORY[0x277D82BD8](v31);
  v64(v21, v22);
  v23 = [swift_getObjCClassFromMetadata() typeName];
  if (v23)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v13;
    MEMORY[0x277D82BD8](v23);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (v20)
  {
    v15 = *(v74 + 384);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 10;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v15);

    v8 = v16;
    v9 = *(*(v74 + 136) + 8);

    return v9(v8);
  }

  return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/PaymentsRCHFlowStrategy.swift", 49, 2, 38, 0);
}

uint64_t PaymentsRCHFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v7[1] = a1;
  v3 = v2;
  v9 = v3;
  v21 = 0;
  v20 = 0;
  v11 = *v3;
  v10 = v3;
  v17 = type metadata accessor for Parse();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v5);
  v16 = v7 - v8;
  v21 = a1;
  v20 = v9;
  v13 = v11[10];
  v19 = v13;
  v18 = v11[11];
  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v16, v13, v11[12], v12);
  return (*(v14 + 8))(v16, v17);
}

uint64_t PaymentsRCHFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v33 = a3;
  v36 = a2;
  v35 = a1;
  v31 = a5;
  v47 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v32 = 0;
  v42 = *v5;
  v44 = type metadata accessor for Logger();
  v37 = v44;
  v38 = *(v44 - 8);
  v43 = v38;
  v39 = v38;
  v40 = *(v38 + 64);
  v6 = &v16 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  v60 = MEMORY[0x28223BE20](v35, v36);
  v59 = v7;
  v58 = *(v42 + 80);
  v56 = v8;
  v57 = v9;
  v55 = v10;
  v54[1] = *(v42 + 88);
  v11 = Logger.payments.unsafeMutableAddressor();
  (*(v43 + 16))(v6, v11, v44);
  v49 = Logger.logObject.getter();
  v45 = v49;
  v48 = static os_log_type_t.debug.getter();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v12 = v32;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = 0;
    v23 = createStorage<A>(capacity:type:)(0, v19, v19);
    v21 = v23;
    v24 = createStorage<A>(capacity:type:)(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54[0] = v22;
    v53 = v23;
    v52 = v24;
    v25 = 0;
    v26 = v54;
    serialize(_:at:)(0, v54);
    serialize(_:at:)(v25, v26);
    v51 = v50;
    v27 = &v16;
    MEMORY[0x28223BE20](&v16, v13);
    v28 = &v16 - 6;
    *(&v16 - 4) = v14;
    *(&v16 - 3) = &v53;
    *(&v16 - 2) = &v52;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v30 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v45, v46, "#PaymentsRCHFlowStrategy makeAppDoesNotSupportIntentResponse", v18, 2u);
      v16 = 0;
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v24, v16, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v18, MEMORY[0x277D84B78]);

      v17 = v30;
    }
  }

  else
  {

    v17 = v32;
  }

  (*(v39 + 8))(v41, v37);
  type metadata accessor for EmptyOutput();
  return static EmptyOutput.instance.getter();
}

uint64_t PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v9 = *v2;
  v3[6] = *v2;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = *(v9 + 80);
  v3[5] = v7;
  v3[11] = *(v9 + 88);

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v34 = v0;
  v18 = v0[11];
  v17 = v0[10];
  v1 = v0[9];
  v15 = v0[8];
  v16 = v0[7];
  v19 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = *(v19 + 96);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v3;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_2686B1000, v27, v28, "#PaymentsRCHFlowStrategy<%s> makeIntentExecutionBehavior", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v14[9];
  v7 = v14[7];
  v6 = v14[8];
  MEMORY[0x277D82BD8](v27);
  (*(v6 + 8))(v8, v7);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v9 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v14[2] + 8);

  return v4(v9);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v11 = *v4;
  v5[9] = *v4;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[13] = *(v11 + 80);
  v5[5] = a4;
  v5[14] = *(v11 + 88);
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v40 = v0;
  v18 = v0[14];
  v17 = v0[13];
  v1 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v20 = v0[8];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  v21 = swift_allocObject();
  v21[2] = v17;
  v21[3] = v18;
  v19 = *(v16 + 96);
  v21[4] = v19;
  MEMORY[0x277D82BE0](v20);
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v23 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  *(v25 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v32 = v3;

  *v32 = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[1] = v26;

  v32[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v27;

  v32[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[5] = v28;

  v32[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[7] = v29;

  v32[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[9] = v30;

  v32[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[11] = v31;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v33, v34))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v11;
    v37 = v12;
    serialize(_:at:)(2, &v35);
    serialize(_:at:)(2, &v35);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_2686B1000, v33, v34, "#PaymentsRCHFlowStrategy<%s> makeFailureConfirmingIntentResponse %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v13[12];
  v7 = v13[10];
  v6 = v13[11];
  MEMORY[0x277D82BD8](v33);
  (*(v6 + 8))(v8, v7);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v4 = *(v13[2] + 8);

  return v4();
}

uint64_t implicit closure #2 in PaymentsRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  swift_getWitnessTable();
  return String.init<A>(describing:)();
}

uint64_t PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[32] = v2;
  v3[31] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v8 = *v2;
  v3[33] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  type metadata accessor for CATOption();
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[28] = a2;
  v3[44] = *(v8 + 80);
  v3[45] = *(v8 + 88);
  v3[29] = v2;

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v41 = v0;
  v25 = v0[45];
  v24 = v0[44];
  v1 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v26 = v0[33];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = *(v26 + 96);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v33 = v3;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v34, v35))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0, v17, v17);
    v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v19;
    v38 = v20;
    serialize(_:at:)(2, &v36);
    serialize(_:at:)(1, &v36);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_2686B1000, v34, v35, "#PaymentsRCHFlowStrategy<%s> makeFailureHandlingIntentResponse", buf, 0xCu);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v21[43];
  v12 = v21[41];
  v13 = v21[36];
  v14 = v21[35];
  v10 = v21[42];
  MEMORY[0x277D82BD8](v34);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for PaymentsBaseCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  v21[46] = v4;
  v21[30] = v4;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1);
  String.toSpeakableString.getter();

  v15 = type metadata accessor for SpeakableString();
  v16 = *(*(v15 - 8) + 56);
  v16(v13);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
  String.toSpeakableString.getter();

  (v16)(v14, 0, 1, v15);
  v5 = swift_task_alloc();
  v21[47] = v5;
  *v5 = v21[27];
  v5[1] = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v6 = v21[39];
  v7 = v21[36];
  v8 = v21[35];

  return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v6, v7, 0, v8);
}

{
  v5 = *v1;
  v5[27] = *v1;
  v5[48] = v0;

  if (v0)
  {
    v2 = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v4 = v5[36];
    outlined destroy of SpeakableString?(v5[35]);
    outlined destroy of SpeakableString?(v4);
    v2 = PaymentsRCHFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v12 = v0[39];
  v10 = v0[38];
  v11 = v0[37];
  v13 = v0[34];
  v6 = v0[32];
  v9 = v0[31];
  v0[27] = v0;
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 2));
  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);
  outlined init with copy of GlobalsProviding(v6 + 16, (v0 + 12));
  v8 = v0[15];
  v7 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  (*(v7 + 16))(v8);
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v13, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v10 + 8))(v12, v11);

  v2 = *(v0[27] + 8);

  return v2();
}

{
  v4 = v0[36];
  v1 = v0[35];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  v2 = *(v0[27] + 8);

  return v2();
}

uint64_t PaymentsRCHFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 288) = v2;
  *(v3 + 280) = a2;
  *(v3 + 272) = a1;
  *(v3 + 216) = v3;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 520) = 0;
  v10 = *v2;
  *(v3 + 296) = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v4 = type metadata accessor for BargeInError();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();
  type metadata accessor for CATOption();
  *(v3 + 368) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v3 + 376) = v5;
  *(v3 + 384) = *(v5 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 424) = v6;
  *(v3 + 432) = *(v6 - 8);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 224) = a2;
  *(v3 + 232) = v9;
  *(v3 + 464) = *(v10 + 80);
  *(v3 + 472) = *(v10 + 88);

  return MEMORY[0x2822009F8](PaymentsRCHFlowStrategy.makeErrorResponse(error:), 0);
}

uint64_t PaymentsRCHFlowStrategy.makeErrorResponse(error:)()
{
  v116 = v0;
  v81 = v0[59];
  v80 = v0[58];
  v1 = v0[57];
  v77 = v0[54];
  v78 = v0[53];
  v82 = v0[37];
  v84 = v0[35];
  v0[27] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v79 = *(v77 + 16);
  v79(v1, v2, v78);
  v85 = swift_allocObject();
  v85[2] = v80;
  v85[3] = v81;
  v83 = *(v82 + 96);
  v85[4] = v83;
  MEMORY[0x26D621420](v84);
  v88 = swift_allocObject();
  *(v88 + 16) = v84;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v86 = swift_allocObject();
  *(v86 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v86 + 24) = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v87 + 24) = v86;
  v92 = swift_allocObject();
  *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v92 + 24) = v87;
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  *(v89 + 24) = v88;
  v95 = swift_allocObject();
  *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v95 + 24) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v96 = v3;

  *v96 = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[1] = v90;

  v96[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[3] = v91;

  v96[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[5] = v92;

  v96[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[7] = v93;

  v96[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[9] = v94;

  v96[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v96[11] = v95;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v97, v98))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v74 = createStorage<A>(capacity:type:)(0, v72, v72);
    v75 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v111 = buf;
    v112 = v74;
    v113 = v75;
    serialize(_:at:)(2, &v111);
    serialize(_:at:)(2, &v111);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    _os_log_impl(&dword_2686B1000, v97, v98, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse for error: %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v74, 0, v72);
    destroyStorage<A>(_:count:)(v75, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v67 = *(v76 + 456);
  v68 = *(v76 + 424);
  v71 = *(v76 + 280);
  v66 = *(v76 + 432);
  MEMORY[0x277D82BD8](v97);
  v69 = *(v66 + 8);
  v69(v67, v68);
  type metadata accessor for PaymentsBaseCATs(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v70 = CATWrapper.__allocating_init(options:globals:)();
  *(v76 + 480) = v70;
  *(v76 + 240) = v70;
  MEMORY[0x26D621420](v71);
  *(v76 + 248) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v76 + 352) + 8))(*(v76 + 360), *(v76 + 344));
    MEMORY[0x26D621420](*(v76 + 280));

    *(v76 + 520) = 1;
LABEL_17:
    v50 = *(v76 + 472);
    v49 = *(v76 + 464);
    v4 = *(v76 + 448);
    v48 = *(v76 + 424);
    v5 = Logger.payments.unsafeMutableAddressor();
    v79(v4, v5, v48);
    v51 = swift_allocObject();
    v51[2] = v49;
    v51[3] = v50;
    v51[4] = v83;
    oslog = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
    *(v52 + 24) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v56 + 24) = v53;
    _allocateUninitializedArray<A>(_:)();
    v57 = v6;

    *v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[1] = v54;

    v57[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v55;

    v57[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v59))
    {
      v45 = static UnsafeMutablePointer.allocate(capacity:)();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v46 = createStorage<A>(capacity:type:)(0, v44, v44);
      v47 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v104 = v45;
      v105 = v46;
      v106 = v47;
      serialize(_:at:)(2, &v104);
      serialize(_:at:)(1, &v104);
      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      _os_log_impl(&dword_2686B1000, oslog, v59, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse vending TIMEOUT response", v45, 0xCu);
      destroyStorage<A>(_:count:)(v46, 0, v44);
      destroyStorage<A>(_:count:)(v47, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v45, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v38 = *(v76 + 448);
    v39 = *(v76 + 424);
    v40 = *(v76 + 336);
    v41 = *(v76 + 328);
    MEMORY[0x277D82BD8](oslog);
    v69(v38, v39);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TIMEOUT", 7uLL, 1);
    String.toSpeakableString.getter();

    v42 = type metadata accessor for SpeakableString();
    v43 = *(*(v42 - 8) + 56);
    v43(v40);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
    String.toSpeakableString.getter();

    (v43)(v41, 0, 1, v42);
    v7 = swift_task_alloc();
    *(v76 + 488) = v7;
    *v7 = *(v76 + 216);
    v7[1] = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
    v8 = *(v76 + 408);
    v9 = *(v76 + 336);
    v10 = *(v76 + 328);

    return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v8, v9, 0, v10);
  }

  MEMORY[0x26D621420](*(v76 + 280));
  v65 = *(v76 + 280);
  MEMORY[0x26D621420]();
  *(v76 + 256) = v65;
  type metadata accessor for CommandFailure();
  if (swift_dynamicCast())
  {
    v64 = *(v76 + 264);
  }

  else
  {
    v64 = 0;
  }

  if (v64)
  {
    v61 = CommandFailure.errorCode.getter();

    v62 = v61;
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 1;
  }

  if (v63)
  {
    v60 = 0;
  }

  else
  {
    v109 = v62;
    v110 = v63 & 1;
    v60 = v62 == 1307;
  }

  *(v76 + 520) = v60;
  if (v60)
  {
    goto LABEL_17;
  }

  v28 = *(v76 + 472);
  v27 = *(v76 + 464);
  v12 = *(v76 + 440);
  v26 = *(v76 + 424);
  v13 = Logger.payments.unsafeMutableAddressor();
  v79(v12, v13, v26);
  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = v28;
  v29[4] = v83;
  log = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v34 + 24) = v31;
  _allocateUninitializedArray<A>(_:)();
  v35 = v14;

  *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[1] = v32;

  v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[3] = v33;

  v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v37))
  {
    v23 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0, v22, v22);
    v25 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v99 = v23;
    v100 = v24;
    v101 = v25;
    serialize(_:at:)(2, &v99);
    serialize(_:at:)(1, &v99);
    v102 = partial apply for closure #1 in OSLogArguments.append(_:);
    v103 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v102, &v99, &v100, &v101);
    v102 = partial apply for closure #1 in OSLogArguments.append(_:);
    v103 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v102, &v99, &v100, &v101);
    v102 = partial apply for closure #1 in OSLogArguments.append(_:);
    v103 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v102, &v99, &v100, &v101);
    _os_log_impl(&dword_2686B1000, log, v37, "#PaymentsRCHFlowStrategy<%s> makeErrorResponse vending generic response", v23, 0xCu);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v16 = *(v76 + 440);
  v17 = *(v76 + 424);
  v18 = *(v76 + 320);
  v19 = *(v76 + 312);
  MEMORY[0x277D82BD8](log);
  v69(v16, v17);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  String.toSpeakableString.getter();

  v20 = type metadata accessor for SpeakableString();
  v21 = *(*(v20 - 8) + 56);
  v21(v18);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1);
  String.toSpeakableString.getter();

  (v21)(v19, 0, 1, v20);
  v15 = swift_task_alloc();
  *(v76 + 504) = v15;
  *v15 = *(v76 + 216);
  v15[1] = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v8 = *(v76 + 400);
  v9 = *(v76 + 320);
  v10 = *(v76 + 312);

  return PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(v8, v9, 0, v10);
}

{
  v5 = *v1;
  v5[27] = *v1;
  v5[62] = v0;

  if (v0)
  {
    v2 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  else
  {
    v4 = v5[42];
    outlined destroy of SpeakableString?(v5[41]);
    outlined destroy of SpeakableString?(v4);
    v2 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[47];
  v0[27] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v17 = v0[52];
  v18 = v0[49];
  v14 = v0[48];
  v15 = v0[47];
  v19 = v0[38];
  v10 = v0[36];
  v13 = v0[34];
  (*(v14 + 16))();
  outlined init with copy of GlobalsProviding(v10 + 16, (v0 + 2));
  v9 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  (*(v8 + 16))(v9);
  outlined init with copy of GlobalsProviding(v10 + 16, (v0 + 12));
  v12 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v12);
  (*(v11 + 16))(v12);
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v19, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v13[3] = type metadata accessor for AceOutput();
  v13[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v13);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v16 = *(v14 + 8);
  v16(v18, v15);

  v16(v17, v15);

  v6 = *(v0[27] + 8);

  return v6();
}

{
  v5 = *v1;
  v5[27] = *v1;
  v5[64] = v0;

  if (v0)
  {
    v2 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  else
  {
    v4 = v5[40];
    outlined destroy of SpeakableString?(v5[39]);
    outlined destroy of SpeakableString?(v4);
    v2 = PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[47];
  v0[27] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v17 = v0[52];
  v18 = v0[49];
  v14 = v0[48];
  v15 = v0[47];
  v19 = v0[38];
  v10 = v0[36];
  v13 = v0[34];
  (*(v14 + 16))();
  outlined init with copy of GlobalsProviding(v10 + 16, (v0 + 2));
  v9 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  (*(v8 + 16))(v9);
  outlined init with copy of GlobalsProviding(v10 + 16, (v0 + 12));
  v12 = v0[15];
  v11 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v12);
  (*(v11 + 16))(v12);
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v19, 1);
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v13[3] = type metadata accessor for AceOutput();
  v13[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v13);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 22);
  outlined destroy of NLContextUpdate?(v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v16 = *(v14 + 8);
  v16(v18, v15);

  v16(v17, v15);

  v6 = *(v0[27] + 8);

  return v6();
}

{
  v4 = v0[42];
  v1 = v0[41];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  v2 = *(v0[27] + 8);

  return v2();
}

{
  v4 = v0[40];
  v1 = v0[39];
  v0[27] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v4);

  v2 = *(v0[27] + 8);

  return v2();
}

uint64_t PaymentsRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v2;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsRCHFlowStrategy.makeErrorResponse(error:)(a1, a2);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v10 + 24) = v6;
  v7 = type metadata accessor for PaymentsRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v6 = *(v10 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D90](a1, a2, a3, v7, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v10 + 24) = v6;
  v7 = type metadata accessor for PaymentsRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v6 = *(v10 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D88](a1, a2, a3, v7, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v10 + 24) = v6;
  v7 = type metadata accessor for PaymentsRCHFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v6 = *(v10 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D80](a1, a2, a3, v7, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v11 + 24) = v7;
  v8 = type metadata accessor for PaymentsRCHFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v7 = *(v11 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(**v4 + 160) + **(**v4 + 160));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = v4;
  v5[40] = a4;
  v5[39] = a3;
  v5[38] = a2;
  v5[37] = a1;
  v5[31] = v5;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  v5[35] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[36] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v5[43] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[47] = v7;
  v5[48] = *(v7 - 8);
  v5[49] = swift_task_alloc();
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = a4;
  v5[35] = v4;

  return MEMORY[0x2822009F8](SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v43 = v0;
  v1 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v2 = v0[40];
  v0[31] = v0;
  v27 = static PaymentIntentCATResponseCode.from(_:)([v2 code]);
  v28 = v3;
  v0[50] = v3;
  v0[27] = v27;
  v0[28] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v4, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0, v20, v20);
    v23 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_2686B1000, v35, v36, "#SendPaymentFlowStrategy makeFailureConfirmingIntentResponse, code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v24[49];
  v16 = v24[47];
  v14 = v24[48];
  MEMORY[0x277D82BD8](v35);
  (*(v14 + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v18 = type metadata accessor for INSendPaymentIntent();
  v24[51] = v18;
  v17 = type metadata accessor for INSendPaymentIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17, v37);
  v19 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v6 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v7 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v37, v19, v6);
  v24[52] = v7;
  v24[36] = v7;
  v8 = swift_task_alloc();
  v24[53] = v8;
  *v8 = v24[31];
  v8[1] = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v9 = v24[43];
  v10 = v24[40];
  v11 = v24[39];
  v12 = v24[38];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v9, v11, v10, v12);
}

{
  v4 = *v1;
  *(v4 + 248) = *v1;
  *(v4 + 432) = v0;

  if (v0)
  {
    v2 = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v2 = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v0[31] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v12 = v27[51];
    outlined destroy of TemplatingResult?(v27[43]);
    v27[29] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[30] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)(v12);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v8);

    v14 = v27[29];
    v13 = v27[30];

    outlined destroy of String.UTF8View((v27 + 29));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v9;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v10 = v16;
    *(v10 + 8) = v15;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 16;
    swift_willThrow();

    v5 = *(v27[31] + 8);
  }

  else
  {
    v25 = v27[46];
    v24 = v27[44];
    v26 = v27[42];
    v19 = v27[41];
    v22 = v27[37];
    v23 = v27[45];
    (*(v23 + 32))();

    outlined init with copy of GlobalsProviding(v19 + 16, (v27 + 2));

    v18 = v27[5];
    v17 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v18);
    (*(v17 + 16))(v18);

    outlined init with copy of GlobalsProviding(v19 + 16, (v27 + 12));

    v21 = v27[15];
    v20 = v27[16];
    __swift_project_boxed_opaque_existential_1(v27 + 12, v21);
    (*(v20 + 16))(v21);
    __swift_project_boxed_opaque_existential_1(v27 + 17, v27[20]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
    v27[22] = 0;
    v27[23] = 0;
    v27[24] = 0;
    v27[25] = 0;
    v27[26] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v22[3] = type metadata accessor for AceOutput();
    v22[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v22);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 22);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 17);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    (*(v23 + 8))(v25, v24);

    v5 = *(v27[31] + 8);
  }

  return v5();
}

{
  *(v0 + 248) = v0;

  v1 = *(*(v0 + 248) + 8);

  return v1();
}

uint64_t SendPaymentFlowStrategy.init(globals:contactResolver:)(void *a1, void *a2)
{
  v8 = 0;
  v7[6] = a1;
  v7[5] = a2;
  outlined init with copy of GlobalsProviding(a1, v7);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = PaymentsRCHFlowStrategy.init(globals:contactResolver:)(v7, v6);

  v8 = v5;
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return v5;
}

uint64_t RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = v4;
  v5[40] = a4;
  v5[39] = a3;
  v5[38] = a2;
  v5[37] = a1;
  v5[31] = v5;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  v5[35] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[36] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v5[43] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[47] = v7;
  v5[48] = *(v7 - 8);
  v5[49] = swift_task_alloc();
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = a4;
  v5[35] = v4;

  return MEMORY[0x2822009F8](RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t RequestPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v43 = v0;
  v1 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v2 = v0[40];
  v0[31] = v0;
  v27 = static PaymentIntentCATResponseCode.from(_:)([v2 code]);
  v28 = v3;
  v0[50] = v3;
  v0[27] = v27;
  v0[28] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v4, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0, v20, v20);
    v23 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v39 = v22;
    v40 = v23;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_2686B1000, v35, v36, "#RequestPaymentFlowStrategy makeFailureConfirmingIntentResponse %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v24[49];
  v16 = v24[47];
  v14 = v24[48];
  MEMORY[0x277D82BD8](v35);
  (*(v14 + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v18 = type metadata accessor for INRequestPaymentIntent();
  v24[51] = v18;
  v17 = type metadata accessor for INRequestPaymentIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17, v37);
  v19 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v6 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v18, v17);
  v7 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v37, v19, v6);
  v24[52] = v7;
  v24[36] = v7;
  v8 = swift_task_alloc();
  v24[53] = v8;
  *v8 = v24[31];
  v8[1] = SendPaymentFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v9 = v24[43];
  v10 = v24[40];
  v11 = v24[39];
  v12 = v24[38];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v9, v11, v10, v12);
}

uint64_t SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = v4;
  v5[38] = a4;
  v5[37] = a3;
  v5[36] = a2;
  v5[35] = a1;
  v5[29] = v5;
  v5[30] = 0;
  v5[31] = 0;
  v5[32] = 0;
  v5[33] = 0;
  v5[34] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v5[41] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  v5[30] = a2;
  v5[31] = a3;
  v5[32] = a4;
  v5[33] = v4;

  return MEMORY[0x2822009F8](SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0);
}

uint64_t SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  v40 = v0;
  v1 = v0[47];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[38];
  v0[29] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v23 + 16))(v1, v2, v24);
  MEMORY[0x277D82BE0](v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[1] = v28;

  v31[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[3] = v29;

  v31[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v32, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0, v18, v18);
    v21 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v20;
    v37 = v21;
    serialize(_:at:)(2, &v35);
    serialize(_:at:)(1, &v35);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_2686B1000, v32, v33, "#SearchForAccountsFlowStrategy makeFailureConfirmingIntentResponse for response %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v22[47];
  v14 = v22[45];
  v12 = v22[46];
  MEMORY[0x277D82BD8](v32);
  (*(v12 + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v16 = type metadata accessor for INSearchForAccountsIntent();
  v22[48] = v16;
  v15 = type metadata accessor for INSearchForAccountsIntentResponse();
  default argument 0 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v34);
  v17 = default argument 1 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15);
  v4 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v16, v15);
  v5 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v34, v17, v4);
  v22[49] = v5;
  v22[34] = v5;
  v6 = swift_task_alloc();
  v22[50] = v6;
  *v6 = v22[29];
  v6[1] = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v7 = v22[41];
  v8 = v22[38];
  v9 = v22[37];
  v10 = v22[36];

  return PaymentsErrorTemplateProvider.errorWithCode(intent:intentResponse:app:)(v7, v9, v8, v10);
}

{
  v4 = *v1;
  *(v4 + 232) = *v1;
  *(v4 + 408) = v0;

  if (v0)
  {
    v2 = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v2 = SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[41];
  v0[29] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v12 = v27[48];
    outlined destroy of TemplatingResult?(v27[41]);
    v27[27] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[28] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)(v12);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v8);

    v14 = v27[27];
    v13 = v27[28];

    outlined destroy of String.UTF8View((v27 + 27));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v9;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v10 = v16;
    *(v10 + 8) = v15;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 16;
    swift_willThrow();

    v5 = *(v27[29] + 8);
  }

  else
  {
    v25 = v27[44];
    v24 = v27[42];
    v26 = v27[40];
    v19 = v27[39];
    v22 = v27[35];
    v23 = v27[43];
    (*(v23 + 32))();

    outlined init with copy of GlobalsProviding(v19 + 16, (v27 + 2));

    v18 = v27[5];
    v17 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v18);
    (*(v17 + 16))(v18);

    outlined init with copy of GlobalsProviding(v19 + 16, (v27 + 12));

    v21 = v27[15];
    v20 = v27[16];
    __swift_project_boxed_opaque_existential_1(v27 + 12, v21);
    (*(v20 + 16))(v21);
    __swift_project_boxed_opaque_existential_1(v27 + 17, v27[20]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
    v27[22] = 0;
    v27[23] = 0;
    v27[24] = 0;
    v27[25] = 0;
    v27[26] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v22[3] = type metadata accessor for AceOutput();
    v22[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v22);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 22);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 17);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    (*(v23 + 8))(v25, v24);

    v5 = *(v27[29] + 8);
  }

  return v5();
}

{
  *(v0 + 232) = v0;

  v1 = *(*(v0 + 232) + 8);

  return v1();
}

uint64_t implicit closure #1 in SearchForAccountsFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSearchForAccountsIntentResponse();
  lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostID();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t outlined destroy of TemplatingResult?(uint64_t a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata completion function for PaymentsRCHFlowStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for SendPaymentFlowStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentFlowStrategy;
  if (!type metadata singleton initialization cache for SendPaymentFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SendPaymentFlowStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for RequestPaymentFlowStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentFlowStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata accessor for SearchForAccountsFlowStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsFlowStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject)
  {
    type metadata accessor for INSearchForAccountsIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSearchForAccountsIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t UsoTaskBuilder.asUsoGraph()@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v12 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v13 = partial apply for closure #1 in OSLogArguments.append(_:);
  v14 = partial apply for closure #1 in OSLogArguments.append(_:);
  v15 = partial apply for closure #1 in OSLogArguments.append(_:);
  v16 = "Fatal error";
  v17 = "SiriPaymentsIntents/UsoTaskBuilder+SiriPayments.swift";
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v22 = &v9[-v21];
  v23 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v2);
  v35 = &v9[-v26];
  v42 = &v9[-v26];
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v3);
  v33 = &v9[-v27];
  v41 = v4;
  v31 = type metadata accessor for UsoTaskBuilder();
  v28 = _allocateUninitializedArray<A>(_:)();
  v30 = v5;

  *v30 = v29;
  _finalizeUninitializedArray<A>(_:)();
  v34 = v6;
  v32 = 1;
  UsoBuilderOptions.init(longhandDefinedValues:)();
  v7 = type metadata accessor for UsoBuilderOptions();
  (*(*(v7 - 8) + 56))(v33, 0, v32);
  v36 = MEMORY[0x26D61F5F0](v34, v33);
  outlined destroy of UsoBuilderOptions?(v33);

  v40 = v36;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v38 = 0;
  (*(v24 + 16))(v10, v35, v23);
  (*(v24 + 8))(v35, v23);
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v3 = type metadata accessor for UsoBuilderOptions();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t AppResolutionStateProvider.init(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v15 = a1;
  v26 = a2;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = 0;
  v17 = type metadata accessor for AppResolutionStateProvider();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v21 = *(v18 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0, v26);
  v22 = &v8 - v20;
  v23 = v20;
  MEMORY[0x28223BE20](v3, v4);
  v24 = &v8 - v23;
  v33 = &v8 - v23;
  v31 = v5;
  v32 = v6;
  type metadata accessor for SAIntentGroupSiriKitAppSelectionState();
  v25 = SAUIAppPunchOut.__allocating_init()();
  v30 = v25;

  if (v26)
  {
    v12 = v15;
    v13 = v26;
    v11 = v26;
    v8 = v15;
    v28 = v15;
    v29 = v26;
    type metadata accessor for SASyncAppIdentifyingInfo();
    v10 = SAUIAppPunchOut.__allocating_init()();
    v27 = v10;

    v9 = MEMORY[0x26D620690](v8, v11);

    [v10 setBundleId_];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BE0](v10);
    [v25 setRequestedApp_];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BE0](v25);
  AppResolutionStateProvider.init(appSelectionState:)();
  (*(v18 + 32))(v24, v22, v17);
  MEMORY[0x277D82BD8](v25);
  (*(v18 + 16))(v14, v24, v17);

  return (*(v18 + 8))(v24, v17);
}

unint64_t type metadata accessor for SAIntentGroupSiriKitAppSelectionState()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState;
  if (!lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupSiriKitAppSelectionState);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASyncAppIdentifyingInfo()
{
  v2 = lazy cache variable for type metadata for SASyncAppIdentifyingInfo;
  if (!lazy cache variable for type metadata for SASyncAppIdentifyingInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASyncAppIdentifyingInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter()
{
  swift_beginAccess();
  v5 = *(v0 + 16);

  swift_endAccess();
  if (v5)
  {
    return v5;
  }

  v2 = closure #1 in PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();

  swift_beginAccess();
  *(v4 + 16) = v2;

  swift_endAccess();
  return v2;
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter()
{
  type metadata accessor for INSiriAuthorizationStatus(0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = 3;
  v0[1] = 0;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus();
  return Set.init(arrayLiteral:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

void (*PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();
  return PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify;
}

void PaymentsAppResolutionFlowStrategy.authorizationRestrictions.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(v2);
    outlined destroy of [SFCardSection](a1);
  }

  else
  {
    PaymentsAppResolutionFlowStrategy.authorizationRestrictions.setter(*a1);
  }
}

uint64_t PaymentsAppResolutionFlowStrategy.appResolutionService.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.appResolutionService.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t PaymentsAppResolutionFlowStrategy.baseCATs.getter()
{
  v2 = *(v0 + 152);

  return v2;
}

uint64_t PaymentsAppResolutionFlowStrategy.init(appResolutionService:commonLabelsProvider:contactResolver:deviceState:baseCATs:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v6 = *v5;
  v23 = a1;
  v22 = *(v6 + 80);
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = v5;
  v5[2] = 0;

  v5[3] = a1;
  outlined init with copy of GlobalsProviding(a2, v16);
  outlined init with take of CommonLabelsProviding(v16, v5 + 4);
  outlined init with copy of GlobalsProviding(a3, v15);
  outlined init with take of CommonLabelsProviding(v15, v5 + 9);
  outlined init with copy of GlobalsProviding(a4, v14);
  outlined init with take of CommonLabelsProviding(v14, v5 + 14);

  v5[19] = a5;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v13;
}

uint64_t PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1)
{
  v2[110] = v1;
  v2[109] = a1;
  v2[80] = v2;
  v2[81] = 0;
  v2[82] = 0;
  v2[83] = 0;
  v2[72] = 0;
  v2[73] = 0;
  v2[84] = 0;
  v2[85] = 0;
  v2[165] = 0;
  v2[92] = 0;
  v2[99] = 0;
  v2[100] = 0;
  v2[101] = 0;
  v2[76] = 0;
  v2[77] = 0;
  v2[106] = 0;
  v9 = *v1;
  v2[111] = *v1;
  v3 = type metadata accessor for Input();
  v2[112] = v3;
  v7 = *(v3 - 8);
  v2[113] = v7;
  v2[114] = *(v7 + 64);
  v2[115] = swift_task_alloc();
  v2[116] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v2[119] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[120] = v4;
  v2[121] = *(v4 - 8);
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v2[133] = v5;
  v2[134] = *(v5 - 8);
  v2[135] = swift_task_alloc();
  v2[81] = a1;
  v2[82] = v8;
  v2[136] = *(v9 + 80);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1144) = a1;

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1312) = a1;

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v92 = v0;
  v83 = v0[135];
  v82 = v0[134];
  v84 = v0[133];
  v81 = v0[110];
  v0[80] = v0;
  Input.parse.getter();
  static AceService.currentAsync.getter();
  outlined init with copy of GlobalsProviding(v81 + 72, (v0 + 7));
  v85 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, (v0 + 2), (v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v82 + 8))(v83, v84);
  if (v85)
  {
    v79 = swift_dynamicCastUnknownClass();
    if (v79)
    {
      v78 = v79;
    }

    else
    {
      MEMORY[0x277D82BD8](v85);
      v78 = 0;
    }

    v77 = v78;
  }

  else
  {
    v77 = 0;
  }

  *(v80 + 1096) = v77;
  if (!v77)
  {
    v15 = *(v80 + 976);
    v27 = *(v80 + 960);
    v31 = *(v80 + 920);
    v32 = *(v80 + 896);
    v29 = *(v80 + 872);
    v26 = *(v80 + 968);
    v28 = *(v80 + 904);
    v16 = Logger.payments.unsafeMutableAddressor();
    (*(v26 + 16))(v15, v16, v27);
    (*(v28 + 16))(v31, v29, v32);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v33 = swift_allocObject();
    (*(v28 + 32))(v33 + v30, v31, v32);
    log = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
    *(v34 + 24) = v33;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v37 + 24) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v38 = v17;

    *v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[1] = v35;

    v38[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[3] = v36;

    v38[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v37;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v40))
    {
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v86 = v23;
      v87 = v24;
      v88 = v25;
      serialize(_:at:)(2, &v86);
      serialize(_:at:)(1, &v86);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_2686B1000, log, v40, "#PaymentsAppResolutionFlowStrategy resolveApp parse provided could not be converted to a known intent. %s", v23, 0xCu);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v80 + 976);
    v21 = *(v80 + 960);
    v19 = *(v80 + 968);
    MEMORY[0x277D82BD8](log);
    (*(v19 + 8))(v20, v21);
    type metadata accessor for AppResolutionAction();
    v68 = static AppResolutionAction.noAppFound()();
LABEL_36:

    v18 = *(*(v80 + 640) + 8);

    return v18(v68);
  }

  *(v80 + 664) = v77;
  MEMORY[0x277D82BE0](v77);
  key = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
  swift_beginAccess();
  v76 = objc_getAssociatedObject(v77, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v76)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v80 + 160, v80 + 128);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v80 + 128) = 0;
    *(v80 + 136) = 0;
    *(v80 + 144) = 0;
    *(v80 + 152) = 0;
  }

  *(v80 + 96) = *(v80 + 128);
  *(v80 + 112) = *(v80 + 144);
  if (*(v80 + 120))
  {
    if (swift_dynamicCast())
    {
      v74 = *(v80 + 624);
    }

    else
    {
      v74 = 0;
    }

    v73 = v74;
  }

  else
  {
    outlined destroy of FlowActivity?((v80 + 96));
    v73 = 0;
  }

  *(v80 + 1104) = v73._object;
  *(v80 + 576) = v73;
  v91 = v73;
  if (v73._object)
  {
    v70 = *(v80 + 952);
    v1 = SignpostName.resolveApp.unsafeMutableAddressor();
    static Signpost.begin(_:)(*v1, v1[1], *(v1 + 16), v70);
    *(v80 + 1152) = type metadata accessor for App();

    v71 = App.__allocating_init(appIdentifier:)();
    v72 = App.isFirstParty.getter(v71);

    if (v72)
    {
      v66 = *(v80 + 952);
      type metadata accessor for AppResolutionAction();
      static AppUtil.walletApp.getter();
      v67 = static AppResolutionAction.select(app:)();

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v66);

      MEMORY[0x277D82BD8](v77);
      v68 = v67;
    }

    else
    {

      *(v80 + 608) = v73;
      swift_beginAccess();

      swift_endAccess();
      v65 = PaymentsAppResolver.isAppOnDevice(_:)(v73);

      if (v65)
      {

        v43 = *(v80 + 1088);
        v44 = *(v80 + 888);
        v46 = swift_allocObject();
        *(v80 + 1160) = v46;
        *(v80 + 672) = v46 + 16;
        *(v46 + 16) = Array.init()();
        v47 = swift_allocObject();
        *(v80 + 1168) = v47;
        *(v80 + 680) = v47 + 16;
        *(v47 + 16) = 0;
        v48 = swift_allocBox();
        v41 = v8;
        *(v80 + 1176) = v48;
        *(v80 + 1184) = v8;
        *(v80 + 1320) = v8;
        v9 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
        *(v80 + 1192) = v9;
        v42 = *(v9 - 8);
        *(v80 + 1200) = v42;
        (*(v42 + 56))(v41, 1);
        v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resolveApp(input:)", 0x12uLL, 1);
        *(v80 + 1208) = v10._object;
        v45 = swift_allocObject();
        *(v80 + 1216) = v45;

        swift_weakInit();

        MEMORY[0x277D82BE0](v77);

        v11 = swift_task_alloc();
        *(v80 + 1224) = v11;
        *(v11 + 16) = v43;
        v12 = *(v44 + 88);
        *(v80 + 1232) = v12;
        *(v11 + 24) = v12;
        *(v11 + 32) = v45;
        *(v11 + 40) = v77;
        *(v11 + 48) = v73;
        *(v11 + 64) = v46;
        *(v11 + 72) = v47;
        *(v11 + 80) = v48;
        v13 = swift_task_alloc();
        *(v80 + 1240) = v13;
        *v13 = *(v80 + 640);
        v13[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);
        v14 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822007B8](v49, 0, 0, v10._countAndFlagsBits, v10._object, partial apply for closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:), v11, v14);
      }

      v6 = *(v80 + 1048);
      v61 = *(v80 + 960);
      v60 = *(v80 + 968);
      v7 = Logger.payments.unsafeMutableAddressor();
      (*(v60 + 16))(v6, v7, v61);
      oslog = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v64 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v62))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v57 = createStorage<A>(capacity:type:)(0, v55, v55);
        v58 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v80 + 816) = buf;
        *(v80 + 824) = v57;
        *(v80 + 832) = v58;
        serialize(_:at:)(0, (v80 + 816));
        serialize(_:at:)(0, (v80 + 816));
        *(v80 + 840) = v64;
        v59 = swift_task_alloc();
        v59[2] = v80 + 816;
        v59[3] = v80 + 824;
        v59[4] = v80 + 832;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v62, "#PaymentsAppResolutionFlowStrategy resolveApp initial app search didn't find app, returning noAppFound", buf, 2u);
        destroyStorage<A>(_:count:)(v57, 0, v55);
        destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      v51 = *(v80 + 1048);
      v52 = *(v80 + 960);
      v53 = *(v80 + 952);
      v50 = *(v80 + 968);
      MEMORY[0x277D82BD8](oslog);
      (*(v50 + 8))(v51, v52);
      type metadata accessor for AppResolutionAction();
      v54 = static AppResolutionAction.noAppFound()();

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v53);

      MEMORY[0x277D82BD8](v77);
      v68 = v54;
    }

    goto LABEL_36;
  }

  v2 = *(v80 + 880);
  v3 = swift_allocObject();
  *(v80 + 1112) = v3;
  *(v80 + 848) = v3 + 16;
  swift_beginAccess();
  *(v80 + 1120) = *(v2 + 24);

  swift_endAccess();
  v69 = PaymentsAppResolutionFlowStrategy.authorizationRestrictions.getter();
  *(v80 + 1128) = v69;
  v4 = swift_task_alloc();
  *(v80 + 1136) = v4;
  *v4 = *(v80 + 640);
  v4[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);

  return PaymentsAppResolver.listApps(siriAuthorizationRestriction:)(v69);
}

{
  v42 = v0;
  v1 = v0[143];
  v29 = v0[139];
  v26 = v0[132];
  v27 = v0[121];
  v28 = v0[120];
  v0[80] = v0;
  *(v29 + 16) = v1;
  PaymentsAppResolutionFlowStrategy.finalizeAppsForDisambiguation(_:)((v29 + 16));
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v26, v2, v28);

  oslog = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v3;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0, v21, v21);
    v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v23;
    v39 = v24;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, oslog, v36, "#PaymentsAppResolutionFlowStrategy resolveApp found supporting apps %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v16 = v25[132];
  v17 = v25[120];
  v18 = (v25[139] + 16);
  v15 = v25[121];
  MEMORY[0x277D82BD8](oslog);
  (*(v15 + 8))(v16, v17);
  swift_beginAccess();
  v19 = *v18;

  swift_endAccess();
  type metadata accessor for App();
  v20 = MEMORY[0x26D620910](v19);

  if (v20 == 1)
  {
    v12 = v25[137];
    type metadata accessor for AppResolutionAction();
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v13 = static AppResolutionAction.select(app:)();

    MEMORY[0x277D82BD8](v12);
    v14 = v13;
  }

  else
  {
    v9 = v25[139];
    swift_beginAccess();
    v10 = *(v9 + 16);

    swift_endAccess();
    v25[107] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    lazy protocol witness table accessor for type [App] and conformance [A]();
    v11 = Collection.isEmpty.getter();

    type metadata accessor for AppResolutionAction();
    if (v11)
    {
      v8 = static AppResolutionAction.noAppFound()();
    }

    else
    {
      swift_beginAccess();

      swift_endAccess();
      v7 = static AppResolutionAction.disambiguate(apps:)();

      v8 = v7;
    }

    v6 = v25[137];

    MEMORY[0x277D82BD8](v6);
    v14 = v8;
  }

  v4 = *(v25[80] + 8);

  return v4(v14);
}

{
  v2 = *(*v0 + 1096);
  *(*v0 + 640) = *v0;

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.resolveApp(input:), 0);
}

{
  v87 = v0;
  v74 = v0[150];
  v76 = v0[149];
  v73 = v0[148];
  v75 = v0[118];
  v0[80] = v0;
  swift_beginAccess();
  outlined init with copy of AppResolutionResult.AppResolutionResultError?(v73, v75);
  swift_endAccess();
  if ((*(v74 + 48))(v75, 1, v76) == 1)
  {
    outlined destroy of AppResolutionResult.AppResolutionResultError?(v72[118]);
    goto LABEL_14;
  }

  v69 = v72[149];
  v70 = v72[117];
  v68 = v72[150];
  outlined init with copy of AppResolutionResult.AppResolutionResultError?(v72[118], v70);
  v71 = (*(v68 + 88))(v70, v69);
  if (v71 == *MEMORY[0x277D553F0])
  {
    v64 = v72[119];
    v63 = v72[118];
    v62 = v72[117];
    v65 = v72[137];
    (*(v72[150] + 96))();
    v72[101] = *v62;
    type metadata accessor for AppResolutionAction();
    v66 = static AppResolutionAction.appNotSupported(app:)();

    outlined destroy of AppResolutionResult.AppResolutionResultError?(v63);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v64);

    MEMORY[0x277D82BD8](v65);
    v67 = v66;
  }

  else if (v71 == *MEMORY[0x277D553F8])
  {
    v55 = v72[119];
    v54 = v72[118];
    v53 = v72[117];
    v56 = v72[137];
    (*(v72[150] + 96))();
    v72[100] = *v53;
    type metadata accessor for AppResolutionAction();
    v57 = static AppResolutionAction.screenTimeEnabled(app:)();

    outlined destroy of AppResolutionResult.AppResolutionResultError?(v54);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v55);

    MEMORY[0x277D82BD8](v56);
    v67 = v57;
  }

  else
  {
    if (v71 != *MEMORY[0x277D553E8])
    {
      v43 = v72[154];
      v42 = v72[136];
      v1 = v72[130];
      v41 = v72[120];
      v40 = v72[121];
      (*(v72[150] + 8))(v72[117], v72[149]);
      v2 = Logger.payments.unsafeMutableAddressor();
      (*(v40 + 16))(v1, v2, v41);
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      oslog = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = 32;
      v48 = swift_allocObject();
      *(v48 + 16) = 8;
      v45 = swift_allocObject();
      *(v45 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v45 + 24) = v44;
      v46 = swift_allocObject();
      *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v46 + 24) = v45;
      v49 = swift_allocObject();
      *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v49 + 24) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v50 = v3;

      *v50 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50[1] = v47;

      v50[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v50[3] = v48;

      v50[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v50[5] = v49;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v52))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v38 = createStorage<A>(capacity:type:)(0, v36, v36);
        v39 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v82 = buf;
        v83 = v38;
        v84 = v39;
        serialize(_:at:)(2, &v82);
        serialize(_:at:)(1, &v82);
        v85 = partial apply for closure #1 in OSLogArguments.append(_:);
        v86 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
        v85 = partial apply for closure #1 in OSLogArguments.append(_:);
        v86 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
        v85 = partial apply for closure #1 in OSLogArguments.append(_:);
        v86 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
        _os_log_impl(&dword_2686B1000, oslog, v52, "#PaymentsAppResolutionFlowStrategy<%s> encountered unrecognized AppResolutionResultError case", buf, 0xCu);
        destroyStorage<A>(_:count:)(v38, 0, v36);
        destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v33 = v72[130];
      v34 = v72[120];
      v35 = v72[118];
      v32 = v72[121];
      MEMORY[0x277D82BD8](oslog);
      (*(v32 + 8))(v33, v34);
      outlined destroy of AppResolutionResult.AppResolutionResultError?(v35);
LABEL_14:
      v23 = v72[145];
      v4 = v72[129];
      v22 = v72[120];
      v21 = v72[121];
      v5 = Logger.payments.unsafeMutableAddressor();
      v6 = *(v21 + 16);
      v72[156] = v6;
      v72[157] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v4, v5, v22);

      v24 = swift_allocObject();
      *(v24 + 16) = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v24 + 24) = v23;

      log = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      v26 = swift_allocObject();
      *(v26 + 16) = 32;
      v27 = swift_allocObject();
      *(v27 + 16) = 8;
      v25 = swift_allocObject();
      *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v25 + 24) = v24;
      v28 = swift_allocObject();
      *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v28 + 24) = v25;
      v72[158] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v29 = v7;

      *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
      v29[1] = v26;

      v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v29[3] = v27;

      v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v29[5] = v28;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v31))
      {
        v18 = static UnsafeMutablePointer.allocate(capacity:)();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v19 = createStorage<A>(capacity:type:)(0, v17, v17);
        v20 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v77 = v18;
        v78 = v19;
        v79 = v20;
        serialize(_:at:)(2, &v77);
        serialize(_:at:)(1, &v77);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v26;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v27;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v28;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        _os_log_impl(&dword_2686B1000, log, v31, "#PaymentsAppResolutionFlowStrategy resolved apps %s", v18, 0xCu);
        destroyStorage<A>(_:count:)(v19, 0, v17);
        destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v18, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v72[159] = 0;
      v13 = v72[129];
      v14 = v72[120];
      v15 = (v72[145] + 16);
      v12 = v72[121];
      MEMORY[0x277D82BD8](log);
      v8 = *(v12 + 8);
      v72[160] = v8;
      v72[161] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v8(v13, v14);
      swift_beginAccess();
      v16 = *v15;
      v72[162] = *v15;

      swift_endAccess();
      v9 = swift_task_alloc();
      v72[163] = v9;
      *v9 = v72[80];
      v9[1] = PaymentsAppResolutionFlowStrategy.resolveApp(input:);

      return PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)(v16);
    }

    v59 = v72[119];
    v58 = v72[118];
    v60 = v72[137];
    type metadata accessor for AppResolutionAction();
    v61 = static AppResolutionAction.noAppFound()();
    outlined destroy of AppResolutionResult.AppResolutionResultError?(v58);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v59);

    MEMORY[0x277D82BD8](v60);
    v67 = v61;
  }

  v11 = *(v72[80] + 8);

  return v11(v67);
}

{
  v190 = v0;
  v168 = v0[164];
  v166 = v0[145];
  v167 = v0[144];
  v0[80] = v0;
  swift_beginAccess();

  *(v166 + 16) = v168;

  swift_endAccess();
  swift_beginAccess();
  swift_endAccess();
  v169 = MEMORY[0x26D620910](v168, v167);

  if (v169 <= 1)
  {
    v141 = *(v165 + 1168);
    swift_beginAccess();
    v142 = *(v141 + 16);
    swift_endAccess();
    if (v142)
    {
      v138 = *(v165 + 1160);
      swift_beginAccess();
      v139 = *(v138 + 16);

      swift_endAccess();
      *(v165 + 776) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Collection.first.getter();
      v140 = *(v165 + 784);
      if (v140)
      {
        v130 = *(v165 + 1248);
        v6 = *(v165 + 1016);
        v129 = *(v165 + 960);
        *(v165 + 792) = v140;

        v7 = Logger.payments.unsafeMutableAddressor();
        v130(v6, v7, v129);

        log = Logger.logObject.getter();
        v137 = static os_log_type_t.debug.getter();
        v132 = swift_allocObject();
        *(v132 + 16) = 32;
        v133 = swift_allocObject();
        *(v133 + 16) = 8;
        v131 = swift_allocObject();
        *(v131 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
        *(v131 + 24) = v140;
        v134 = swift_allocObject();
        *(v134 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v134 + 24) = v131;
        _allocateUninitializedArray<A>(_:)();
        v135 = v8;

        *v135 = partial apply for closure #1 in OSLogArguments.append(_:);
        v135[1] = v132;

        v135[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v135[3] = v133;

        v135[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v135[5] = v134;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v137))
        {
          v9 = *(v165 + 1272);
          v126 = static UnsafeMutablePointer.allocate(capacity:)();
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v127 = createStorage<A>(capacity:type:)(0, v125, v125);
          v128 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v180 = v126;
          v181 = v127;
          v182 = v128;
          serialize(_:at:)(2, &v180);
          serialize(_:at:)(1, &v180);
          v183 = partial apply for closure #1 in OSLogArguments.append(_:);
          v184 = v132;
          closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
          if (v9)
          {
          }

          v183 = partial apply for closure #1 in OSLogArguments.append(_:);
          v184 = v133;
          closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
          v183 = partial apply for closure #1 in OSLogArguments.append(_:);
          v184 = v134;
          closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
          _os_log_impl(&dword_2686B1000, log, v137, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found one app, returning needsConfirmation for %s", v126, 0xCu);
          destroyStorage<A>(_:count:)(v127, 0, v125);
          destroyStorage<A>(_:count:)(v128, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v126, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v121 = *(v165 + 1280);
        v119 = *(v165 + 1016);
        v120 = *(v165 + 960);
        v122 = *(v165 + 952);
        v123 = *(v165 + 1096);
        MEMORY[0x277D82BD8](log);
        v121(v119, v120);
        type metadata accessor for AppResolutionAction();
        v124 = static AppResolutionAction.confirm(app:)();

        $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
        outlined destroy of Signpost.OpenSignpost(v122);

        MEMORY[0x277D82BD8](v123);
        v149 = v124;
        goto LABEL_47;
      }
    }

    v115 = *(v165 + 1160);
    v116 = *(v165 + 1152);
    swift_beginAccess();
    v117 = *(v115 + 16);

    swift_endAccess();
    v118 = MEMORY[0x26D620910](v117, v116);

    if (v118 == 1)
    {
      v112 = *(v165 + 1160);
      swift_beginAccess();
      v113 = *(v112 + 16);

      swift_endAccess();
      *(v165 + 720) = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Collection.first.getter();
      v114 = *(v165 + 728);
      if (v114)
      {
        v108 = *(v165 + 1088);
        *(v165 + 736) = v114;

        *(v165 + 592) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v165 + 600) = v10;
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](countAndFlagsBits);

        DefaultStringInterpolation.appendInterpolation(_:)(v108);
        v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v12);

        v110 = *(v165 + 592);
        v109 = *(v165 + 600);

        outlined destroy of String.UTF8View(v165 + 592);
        v13._countAndFlagsBits = MEMORY[0x26D620710](v110, v109);
        v111 = App.supportsIntent(intentName:)(v13);

        if (v111)
        {
          v100 = *(v165 + 1248);
          v14 = *(v165 + 1008);
          v99 = *(v165 + 960);
          v15 = Logger.payments.unsafeMutableAddressor();
          v100(v14, v15, v99);

          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.debug.getter();
          v102 = swift_allocObject();
          *(v102 + 16) = 32;
          v103 = swift_allocObject();
          *(v103 + 16) = 8;
          v101 = swift_allocObject();
          *(v101 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v101 + 24) = v114;
          v104 = swift_allocObject();
          *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v104 + 24) = v101;
          _allocateUninitializedArray<A>(_:)();
          v105 = v16;

          *v105 = partial apply for closure #1 in OSLogArguments.append(_:);
          v105[1] = v102;

          v105[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v105[3] = v103;

          v105[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v105[5] = v104;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v106, v107))
          {
            v17 = *(v165 + 1272);
            v96 = static UnsafeMutablePointer.allocate(capacity:)();
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v97 = createStorage<A>(capacity:type:)(0, v95, v95);
            v98 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v175 = v96;
            v176 = v97;
            v177 = v98;
            serialize(_:at:)(2, &v175);
            serialize(_:at:)(1, &v175);
            v178 = partial apply for closure #1 in OSLogArguments.append(_:);
            v179 = v102;
            closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
            if (v17)
            {
            }

            v178 = partial apply for closure #1 in OSLogArguments.append(_:);
            v179 = v103;
            closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
            v178 = partial apply for closure #1 in OSLogArguments.append(_:);
            v179 = v104;
            closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
            _os_log_impl(&dword_2686B1000, v106, v107, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found one app, returning select for %s", v96, 0xCu);
            destroyStorage<A>(_:count:)(v97, 0, v95);
            destroyStorage<A>(_:count:)(v98, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v96, MEMORY[0x277D84B78]);

            v94 = 0;
          }

          else
          {

            v94 = *(v165 + 1272);
          }

          v93 = *(v165 + 1280);
          v91 = *(v165 + 1008);
          v92 = *(v165 + 960);
          MEMORY[0x277D82BD8](v106);
          v18 = v93(v91, v92);
          if (App.isFirstParty.getter(v18))
          {
            v87 = *(v165 + 1248);
            v19 = *(v165 + 1000);
            v86 = *(v165 + 960);
            v20 = Logger.payments.unsafeMutableAddressor();
            v87(v19, v20, v86);
            v89 = Logger.logObject.getter();
            v88 = static os_log_type_t.debug.getter();
            v90 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v89, v88))
            {
              v82 = static UnsafeMutablePointer.allocate(capacity:)();
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v83 = createStorage<A>(capacity:type:)(0, v81, v81);
              v84 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              *(v165 + 744) = v82;
              *(v165 + 752) = v83;
              *(v165 + 760) = v84;
              serialize(_:at:)(0, (v165 + 744));
              serialize(_:at:)(0, (v165 + 744));
              *(v165 + 768) = v90;
              v85 = swift_task_alloc();
              v85[2] = v165 + 744;
              v85[3] = v165 + 752;
              v85[4] = v165 + 760;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();
              if (v94)
              {
              }

              _os_log_impl(&dword_2686B1000, v89, v88, "#PaymentsAppResolutionFlowStrategy resolveApp the app found was first party, falling back to pre-defined AppUtil constant for extension values", v82, 2u);
              destroyStorage<A>(_:count:)(v83, 0, v81);
              destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v82, MEMORY[0x277D84B78]);
            }

            else
            {
            }

            v77 = *(v165 + 1280);
            v75 = *(v165 + 1000);
            v76 = *(v165 + 960);
            v78 = *(v165 + 952);
            v79 = *(v165 + 1096);
            MEMORY[0x277D82BD8](v89);
            v77(v75, v76);
            type metadata accessor for AppResolutionAction();
            static AppUtil.walletApp.getter();
            v80 = static AppResolutionAction.select(app:)();

            $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
            outlined destroy of Signpost.OpenSignpost(v78);

            MEMORY[0x277D82BD8](v79);
            v149 = v80;
          }

          else
          {
            v72 = *(v165 + 952);
            v73 = *(v165 + 1096);
            type metadata accessor for AppResolutionAction();
            v74 = static AppResolutionAction.select(app:)();

            $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
            outlined destroy of Signpost.OpenSignpost(v72);

            MEMORY[0x277D82BD8](v73);
            v149 = v74;
          }
        }

        else
        {
          v56 = *(v165 + 1248);
          v58 = *(v165 + 1232);
          v57 = *(v165 + 1088);
          v21 = *(v165 + 992);
          v55 = *(v165 + 960);
          v22 = Logger.payments.unsafeMutableAddressor();
          v56(v21, v22, v55);
          v59 = swift_allocObject();
          *(v59 + 16) = v57;
          *(v59 + 24) = v58;

          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();
          v63 = swift_allocObject();
          *(v63 + 16) = 32;
          v64 = swift_allocObject();
          *(v64 + 16) = 8;
          v60 = swift_allocObject();
          *(v60 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v60 + 24) = v59;
          v61 = swift_allocObject();
          *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v61 + 24) = v60;
          v65 = swift_allocObject();
          *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v65 + 24) = v61;
          v66 = swift_allocObject();
          *(v66 + 16) = 32;
          v67 = swift_allocObject();
          *(v67 + 16) = 8;
          v62 = swift_allocObject();
          *(v62 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
          *(v62 + 24) = v114;
          v68 = swift_allocObject();
          *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v68 + 24) = v62;
          _allocateUninitializedArray<A>(_:)();
          v69 = v23;

          *v69 = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[1] = v63;

          v69[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[3] = v64;

          v69[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[5] = v65;

          v69[6] = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[7] = v66;

          v69[8] = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[9] = v67;

          v69[10] = partial apply for closure #1 in OSLogArguments.append(_:);
          v69[11] = v68;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v70, v71))
          {
            v24 = *(v165 + 1272);
            v52 = static UnsafeMutablePointer.allocate(capacity:)();
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v53 = createStorage<A>(capacity:type:)(0, v51, v51);
            v54 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v170 = v52;
            v171 = v53;
            v172 = v54;
            serialize(_:at:)(2, &v170);
            serialize(_:at:)(2, &v170);
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v63;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            if (v24)
            {
            }

            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v64;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v65;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v66;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v67;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v68;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v170, &v171, &v172);
            _os_log_impl(&dword_2686B1000, v70, v71, "#PaymentsAppResolutionFlowStrategy resolveApp found app that doesn't support %s, returning appNotSupported for %s", v52, 0x16u);
            destroyStorage<A>(_:count:)(v53, 0, v51);
            destroyStorage<A>(_:count:)(v54, 2, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v52, MEMORY[0x277D84B78]);
          }

          else
          {
          }

          v47 = *(v165 + 1280);
          v45 = *(v165 + 992);
          v46 = *(v165 + 960);
          v48 = *(v165 + 952);
          v49 = *(v165 + 1096);
          MEMORY[0x277D82BD8](v70);
          v47(v45, v46);
          type metadata accessor for AppResolutionAction();
          v50 = static AppResolutionAction.appNotSupported(app:)();

          $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
          outlined destroy of Signpost.OpenSignpost(v48);

          MEMORY[0x277D82BD8](v49);
          v149 = v50;
        }

        goto LABEL_47;
      }
    }

    v41 = *(v165 + 1248);
    v25 = *(v165 + 984);
    v40 = *(v165 + 960);
    v26 = Logger.payments.unsafeMutableAddressor();
    v41(v25, v26, v40);
    v43 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v43, v42))
    {
      v27 = *(v165 + 1272);
      v36 = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v37 = createStorage<A>(capacity:type:)(0, v35, v35);
      v38 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v165 + 688) = v36;
      *(v165 + 696) = v37;
      *(v165 + 704) = v38;
      serialize(_:at:)(0, (v165 + 688));
      serialize(_:at:)(0, (v165 + 688));
      *(v165 + 712) = v44;
      v39 = swift_task_alloc();
      v39[2] = v165 + 688;
      v39[3] = v165 + 696;
      v39[4] = v165 + 704;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v27)
      {
      }

      _os_log_impl(&dword_2686B1000, v43, v42, "#PaymentsAppResolutionFlowStrategy resolveApp resolution did not find any apps, returning noAppFound", v36, 2u);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v36, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v31 = *(v165 + 1280);
    v29 = *(v165 + 984);
    v30 = *(v165 + 960);
    v32 = *(v165 + 952);
    v33 = *(v165 + 1096);
    MEMORY[0x277D82BD8](v43);
    v31(v29, v30);
    type metadata accessor for AppResolutionAction();
    v34 = static AppResolutionAction.noAppFound()();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v32);

    MEMORY[0x277D82BD8](v33);
    v149 = v34;
  }

  else
  {
    v155 = *(v165 + 1248);
    v156 = *(v165 + 1160);
    v1 = *(v165 + 1024);
    v154 = *(v165 + 960);
    v2 = Logger.payments.unsafeMutableAddressor();
    v155(v1, v2, v154);

    v157 = swift_allocObject();
    *(v157 + 16) = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
    *(v157 + 24) = v156;

    oslog = Logger.logObject.getter();
    v164 = static os_log_type_t.debug.getter();
    v159 = swift_allocObject();
    *(v159 + 16) = 32;
    v160 = swift_allocObject();
    *(v160 + 16) = 8;
    v158 = swift_allocObject();
    *(v158 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v158 + 24) = v157;
    v161 = swift_allocObject();
    *(v161 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v161 + 24) = v158;
    _allocateUninitializedArray<A>(_:)();
    v162 = v3;

    *v162 = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[1] = v159;

    v162[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[3] = v160;

    v162[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[5] = v161;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v164))
    {
      v4 = *(v165 + 1272);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v152 = createStorage<A>(capacity:type:)(0, v150, v150);
      v153 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v185 = buf;
      v186 = v152;
      v187 = v153;
      serialize(_:at:)(2, &v185);
      serialize(_:at:)(1, &v185);
      v188 = partial apply for closure #1 in OSLogArguments.append(_:);
      v189 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
      if (v4)
      {
      }

      v188 = partial apply for closure #1 in OSLogArguments.append(_:);
      v189 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
      v188 = partial apply for closure #1 in OSLogArguments.append(_:);
      v189 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
      _os_log_impl(&dword_2686B1000, oslog, v164, "#PaymentsAppResolutionFlowStrategy resolveApp resolution found multiple apps, returning disambiguate for %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v152, 0, v150);
      destroyStorage<A>(_:count:)(v153, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v145 = *(v165 + 1280);
    v143 = *(v165 + 1024);
    v144 = *(v165 + 960);
    v146 = *(v165 + 952);
    v147 = *(v165 + 1096);
    MEMORY[0x277D82BD8](oslog);
    v145(v143, v144);
    type metadata accessor for AppResolutionAction();
    swift_beginAccess();

    swift_endAccess();
    v148 = static AppResolutionAction.disambiguate(apps:)();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v146);

    MEMORY[0x277D82BD8](v147);
    v149 = v148;
  }

LABEL_47:

  v28 = *(*(v165 + 640) + 8);

  return v28(v149);
}

uint64_t implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  v5 = type metadata accessor for Parse();
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v0);
  v4 = &v2 - v3;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t sub_2686F9644()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  type metadata accessor for Input();

  return implicit closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)();
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  return String.init<A>(describing:)();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v48 = a8;
  v49 = 0;
  v33 = partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v65 = a9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v43 = *(v41 - 8);
  v42 = v41 - 8;
  v44 = v43;
  v45 = *(v43 + 64);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = &v24 - v46;
  v64 = MEMORY[0x28223BE20](v40, v34);
  v50 = v9 + 16;
  v63 = v9 + 16;
  v62 = v10;
  v60 = v11;
  v61 = v12;
  v59 = v13 + 16;
  v58 = v14 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR);
  v57 = swift_projectBox();
  v51 = &v56;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return CheckedContinuation.resume<>()(v41);
  }

  v32 = Strong;
  v31 = Strong;
  v55 = Strong;
  v24 = &v54;
  swift_beginAccess();
  v30 = *(v31 + 24);

  swift_endAccess();

  v15 = type metadata accessor for AppResolutionStateProvider();
  v29 = v53;
  v53[3] = v15;
  v53[4] = MEMORY[0x277D553E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  AppResolutionStateProvider.init(appBundleId:)(v36, v37, boxed_opaque_existential_1);

  v25 = v44;
  (*(v43 + 16))(v47, v40, v41);

  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = (v26 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v39;
  v19 = v26;
  v20 = v43;
  v21 = v47;
  v22 = v41;
  v28 = v17;
  *(v17 + 16) = v38;
  *(v17 + 24) = v18;
  (*(v20 + 32))(v17 + v19, v21, v22);
  *(v28 + v27) = v48;
  dispatch thunk of AppResolutionService.resolveApp(intent:appResolutionState:_:)();

  __swift_destroy_boxed_opaque_existential_0(v29);
}

void closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a1;
  v158 = a2;
  v159 = a3;
  v160 = a4;
  v161 = a5;
  v119 = partial apply for implicit closure #2 in PaymentsRCHFlowStrategy.makeErrorResponse(error:);
  v120 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v121 = partial apply for closure #1 in OSLogArguments.append(_:);
  v122 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123 = partial apply for closure #1 in OSLogArguments.append(_:);
  v124 = partial apply for implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v125 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v126 = partial apply for closure #1 in OSLogArguments.append(_:);
  v127 = partial apply for closure #1 in OSLogArguments.append(_:);
  v128 = partial apply for closure #1 in OSLogArguments.append(_:);
  v196 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v129 = 0;
  v195 = 0;
  v176 = 0;
  v172 = 0;
  v169 = 0;
  v141 = 0;
  v130 = type metadata accessor for Logger();
  v131 = *(v130 - 8);
  v132 = v130 - 8;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130, v5);
  v134 = &v52 - v133;
  v135 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v52 - v133, v7);
  v136 = &v52 - v135;
  v137 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMd, &_s17SiriAppResolution0bC6ResultO0bcD5ErrorOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v141, v8);
  v138 = &v52 - v137;
  v139 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v52 - v137);
  v140 = &v52 - v139;
  v142 = type metadata accessor for AppResolutionResult.AppResolutionResultError();
  v144 = *(v142 - 8);
  v143 = v142 - 8;
  v145 = v144;
  v146 = *(v144 + 64);
  v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v141, v11);
  v148 = &v52 - v147;
  v149 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, &v52 - v147);
  v150 = &v52 - v149;
  v196 = &v52 - v149;
  v151 = type metadata accessor for AppResolutionResult();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v151, v14);
  v155 = (&v52 - v154);
  v156 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v17);
  v157 = &v52 - v156;
  v195 = &v52 - v156;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, &_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  v162 = (*(*(v165 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v161, v158);
  v166 = (&v52 - v162);
  v194 = v18;
  v193 = v19 + 16;
  v192 = v20 + 16;
  v191 = v21;
  v164 = swift_projectBox();
  v190 = v164;
  outlined init with copy of Result<AppResolutionResult, Error>(v163, v166);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v152 + 32))(v157, v166, v151);
    v195 = v157;
    (*(v152 + 16))(v155);
    v118 = (*(v152 + 88))(v155, v151);
    if (v118 == *MEMORY[0x277D55418])
    {
      (*(v152 + 96))(v155, v151);
      v110 = *v155;
      v176 = v110;

      v105 = &v175;
      v175 = v110;
      v106 = &v174;
      v107 = 33;
      v108 = 0;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      Array.append(_:)();
      swift_endAccess();
      v109 = &v173;
      swift_beginAccess();
      *(v159 + 16) = 1;
      swift_endAccess();
    }

    else if (v118 == *MEMORY[0x277D55420])
    {
      (*(v152 + 96))(v155, v151);
      v114 = *v155;
      v172 = v114;

      v112 = &v171;
      v171 = v114;
      v113 = &v170;
      swift_beginAccess();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      lazy protocol witness table accessor for type [App] and conformance [A]();
      Array.append<A>(contentsOf:)();
      swift_endAccess();
    }

    else if (v118 == *MEMORY[0x277D55428])
    {
      (*(v152 + 96))(v155, v151);
      v117 = *v155;
      v169 = v117;

      v115 = &v168;
      v168 = v117;
      v116 = &v167;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
      Array.append(_:)();
      swift_endAccess();
    }

    else
    {
      (*(v152 + 8))(v155, v151);
    }

    (*(v152 + 8))(v157, v151);
LABEL_26:
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume<>()(v51);
    return;
  }

  v103 = *v166;
  v189 = v103;
  MEMORY[0x26D621420]();
  v104 = &v188;
  v188 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v144 + 56))(v140, 0, 1, v142);
  }

  else
  {
    (*(v144 + 56))(v140, 1, 1, v142);
  }

  if ((*(v144 + 48))(v140, 1, v142) != 1)
  {
    v35 = v134;
    v73 = v145;
    v76 = *(v144 + 32);
    v75 = v144 + 32;
    v76(v150, v140, v142);
    v72 = *(v144 + 16);
    v71 = v144 + 16;
    v72(v138, v150, v142);
    (*(v144 + 56))(v138, 0, 1, v142);
    v70 = &v182;
    swift_beginAccess();
    outlined assign with take of AppResolutionResult.AppResolutionResultError?(v138, v164);
    swift_endAccess();
    v36 = Logger.payments.unsafeMutableAddressor();
    (*(v131 + 16))(v35, v36, v130);
    v72(v148, v150, v142);
    v74 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v79 = 7;
    v80 = swift_allocObject();
    v76((v80 + v74), v148, v142);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v77 = 17;
    v82 = swift_allocObject();
    *(v82 + 16) = 32;
    v83 = swift_allocObject();
    *(v83 + 16) = 8;
    v78 = 32;
    v37 = swift_allocObject();
    v38 = v80;
    v81 = v37;
    *(v37 + 16) = v124;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v81;
    v85 = v39;
    *(v39 + 16) = v125;
    *(v39 + 24) = v40;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v84 = _allocateUninitializedArray<A>(_:)();
    v86 = v41;

    v42 = v82;
    v43 = v86;
    *v86 = v126;
    v43[1] = v42;

    v44 = v83;
    v45 = v86;
    v86[2] = v127;
    v45[3] = v44;

    v46 = v85;
    v47 = v86;
    v86[4] = v128;
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v88, v89))
    {
      v48 = v129;
      v63 = static UnsafeMutablePointer.allocate(capacity:)();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v64 = createStorage<A>(capacity:type:)(0, v62, v62);
      v65 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v66 = &v181;
      v181 = v63;
      v67 = &v180;
      v180 = v64;
      v68 = &v179;
      v179 = v65;
      serialize(_:at:)(2, &v181);
      serialize(_:at:)(1, v66);
      v177 = v126;
      v178 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v177, v66, v67, v68);
      v69 = v48;
      if (v48)
      {

        __break(1u);
      }

      else
      {
        v177 = v127;
        v178 = v83;
        closure #1 in osLogInternal(_:log:type:)(&v177, &v181, &v180, &v179);
        v61 = 0;
        v177 = v128;
        v178 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v177, &v181, &v180, &v179);
        _os_log_impl(&dword_2686B1000, v88, v89, "#PaymentsAppResolutionFlowStrategy resolveApp resolution returned an error: %s", v63, 0xCu);
        destroyStorage<A>(_:count:)(v64, 0, v62);
        destroyStorage<A>(_:count:)(v65, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v63, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v88);
    (*(v131 + 8))(v134, v130);
    (*(v144 + 8))(v150, v142);

    goto LABEL_26;
  }

  v22 = v136;
  outlined destroy of AppResolutionResult.AppResolutionResultError?(v140);
  v23 = Logger.payments.unsafeMutableAddressor();
  (*(v131 + 16))(v22, v23, v130);
  MEMORY[0x26D621420](v103);
  v92 = 7;
  v93 = swift_allocObject();
  *(v93 + 16) = v103;
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.error.getter();
  v90 = 17;
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v91 = 32;
  v24 = swift_allocObject();
  v25 = v93;
  v94 = v24;
  *(v24 + 16) = v119;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v94;
  v98 = v26;
  *(v26 + 16) = v120;
  *(v26 + 24) = v27;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v97 = _allocateUninitializedArray<A>(_:)();
  v99 = v28;

  v29 = v95;
  v30 = v99;
  *v99 = v121;
  v30[1] = v29;

  v31 = v96;
  v32 = v99;
  v99[2] = v122;
  v32[3] = v31;

  v33 = v98;
  v34 = v99;
  v99[4] = v123;
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v101, v102))
  {
    v49 = v129;
    v54 = static UnsafeMutablePointer.allocate(capacity:)();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v55 = createStorage<A>(capacity:type:)(0, v53, v53);
    v56 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v57 = &v187;
    v187 = v54;
    v58 = &v186;
    v186 = v55;
    v59 = &v185;
    v185 = v56;
    serialize(_:at:)(2, &v187);
    serialize(_:at:)(1, v57);
    v183 = v121;
    v184 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v183, v57, v58, v59);
    v60 = v49;
    if (v49)
    {

      __break(1u);
    }

    else
    {
      v183 = v122;
      v184 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
      v52 = 0;
      v183 = v123;
      v184 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
      _os_log_impl(&dword_2686B1000, v101, v102, "#PaymentsAppResolutionFlowStrategy resolveApp resolution returned an unrecognized error: %s", v54, 0xCu);
      destroyStorage<A>(_:count:)(v55, 0, v53);
      destroyStorage<A>(_:count:)(v56, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v54, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v101);
  (*(v131 + 8))(v136, v130);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume<>()(v50);
}

uint64_t implicit closure #2 in closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)()
{
  type metadata accessor for AppResolutionResult.AppResolutionResultError();
  lazy protocol witness table accessor for type AppResolutionResult.AppResolutionResultError and conformance AppResolutionResult.AppResolutionResultError();
  return Error.localizedDescription.getter();
}

uint64_t implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  outlined init with copy of [App](v3, a2);
  return swift_endAccess();
}

uint64_t implicit closure #6 in PaymentsAppResolutionFlowStrategy.resolveApp(input:)(uint64_t a1)
{

  type metadata accessor for App();
  lazy protocol witness table accessor for type App and conformance App();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v128 = a1;
  v113 = 0;
  v173 = 0;
  v172 = 0;
  v104 = 0;
  v127 = *v1;
  v105 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64);
  v3 = MEMORY[0x28223BE20](0, v2);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v51 - v107;
  MEMORY[0x28223BE20](v3, &v51 - v107);
  v108 = &v51 - v107;
  v109 = type metadata accessor for Parse();
  v110 = *(v109 - 8);
  v111 = v110;
  MEMORY[0x28223BE20](v113, v109);
  v112 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Input();
  v114 = *(v133 - 8);
  v131 = v114;
  v129 = *(v114 + 64);
  MEMORY[0x28223BE20](v113, v5);
  v132 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Logger();
  v115 = v123;
  v116 = *(v123 - 8);
  v122 = v116;
  v117 = v116;
  v118 = *(v116 + 64);
  v7 = MEMORY[0x28223BE20](v128, v123);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = &v51 - v120;
  v8 = MEMORY[0x28223BE20](v7, &v51 - v120);
  v9 = &v51 - v120;
  v121 = &v51 - v120;
  v173 = v8;
  v172 = v10;
  v126 = *(v127 + 80);
  v171[1] = v126;
  v11 = Logger.payments.unsafeMutableAddressor();
  v124 = *(v122 + 16);
  v125 = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124(v9, v11, v123);
  v142 = 32;
  v147 = 32;
  v148 = 7;
  v12 = swift_allocObject();
  v13 = v127;
  v14 = v128;
  v15 = v131;
  v16 = v133;
  v17 = v12;
  v18 = v132;
  v138 = v17;
  *(v17 + 16) = v126;
  *(v17 + 24) = *(v13 + 88);
  (*(v15 + 16))(v18, v14, v16);
  v130 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v149 = swift_allocObject();
  (*(v131 + 32))(v149 + v130, v132, v133);
  v163 = Logger.logObject.getter();
  v134 = v163;
  v162 = static os_log_type_t.debug.getter();
  v135 = v162;
  v143 = 17;
  v153 = swift_allocObject();
  v136 = v153;
  *(v153 + 16) = v142;
  v154 = swift_allocObject();
  v137 = v154;
  v145 = 8;
  *(v154 + 16) = 8;
  v19 = swift_allocObject();
  v20 = v138;
  v139 = v19;
  *(v19 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v139;
  v140 = v21;
  *(v21 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v140;
  v155 = v23;
  v141 = v23;
  *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v23 + 24) = v24;
  v156 = swift_allocObject();
  v144 = v156;
  *(v156 + 16) = v142;
  v157 = swift_allocObject();
  v146 = v157;
  *(v157 + 16) = v145;
  v25 = swift_allocObject();
  v26 = v149;
  v150 = v25;
  *(v25 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:);
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v150;
  v160 = v27;
  v151 = v27;
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v28;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v152 = v161;
  v158 = _allocateUninitializedArray<A>(_:)();
  v159 = v29;

  v30 = v153;
  v31 = v159;
  *v159 = partial apply for closure #1 in OSLogArguments.append(_:);
  v31[1] = v30;

  v32 = v154;
  v33 = v159;
  v159[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v32;

  v34 = v155;
  v35 = v159;
  v159[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[5] = v34;

  v36 = v156;
  v37 = v159;
  v159[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v37[7] = v36;

  v38 = v157;
  v39 = v159;
  v159[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[9] = v38;

  v40 = v159;
  v41 = v160;
  v159[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[11] = v41;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v163, v162))
  {
    v42 = v104;
    v97 = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = v97;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v98 = createStorage<A>(capacity:type:)(0, v95, v95);
    v96 = v98;
    v100 = 2;
    v99 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v168[0] = v97;
    v167 = v98;
    v166 = v99;
    v101 = v168;
    serialize(_:at:)(v100, v168);
    serialize(_:at:)(v100, v101);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v136;
    closure #1 in osLogInternal(_:log:type:)(&v164, v101, &v167, &v166);
    v102 = v42;
    v103 = v42;
    if (v42)
    {
      v92 = 0;

      __break(1u);
    }

    else
    {
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v164, v168, &v167, &v166);
      v90 = 0;
      v91 = 0;
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v164, v168, &v167, &v166);
      v88 = 0;
      v89 = 0;
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v144;
      closure #1 in osLogInternal(_:log:type:)(&v164, v168, &v167, &v166);
      v86 = 0;
      v87 = 0;
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v146;
      closure #1 in osLogInternal(_:log:type:)(&v164, v168, &v167, &v166);
      v84 = 0;
      v85 = 0;
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v151;
      closure #1 in osLogInternal(_:log:type:)(&v164, v168, &v167, &v166);
      v82 = 0;
      v83 = 0;
      _os_log_impl(&dword_2686B1000, v134, v135, "#PaymentsAppResolutionFlowStrategy<%s> parseConfirmationResponse, input %s", v94, 0x16u);
      destroyStorage<A>(_:count:)(v96, 0, v95);
      destroyStorage<A>(_:count:)(v99, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v94, MEMORY[0x277D84B78]);

      v93 = v82;
    }
  }

  else
  {
    v43 = v104;

    v93 = v43;
  }

  v77 = v93;

  v78 = *(v117 + 8);
  v79 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78(v121, v115);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v108);
  (*(v111 + 8))(v112, v109);
  v80 = type metadata accessor for ConfirmationResponse();
  v81 = *(v80 - 8);
  if ((*(v81 + 48))(v108, 1) == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of ConfirmationResponse?(v108, v106);
  v76 = (*(v81 + 88))(v106, v80);
  if (v76 == *MEMORY[0x277D5BED8])
  {
    type metadata accessor for AppConfirmationResponse();
    v73 = static AppConfirmationResponse.select()();
    outlined destroy of ConfirmationResponse?(v108);
    v74 = v73;
    v75 = v77;
    return v74;
  }

  if (v76 == *MEMORY[0x277D5BED0])
  {
LABEL_11:
    outlined destroy of ConfirmationResponse?(v108);
    type metadata accessor for AppConfirmationResponse();
    v74 = static AppConfirmationResponse.cancel()();
    v75 = v77;
    return v74;
  }

  v44 = v119;
  (*(v81 + 8))(v106, v80);
  v45 = Logger.payments.unsafeMutableAddressor();
  v124(v44, v45, v115);
  v71 = Logger.logObject.getter();
  v68 = v71;
  v70 = static os_log_type_t.debug.getter();
  v69 = v70;
  v72 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v71, v70))
  {
    v47 = v77;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = v59;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = 0;
    v60 = createStorage<A>(capacity:type:)(0, v56, v56);
    v58 = v60;
    v61 = createStorage<A>(capacity:type:)(v57, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v171[0] = v59;
    v170 = v60;
    v169 = v61;
    v62 = 0;
    v63 = v171;
    serialize(_:at:)(0, v171);
    serialize(_:at:)(v62, v63);
    v168[2] = v72;
    v64 = &v51;
    MEMORY[0x28223BE20](&v51, v48);
    v65 = &v51 - 6;
    *(&v51 - 4) = v49;
    *(&v51 - 3) = &v170;
    *(&v51 - 2) = &v169;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v67 = v47;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v68, v69, "Unrecognized response from user attempting to respond to confirmation prompt", v55, 2u);
      v53 = 0;
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v61, v53, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v55, MEMORY[0x277D84B78]);

      v54 = v67;
    }
  }

  else
  {

    v54 = v77;
  }

  v52 = v54;

  v78(v119, v115);
  type metadata accessor for AppConfirmationResponse();
  v51 = static AppConfirmationResponse.ignore()();
  outlined destroy of ConfirmationResponse?(v108);
  v74 = v51;
  v75 = v52;
  return v74;
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Input();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(uint64_t a1)
{
  v2 = v1;
  v367 = v1;
  v337 = a1;
  v372 = 0;
  v410 = 0;
  v409 = 0;
  v338 = 0;
  v400 = 0;
  v399 = 0;
  v411 = 0;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v368 = *v2;
  v339 = v368;
  v340 = type metadata accessor for Parse.DirectInvocation();
  v341 = *(v340 - 8);
  v342 = v341;
  v344 = *(v341 + 64);
  v343 = v344;
  v4 = MEMORY[0x28223BE20](0, v340);
  v346 = (v344 + 15) & 0xFFFFFFFFFFFFFFF0;
  v345 = &v111 - v346;
  MEMORY[0x28223BE20](v4, &v111 - v346);
  v347 = &v111 - v346;
  v411 = &v111 - v346;
  v348 = type metadata accessor for Logger();
  v349 = *(v348 - 8);
  v350 = v349;
  v354 = *(v349 + 64);
  MEMORY[0x28223BE20](v348 - 8, v348);
  v356 = (v354 + 15) & 0xFFFFFFFFFFFFFFF0;
  v351 = &v111 - v356;
  MEMORY[0x28223BE20](&v111 - v356, v5);
  v352 = &v111 - v356;
  MEMORY[0x28223BE20](&v111 - v356, v6);
  v353 = &v111 - v356;
  MEMORY[0x28223BE20](&v111 - v356, v7);
  v355 = &v111 - v356;
  MEMORY[0x28223BE20](&v111 - v356, v8);
  v357 = &v111 - v356;
  v358 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v372, v9);
  v373 = &v111 - v358;
  v359 = &v111 - v358;
  v360 = type metadata accessor for Parse();
  v361 = *(v360 - 8);
  v362 = v361;
  v364 = *(v361 + 64);
  MEMORY[0x28223BE20](v360 - 8, v360);
  v366 = (v364 + 15) & 0xFFFFFFFFFFFFFFF0;
  v363 = &v111 - v366;
  MEMORY[0x28223BE20](&v111 - v366, v10);
  v365 = &v111 - v366;
  MEMORY[0x28223BE20](&v111 - v366, v11);
  v371 = &v111 - v366;
  v369 = &v111 - v366;
  v410 = a1;
  v409 = v367;
  v370 = *(v368 + 80);
  v408 = v370;
  Input.parse.getter();
  Parse.confirmationResponse.getter(v373);
  v374 = type metadata accessor for ConfirmationResponse();
  v375 = *(v374 - 8);
  if ((*(v375 + 48))(v373, 1) == 1)
  {
    outlined destroy of ConfirmationResponse?(v359);
    (*(v362 + 8))(v369, v360);
  }

  else
  {
    if ((*(v375 + 88))(v359, v374) == *MEMORY[0x277D5BED0])
    {
      v12 = v357;
      (*(v375 + 8))(v359, v374);
      (*(v362 + 8))(v369, v360);
      v13 = Logger.payments.unsafeMutableAddressor();
      (*(v350 + 16))(v12, v13, v348);
      v319 = 32;
      v324 = 32;
      v325 = 7;
      v14 = swift_allocObject();
      v15 = v339;
      v323 = v14;
      *(v14 + 16) = v370;
      *(v14 + 24) = *(v15 + 88);
      v336 = Logger.logObject.getter();
      v317 = v336;
      v335 = static os_log_type_t.debug.getter();
      v318 = v335;
      v320 = 17;
      v329 = swift_allocObject();
      v321 = v329;
      *(v329 + 16) = v319;
      v330 = swift_allocObject();
      v322 = v330;
      *(v330 + 16) = 8;
      v16 = swift_allocObject();
      v17 = v323;
      v326 = v16;
      *(v16 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
      *(v16 + 24) = v17;
      v18 = swift_allocObject();
      v19 = v326;
      v327 = v18;
      *(v18 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v327;
      v333 = v20;
      v328 = v20;
      *(v20 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v20 + 24) = v21;
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v331 = _allocateUninitializedArray<A>(_:)();
      v332 = v22;

      v23 = v329;
      v24 = v332;
      *v332 = partial apply for closure #1 in OSLogArguments.append(_:);
      v24[1] = v23;

      v25 = v330;
      v26 = v332;
      v332[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v26[3] = v25;

      v27 = v332;
      v28 = v333;
      v332[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v27[5] = v28;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v336, v335))
      {
        v29 = v338;
        v310 = static UnsafeMutablePointer.allocate(capacity:)();
        v307 = v310;
        v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v311 = createStorage<A>(capacity:type:)(0, v308, v308);
        v309 = v311;
        v313 = 1;
        v312 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v380 = v310;
        v379 = v311;
        v378 = v312;
        v314 = &v380;
        serialize(_:at:)(2, &v380);
        serialize(_:at:)(v313, v314);
        v376 = partial apply for closure #1 in OSLogArguments.append(_:);
        v377 = v321;
        closure #1 in osLogInternal(_:log:type:)(&v376, v314, &v379, &v378);
        v315 = v29;
        v316 = v29;
        if (v29)
        {
          v305 = 0;

          __break(1u);
        }

        else
        {
          v376 = partial apply for closure #1 in OSLogArguments.append(_:);
          v377 = v322;
          closure #1 in osLogInternal(_:log:type:)(&v376, &v380, &v379, &v378);
          v303 = 0;
          v304 = 0;
          v376 = partial apply for closure #1 in OSLogArguments.append(_:);
          v377 = v328;
          closure #1 in osLogInternal(_:log:type:)(&v376, &v380, &v379, &v378);
          v301 = 0;
          v302 = 0;
          _os_log_impl(&dword_2686B1000, v317, v318, "#PaymentsAppResolutionFlowStrategy<%s> parseDisambiguationResponse found user rejected, returning .cancel()", v307, 0xCu);
          destroyStorage<A>(_:count:)(v309, 0, v308);
          destroyStorage<A>(_:count:)(v312, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v307, MEMORY[0x277D84B78]);

          v306 = v301;
        }
      }

      else
      {
        v30 = v338;

        v306 = v30;
      }

      v298 = v306;

      (*(v350 + 8))(v357, v348);
      type metadata accessor for AppDisambiguationResponse();
      v299 = static AppDisambiguationResponse.cancel()();
      v300 = v298;
      return v299;
    }

    (*(v375 + 8))(v359, v374);
    (*(v362 + 8))(v369, v360);
  }

  Input.parse.getter();
  v297 = (*(v362 + 88))(v365, v360);
  if (v297 == *MEMORY[0x277D5C150])
  {
    (*(v362 + 96))(v365, v360);
    v292 = *(v342 + 32);
    v293 = (v342 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v292(v347, v365, v340);
    v411 = v347;
    v294 = static PaymentsDirectInvocations.from(_:)(v347);
    v295 = v31;
    v296 = v32;
    if (v32 != 0xFF)
    {
      v289 = v294;
      v290 = v295;
      v291 = v296;
      v286 = v291;
      v287 = v290;
      v288 = v289;
      if (v291 == 1)
      {
        v284 = v288;
        v285 = v287;
        v33 = v355;
        v264 = v287;
        v263 = v288;
        v387 = v288;
        v388 = v287;
        v34 = Logger.payments.unsafeMutableAddressor();
        (*(v350 + 16))(v33, v34, v348);

        v267 = 32;
        v271 = 32;
        v272 = 7;
        v35 = swift_allocObject();
        v36 = v264;
        v273 = v35;
        *(v35 + 16) = v263;
        *(v35 + 24) = v36;
        v283 = Logger.logObject.getter();
        v265 = v283;
        v282 = static os_log_type_t.debug.getter();
        v266 = v282;
        v268 = 17;
        v276 = swift_allocObject();
        v269 = v276;
        *(v276 + 16) = v267;
        v277 = swift_allocObject();
        v270 = v277;
        *(v277 + 16) = 8;
        v37 = swift_allocObject();
        v38 = v273;
        v274 = v37;
        *(v37 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v37 + 24) = v38;
        v39 = swift_allocObject();
        v40 = v274;
        v280 = v39;
        v275 = v39;
        *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v39 + 24) = v40;
        v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v278 = _allocateUninitializedArray<A>(_:)();
        v279 = v41;

        v42 = v276;
        v43 = v279;
        *v279 = partial apply for closure #1 in OSLogArguments.append(_:);
        v43[1] = v42;

        v44 = v277;
        v45 = v279;
        v279[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v45[3] = v44;

        v46 = v279;
        v47 = v280;
        v279[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v46[5] = v47;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v283, v282))
        {
          v49 = v338;
          v256 = static UnsafeMutablePointer.allocate(capacity:)();
          v253 = v256;
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v257 = createStorage<A>(capacity:type:)(0, v254, v254);
          v255 = v257;
          v259 = 1;
          v258 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v385 = v256;
          v384 = v257;
          v383 = v258;
          v260 = &v385;
          serialize(_:at:)(2, &v385);
          serialize(_:at:)(v259, v260);
          v381 = partial apply for closure #1 in OSLogArguments.append(_:);
          v382 = v269;
          closure #1 in osLogInternal(_:log:type:)(&v381, v260, &v384, &v383);
          v261 = v49;
          v262 = v49;
          if (v49)
          {
            v251 = 0;

            __break(1u);
          }

          else
          {
            v381 = partial apply for closure #1 in OSLogArguments.append(_:);
            v382 = v270;
            closure #1 in osLogInternal(_:log:type:)(&v381, &v385, &v384, &v383);
            v249 = 0;
            v250 = 0;
            v381 = partial apply for closure #1 in OSLogArguments.append(_:);
            v382 = v275;
            closure #1 in osLogInternal(_:log:type:)(&v381, &v385, &v384, &v383);
            v247 = 0;
            v248 = 0;
            _os_log_impl(&dword_2686B1000, v265, v266, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() selecting app identifier from direct invocation %s", v253, 0xCu);
            destroyStorage<A>(_:count:)(v255, 0, v254);
            destroyStorage<A>(_:count:)(v258, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v253, MEMORY[0x277D84B78]);

            v252 = v247;
          }
        }

        else
        {
          v50 = v338;

          v252 = v50;
        }

        v243 = v252;

        (*(v350 + 8))(v355, v348);
        v244 = 0;
        type metadata accessor for App();

        v245 = App.__allocating_init(appIdentifier:)();
        v386 = v245;
        v246 = type metadata accessor for AppDisambiguationResponse();
        if (App.isFirstParty.getter(v246))
        {
          v242 = static AppUtil.walletApp.getter();
        }

        else
        {

          v242 = v245;
        }

        v240 = v242;
        v241 = static AppDisambiguationResponse.select(app:)();

        (*(v342 + 8))(v347, v340);
        v299 = v241;
        v300 = v243;
        return v299;
      }

      outlined consume of PaymentsDirectInvocations(v288, v287, v286);
    }

    v51 = v353;
    v52 = Logger.payments.unsafeMutableAddressor();
    (*(v350 + 16))(v51, v52, v348);
    v53 = *(v342 + 16);
    v219 = v342 + 16;
    v53(v345, v347, v340);
    v220 = (*(v219 + 64) + 16) & ~*(v219 + 64);
    v229 = swift_allocObject();
    v292((v229 + v220), v345, v340);
    v239 = Logger.logObject.getter();
    v221 = v239;
    v238 = static os_log_type_t.error.getter();
    v222 = v238;
    v223 = 17;
    v228 = 7;
    v232 = swift_allocObject();
    v224 = v232;
    v225 = 32;
    *(v232 + 16) = 32;
    v54 = swift_allocObject();
    v55 = v225;
    v233 = v54;
    v226 = v54;
    *(v54 + 16) = 8;
    v227 = v55;
    v56 = swift_allocObject();
    v57 = v229;
    v230 = v56;
    *(v56 + 16) = partial apply for implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:);
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v230;
    v236 = v58;
    v231 = v58;
    *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v58 + 24) = v59;
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v234 = _allocateUninitializedArray<A>(_:)();
    v235 = v60;

    v61 = v232;
    v62 = v235;
    *v235 = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[1] = v61;

    v63 = v233;
    v64 = v235;
    v235[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[3] = v63;

    v65 = v235;
    v66 = v236;
    v235[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[5] = v66;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v239, v238))
    {
      v67 = v338;
      v212 = static UnsafeMutablePointer.allocate(capacity:)();
      v209 = v212;
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v213 = createStorage<A>(capacity:type:)(0, v210, v210);
      v211 = v213;
      v215 = 1;
      v214 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v393 = v212;
      v392 = v213;
      v391 = v214;
      v216 = &v393;
      serialize(_:at:)(2, &v393);
      serialize(_:at:)(v215, v216);
      v389 = partial apply for closure #1 in OSLogArguments.append(_:);
      v390 = v224;
      closure #1 in osLogInternal(_:log:type:)(&v389, v216, &v392, &v391);
      v217 = v67;
      v218 = v67;
      if (v67)
      {
        v207 = 0;

        __break(1u);
      }

      else
      {
        v389 = partial apply for closure #1 in OSLogArguments.append(_:);
        v390 = v226;
        closure #1 in osLogInternal(_:log:type:)(&v389, &v393, &v392, &v391);
        v205 = 0;
        v206 = 0;
        v389 = partial apply for closure #1 in OSLogArguments.append(_:);
        v390 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v389, &v393, &v392, &v391);
        v203 = 0;
        v204 = 0;
        _os_log_impl(&dword_2686B1000, v221, v222, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() couldn't get button press from Direct invocation %s", v209, 0xCu);
        destroyStorage<A>(_:count:)(v211, 0, v210);
        destroyStorage<A>(_:count:)(v214, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v209, MEMORY[0x277D84B78]);

        v208 = v203;
      }
    }

    else
    {
      v68 = v338;

      v208 = v68;
    }

    v202 = v208;

    (*(v350 + 8))(v353, v348);
    v198 = 0;
    v195 = type metadata accessor for AppDisambiguationResponse();
    v196 = Parse.DirectInvocation.identifier.getter();
    v197 = v69;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v199 = 0;
    v70 = swift_allocError();
    v71 = v197;
    v72 = v198;
    v73 = v199;
    v200 = v70;
    *v74 = v196;
    *(v74 + 8) = v71;
    *(v74 + 16) = v72;
    *(v74 + 24) = v72;
    *(v74 + 32) = v72;
    *(v74 + 40) = v72;
    *(v74 + 48) = v73;
    v201 = static AppDisambiguationResponse.error(_:)();

    (*(v342 + 8))(v347, v340);
    v299 = v201;
    v300 = v202;
  }

  else if (v297 == *MEMORY[0x277D5C160])
  {
    (*(v362 + 96))(v365, v360);
    Input.parse.getter();
    v75 = Parse.toAppId()();
    object = v75.value._object;
    v193 = v75;
    (*(v362 + 8))(v363, v360);
    if (object)
    {
      v192 = v193;
      v76 = v352;
      v172 = v193;
      v400 = v193;
      v77 = Logger.payments.unsafeMutableAddressor();
      (*(v350 + 16))(v76, v77, v348);

      v175 = 32;
      v179 = 32;
      v180 = 7;
      v78 = swift_allocObject();
      v79 = v172.value._object;
      v181 = v78;
      *(v78 + 16) = v172.value._countAndFlagsBits;
      *(v78 + 24) = v79;
      v191 = Logger.logObject.getter();
      v173 = v191;
      v190 = static os_log_type_t.debug.getter();
      v174 = v190;
      v176 = 17;
      v184 = swift_allocObject();
      v177 = v184;
      *(v184 + 16) = v175;
      v185 = swift_allocObject();
      v178 = v185;
      *(v185 + 16) = 8;
      v80 = swift_allocObject();
      v81 = v181;
      v182 = v80;
      *(v80 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v182;
      v188 = v82;
      v183 = v82;
      *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v82 + 24) = v83;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v186 = _allocateUninitializedArray<A>(_:)();
      v187 = v84;

      v85 = v184;
      v86 = v187;
      *v187 = partial apply for closure #1 in OSLogArguments.append(_:);
      v86[1] = v85;

      v87 = v185;
      v88 = v187;
      v187[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v88[3] = v87;

      v89 = v187;
      v90 = v188;
      v187[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[5] = v90;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v191, v190))
      {
        v91 = v338;
        v165 = static UnsafeMutablePointer.allocate(capacity:)();
        v162 = v165;
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v166 = createStorage<A>(capacity:type:)(0, v163, v163);
        v164 = v166;
        v168 = 1;
        v167 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v398 = v165;
        v397 = v166;
        v396 = v167;
        v169 = &v398;
        serialize(_:at:)(2, &v398);
        serialize(_:at:)(v168, v169);
        v394 = partial apply for closure #1 in OSLogArguments.append(_:);
        v395 = v177;
        closure #1 in osLogInternal(_:log:type:)(&v394, v169, &v397, &v396);
        v170 = v91;
        v171 = v91;
        if (v91)
        {
          v160 = 0;

          __break(1u);
        }

        else
        {
          v394 = partial apply for closure #1 in OSLogArguments.append(_:);
          v395 = v178;
          closure #1 in osLogInternal(_:log:type:)(&v394, &v398, &v397, &v396);
          v158 = 0;
          v159 = 0;
          v394 = partial apply for closure #1 in OSLogArguments.append(_:);
          v395 = v183;
          closure #1 in osLogInternal(_:log:type:)(&v394, &v398, &v397, &v396);
          v156 = 0;
          v157 = 0;
          _os_log_impl(&dword_2686B1000, v173, v174, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() selecting app identifier from parse %s", v162, 0xCu);
          destroyStorage<A>(_:count:)(v164, 0, v163);
          destroyStorage<A>(_:count:)(v167, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v162, MEMORY[0x277D84B78]);

          v161 = v156;
        }
      }

      else
      {
        v92 = v338;

        v161 = v92;
      }

      v152 = v161;

      (*(v350 + 8))(v352, v348);
      v153 = 0;
      type metadata accessor for App();

      v154 = App.__allocating_init(appIdentifier:)();
      v399 = v154;
      v155 = type metadata accessor for AppDisambiguationResponse();
      if (App.isFirstParty.getter(v155))
      {
        v151 = static AppUtil.walletApp.getter();
      }

      else
      {

        v151 = v154;
      }

      v148 = v151;
      v150 = static AppDisambiguationResponse.select(app:)();

      v149 = type metadata accessor for USOParse();
      (*(*(v149 - 8) + 8))(v365);
      v299 = v150;
      v300 = v152;
    }

    else
    {
      v93 = v351;
      v94 = Logger.payments.unsafeMutableAddressor();
      (*(v350 + 16))(v93, v94, v348);
      v146 = Logger.logObject.getter();
      v143 = v146;
      v145 = static os_log_type_t.error.getter();
      v144 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v147 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v146, v145))
      {
        v95 = v338;
        v134 = static UnsafeMutablePointer.allocate(capacity:)();
        v130 = v134;
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v132 = 0;
        v135 = createStorage<A>(capacity:type:)(0, v131, v131);
        v133 = v135;
        v136 = createStorage<A>(capacity:type:)(v132, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v404 = v134;
        v403 = v135;
        v402 = v136;
        v137 = 0;
        v138 = &v404;
        serialize(_:at:)(0, &v404);
        serialize(_:at:)(v137, v138);
        v401 = v147;
        v139 = &v111;
        MEMORY[0x28223BE20](&v111, v96);
        v140 = &v111 - 6;
        *(&v111 - 4) = v97;
        *(&v111 - 3) = &v403;
        v109 = &v402;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v142 = v95;
        if (v95)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v143, v144, "#PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() couldn't find associated app ID", v130, 2u);
          v128 = 0;
          destroyStorage<A>(_:count:)(v133, 0, v131);
          destroyStorage<A>(_:count:)(v136, v128, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v130, MEMORY[0x277D84B78]);

          v129 = v142;
        }
      }

      else
      {

        v129 = v338;
      }

      v127 = v129;

      (*(v350 + 8))(v351, v348);
      v124 = 0;
      type metadata accessor for AppDisambiguationResponse();
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      v98 = swift_allocError();
      v99 = v124;
      v123 = v98;
      *v100 = 10;
      *(v100 + 8) = v99;
      *(v100 + 16) = v99;
      *(v100 + 24) = v99;
      *(v100 + 32) = v99;
      *(v100 + 40) = v99;
      *(v100 + 48) = 17;
      v126 = static AppDisambiguationResponse.error(_:)();

      v125 = type metadata accessor for USOParse();
      (*(*(v125 - 8) + 8))(v365);
      v299 = v126;
      v300 = v127;
    }
  }

  else
  {
    v112 = 86;
    v115 = 1;
    v406 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v407 = v101;
    v102 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse() unexpected parse type ", v112, v115);
    v113 = v102._object;
    v117 = &v406;
    MEMORY[0x26D620F90](v102._countAndFlagsBits);

    Input.parse.getter();
    v405[0] = String.init<A>(describing:)();
    v405[1] = v103;
    v114 = v405;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v114);
    v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v115);
    v116 = v104._object;
    MEMORY[0x26D620F90](v104._countAndFlagsBits);

    v119 = v406;
    v118 = v407;

    outlined destroy of String.UTF8View(v117);
    v105 = MEMORY[0x26D620710](v119, v118);
    v120 = v106;
    v121 = static Logger.logForCrash(_:)(v105, v106);
    v122 = v107;

    v110 = 0;
    v109 = 216;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return v299;
}

uint64_t implicit closure #2 in PaymentsAppResolutionFlowStrategy.parseDisambiguationResponse(input:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)(uint64_t a1, uint64_t a2)
{
  v3[28] = v2;
  v3[27] = a2;
  v3[26] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v10 = *v2;
  v3[29] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[23] = a2;
  v3[24] = v9;
  v3[42] = *(v10 + 80);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)()
{
  v1 = v0[28];
  v0[22] = v0;
  v0[43] = *(v1 + 152);

  v2 = swift_task_alloc();
  v5[44] = v2;
  *v2 = v5[22];
  v2[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v3 = v5[41];

  return PaymentsBaseCATs.buttonCancel()(v3);
}

{
  v4 = *v1;
  *(v4 + 176) = *v1;
  *(v4 + 360) = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {

    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[28];
  v0[22] = v0;
  v0[46] = *(v1 + 152);

  v2 = swift_task_alloc();
  v5[47] = v2;
  *v2 = v5[22];
  v2[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v3 = v5[40];

  return PaymentsBaseCATs.buttonYes()(v3);
}

{
  v4 = *v1;
  *(v4 + 176) = *v1;
  *(v4 + 384) = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {

    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[28];
  v0[22] = v0;
  v0[49] = *(v1 + 152);

  v6 = App.sirikitApp.getter();
  v0[50] = v6;
  v2 = swift_task_alloc();
  v5[51] = v2;
  *v2 = v5[22];
  v2[1] = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  v3 = v5[39];

  return PaymentsBaseCATs.confirmApp(app:)(v3, v6);
}

{
  v4 = *v1;
  *(v4 + 176) = *v1;
  *(v4 + 416) = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  else
  {

    v2 = PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v6 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v23 = v0[36];
  v14 = v0[35];
  v15 = v0[34];
  v24 = v0[33];
  v9 = v0[32];
  v10 = v0[31];
  v25 = v0[30];
  v5 = v0[29];
  v11 = v0[28];
  v8 = v0[27];
  v13 = v0[26];
  v0[22] = v0;
  v16 = static AppResolutionResponse.makeConfirmationView(confirmDialog:cancelDialog:)();
  v0[25] = v16;
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v7 = *(v5 + 88);
  v1 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appConfirmationContextUpdate(app:locale:intentType:isRequestAccount:)(v8, v24, v6, v7, v1 & 1, v23);
  (*(v9 + 8))(v24, v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 7));
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 12));
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  MEMORY[0x277D82BE0](v16);
  *v12 = v16;
  _finalizeUninitializedArray<A>(_:)();
  (*(v14 + 16))(v25, v23, v15);
  (*(v14 + 56))(v25, 0, 1, v15);
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v13[3] = type metadata accessor for AceOutput();
  v13[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v13);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 17);
  outlined destroy of NLContextUpdate?(v25);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v14 + 8))(v23, v15);
  MEMORY[0x277D82BD8](v16);
  v19 = *(v17 + 8);
  v19(v22, v18);
  v19(v21, v18);
  v19(v20, v18);

  v3 = *(v0[22] + 8);

  return v3();
}

{
  *(v0 + 176) = v0;

  v1 = *(*(v0 + 176) + 8);

  return v1();
}

{
  v4 = v0[41];
  v3 = v0[38];
  v5 = v0[37];
  v0[22] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[22] + 8);

  return v1();
}

{
  v5 = v0[41];
  v4 = v0[40];
  v3 = v0[38];
  v6 = v0[37];
  v0[22] = v0;

  v7 = *(v3 + 8);
  v7(v4, v6);
  v7(v5, v6);

  v1 = *(v0[22] + 8);

  return v1();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = v3;
  v4[19] = a3;
  v4[18] = a2;
  v4[17] = a1;
  v4[12] = v4;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v12 = *v3;
  v4[21] = *v3;
  type metadata accessor for DialogPhase();
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for NLContextUpdate();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  type metadata accessor for CATOption();
  v4[32] = swift_task_alloc();
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = v11;
  v4[33] = *(v12 + 80);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)()
{
  *(v0 + 96) = v0;
  type metadata accessor for DisambiguationCATsModern(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  *(v0 + 272) = CATWrapperSimple.__allocating_init(options:globals:)();
  v1 = swift_task_alloc();
  *(v3 + 280) = v1;
  *v1 = *(v3 + 96);
  v1[1] = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);

  return DisambiguationCATsModern.intentDisambiguationPrompt()();
}

{
  v1 = v0[36];
  v11 = v0[33];
  v17 = v0[31];
  v15 = v0[28];
  v14 = v0[27];
  v16 = v0[26];
  v10 = v0[21];
  v18 = v0[20];
  v13 = v0[18];
  v0[12] = v0;
  v0[16] = v1;
  outlined init with copy of GlobalsProviding(v18 + 112, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = *(v10 + 88);
  v2 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)(v13, v15, v11, v12, v2 & 1, v17);
  (*(v14 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v17;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of GlobalsProviding(v18 + 112, (v0 + 7));
  v3 = swift_task_alloc();
  v19[38] = v3;
  *v3 = v19[12];
  v3[1] = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  v4 = v19[36];
  v5 = v19[25];
  v6 = v19[19];
  v7 = v19[18];
  v8 = v19[17];

  return static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)(v8, v7, v6, v5, v4, (v0 + 7));
}

{
  v4 = *v1;
  v4[12] = *v1;
  v4[39] = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 7);
    v2 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v6 = v0[36];
  v7 = v0[31];
  v4 = v0[30];
  v5 = v0[29];
  v1 = v0[24];
  v0[12] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v7, v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[12] + 8);

  return v2();
}

{
  *(v0 + 96) = v0;

  v1 = *(*(v0 + 96) + 8);

  return v1();
}

{
  v9 = v0[36];
  v7 = v0[31];
  v6 = v0[30];
  v8 = v0[29];
  v4 = v0[25];
  v3 = v0[24];
  v5 = v0[23];
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);

  v1 = *(v0[12] + 8);

  return v1();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1)
{
  v5 = *v2;
  v5[12] = *v2;
  v5[36] = a1;
  v5[37] = v1;

  if (v1)
  {
    v3 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  else
  {

    v3 = PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v10 = a2;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v19 = type metadata accessor for ResponseType();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v7 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v3);
  v20 = &v7 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v10);
  v14 = &v7 - v9;
  v22 = a1;
  v21 = v4;
  v13 = type metadata accessor for NLContextUpdate();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  (*(v11 + 16))(v14, v10);
  v5 = *(v11 + 56);
  v15 = 1;
  v5(v14, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, v15 & 1);
  OutputGenerationManifest.responseViewId.setter();
  (*(v17 + 104))(v20, *MEMORY[0x277D5BC50], v19);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  *(v3 + 592) = a1;
  *(v3 + 536) = v3;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  *(v3 + 568) = 0;
  *(v3 + 576) = 0;
  *(v3 + 584) = 0;
  *(v3 + 784) = 0;
  v10 = *v2;
  *(v3 + 616) = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 624) = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  *(v3 + 632) = v4;
  *(v3 + 640) = *(v4 - 8);
  *(v3 + 648) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v3 + 656) = v5;
  *(v3 + 664) = *(v5 - 8);
  *(v3 + 672) = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  *(v3 + 680) = v6;
  *(v3 + 688) = *(v6 - 8);
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 544) = a2;
  *(v3 + 552) = v9;
  *(v3 + 704) = *(v10 + 80);

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)()
{
  v1 = v0[75];
  v0[67] = v0;
  v0[70] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  v25 = Sequence.sorted(by:)();
  v0[89] = v25;
  v22 = *(v24 + 696);
  v21 = *(v24 + 680);
  v19 = *(v24 + 608);
  v20 = *(v24 + 688);

  *(v24 + 568) = v25;
  outlined init with copy of GlobalsProviding(v19 + 112, v24 + 16);
  __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  v23 = static AppResolutionResponse.makeDisambiguationList(apps:inLocale:)();
  *(v24 + 720) = v23;
  v2 = *(v20 + 8);
  *(v24 + 728) = v2;
  *(v24 + 736) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v22, v21);
  __swift_destroy_boxed_opaque_existential_0((v24 + 16));
  *(v24 + 576) = v23;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v3 = swift_task_alloc();
    *(v24 + 744) = v3;
    *v3 = *(v24 + 536);
    v3[1] = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
    v4 = *(v24 + 592);

    return PaymentsAppResolutionFlowStrategy.makeModernizedDisambiguationView(sortedApps:disambiguationList:)(v4, v25, v23);
  }

  outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 56);
  __swift_project_boxed_opaque_existential_1((v24 + 56), *(v24 + 80));
  v18 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0((v24 + 56));
  if ((v18 & 1) == 0)
  {
    outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 96);
    __swift_project_boxed_opaque_existential_1((v24 + 96), *(v24 + 120));
    v16 = dispatch thunk of DeviceState.isPhone.getter();

    if (v16)
    {

      __swift_destroy_boxed_opaque_existential_0((v24 + 96));
    }

    else
    {
      outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 136);
      __swift_project_boxed_opaque_existential_1((v24 + 136), *(v24 + 160));
      v15 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0((v24 + 136));

      __swift_destroy_boxed_opaque_existential_0((v24 + 96));

      if ((v15 & 1) == 0)
      {
        outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 176);
        __swift_project_boxed_opaque_existential_1((v24 + 176), *(v24 + 200));
        v14 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0((v24 + 176));

        if ((v14 & 1) == 0)
        {
          v13 = 0;
          goto LABEL_14;
        }

LABEL_12:
        outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 456);
        __swift_project_boxed_opaque_existential_1((v24 + 456), *(v24 + 480));
        v12 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
        __swift_destroy_boxed_opaque_existential_0((v24 + 456));
        v13 = v12;
LABEL_14:
        v10 = *(v24 + 608);

        *(v24 + 784) = v13 & 1;
        type metadata accessor for SAUIAssistantUtteranceView();
        _allocateUninitializedArray<A>(_:)();
        outlined init with copy of GlobalsProviding(v10 + 112, v24 + 216);
        v11 = static AppResolutionResponse.makeDisambiguationViews(apps:utteranceViews:disambiguationList:deviceState:compact:)();
        __swift_destroy_boxed_opaque_existential_0((v24 + 216));

        *(v24 + 584) = v11;
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

  outlined init with copy of GlobalsProviding(*(v24 + 608) + 112, v24 + 496);
  v6 = default argument 3 of static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)();
  v17 = static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(0, v23, (v24 + 496), v6, v7);
  __swift_destroy_boxed_opaque_existential_0((v24 + 496));
  *(v24 + 584) = v17;
LABEL_15:
  *(v24 + 760) = *(*(v24 + 608) + 152);

  v8 = swift_task_alloc();
  *(v24 + 768) = v8;
  *v8 = *(v24 + 536);
  v8[1] = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  v9 = *(v24 + 672);

  return PaymentsBaseCATs.disambiguateApp()(v9);
}

{
  v4 = *v1;
  *(v4 + 536) = *v1;
  *(v4 + 752) = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  else
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 536) = v0;

  v1 = *(*(v0 + 536) + 8);

  return v1();
}

{
  v4 = *v1;
  *(v4 + 536) = *v1;
  *(v4 + 776) = v0;

  if (v0)
  {
    v2 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  else
  {

    v2 = PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[91];
  v21 = v0[89];
  v6 = v0[88];
  v8 = v0[87];
  v9 = v0[85];
  v19 = v0[84];
  v18 = v0[83];
  v20 = v0[82];
  v16 = v0[81];
  v15 = v0[80];
  v17 = v0[79];
  v13 = v0[78];
  v5 = v0[77];
  v11 = v0[76];
  v12 = v0[74];
  v0[67] = v0;
  v14 = v0[73];

  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 32));
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  v1 = dispatch thunk of DeviceState.isWatch.getter();
  PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(v14, v21, v1 & 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 37));
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v7 = *(v5 + 88);
  v2 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)(v21, v8, v6, v7, v2 & 1, v16);
  v10(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 42));
  outlined init with copy of GlobalsProviding(v11 + 112, (v0 + 47));
  __swift_project_boxed_opaque_existential_1(v0 + 47, v0[50]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v15 + 16))(v13, v16, v17);
  (*(v15 + 56))(v13, 0, 1, v17);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v12[3] = type metadata accessor for AceOutput();
  v12[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v12);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v13);

  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  (*(v15 + 8))(v16, v17);
  (*(v18 + 8))(v19, v20);
  outlined destroy of [SFCardSection](v0 + 73);

  v3 = *(v0[67] + 8);

  return v3();
}

{
  *(v0 + 536) = v0;

  v1 = *(*(v0 + 536) + 8);

  return v1();
}

{
  *(v0 + 536) = v0;

  outlined destroy of [SFCardSection]((v0 + 584));

  v1 = *(*(v0 + 536) + 8);

  return v1();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v15 = a1;
  v12 = a2;
  v26 = a3;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v45._countAndFlagsBits = 0;
  v45._object = 0;
  v41._countAndFlagsBits = 0;
  v41._object = 0;
  v16 = *a3;
  v11 = a3;
  v13 = 0;
  v32 = type metadata accessor for Locale();
  v21 = *(v32 - 8);
  v22 = v32 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v12);
  v31 = v8 - v14;
  v17 = *v15;
  v52 = v17;
  v25 = *v3;
  v51 = v25;
  v50 = v4;
  v49 = *(v16 + 80);
  v20 = type metadata accessor for AppInformationResolver();

  v24 = AppInformationResolver.__allocating_init(app:)();
  v23 = v46;
  outlined init with copy of GlobalsProviding((v26 + 14), v46);
  v19 = v47;
  v18 = v48;
  __swift_project_boxed_opaque_existential_1(v23, v47);
  dispatch thunk of DeviceState.siriLocale.getter();
  v36._countAndFlagsBits = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v36._object = v5;
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v30(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v23);

  v45 = v36;

  v34 = AppInformationResolver.__allocating_init(app:)();
  v33 = v42;
  outlined init with copy of GlobalsProviding((v26 + 14), v42);
  v28 = v43;
  v27 = v44;
  __swift_project_boxed_opaque_existential_1(v33, v43);
  dispatch thunk of DeviceState.siriLocale.getter();
  v35._countAndFlagsBits = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v35._object = v6;
  v30(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v33);

  v41 = v35;

  v39 = v36;
  if (v36._object)
  {
    v40 = v39;
  }

  else
  {
    v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v39._object)
    {
      outlined destroy of String.UTF8View(&v39);
    }
  }

  v10 = v40;

  v37 = v35;
  if (v35._object)
  {
    v38 = v37;
  }

  else
  {
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v37._object)
    {
      outlined destroy of String.UTF8View(&v37);
    }
  }

  v8[1] = v38._object;
  v9 = MEMORY[0x26D620720](v10._countAndFlagsBits, v10._object, v38._countAndFlagsBits);

  return v9 & 1;
}

uint64_t PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)(uint64_t a1)
{
  v2[35] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[23] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedAppStatus.AppState();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v5 = type metadata accessor for ProtectedAppStatus();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:), 0);
}

uint64_t PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)()
{
  v37 = v0[35];
  v0[17] = v0;
  type metadata accessor for App();
  v0[20] = Array.init()();
  type metadata accessor for ProtectedAppCheck();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  static ProtectedAppCheck.client(for:)();

  v0[21] = v37;
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  Collection<>.makeIterator()();
  v38 = 0;
  while (1)
  {
    *(v36 + 384) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMd, &_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMR);
    IndexingIterator.next()();
    v35 = *(v36 + 176);
    *(v36 + 392) = v35;
    if (!v35)
    {
      break;
    }

    *(v36 + 184) = v35;
    v1 = App.appIdentifier.getter();
    v32 = v1;
    v33 = v2;
    *(v36 + 400) = v2;
    if (v2)
    {
      *(v36 + 88) = v1;
      *(v36 + 96) = v2;
      v30 = *(v36 + 40);
      v31 = *(v36 + 48);
      __swift_project_boxed_opaque_existential_1((v36 + 16), v30);
      v3 = swift_task_alloc();
      *(v36 + 408) = v3;
      *v3 = *(v36 + 136);
      v3[1] = PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
      v4 = *(v36 + 368);

      return MEMORY[0x2821BB7C0](v4, v32, v33, v30, v31);
    }

    v5 = *(v36 + 304);
    v21 = *(v36 + 288);
    v20 = *(v36 + 296);
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v20 + 16))(v5, v6, v21);

    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v22 + 24) = v35;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v23 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v26 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v27 = v7;

    *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[1] = v24;

    v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[3] = v25;

    v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[5] = v26;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v28, v29))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = createStorage<A>(capacity:type:)(0, v16, v16);
      v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v36 + 200) = buf;
      *(v36 + 208) = v18;
      *(v36 + 216) = v19;
      serialize(_:at:)(2, (v36 + 200));
      serialize(_:at:)(1, (v36 + 200));
      *(v36 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v36 + 80) = v24;
      closure #1 in osLogInternal(_:log:type:)((v36 + 72), v36 + 200, v36 + 208, v36 + 216);
      *(v36 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v36 + 80) = v25;
      closure #1 in osLogInternal(_:log:type:)((v36 + 72), v36 + 200, v36 + 208, v36 + 216);
      *(v36 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v36 + 80) = v26;
      closure #1 in osLogInternal(_:log:type:)((v36 + 72), v36 + 200, v36 + 208, v36 + 216);
      _os_log_impl(&dword_2686B1000, v28, v29, "#PaymentsAppResolutionFlowStrategy %s has no bundleID, but not filtering it out", buf, 0xCu);
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

      v14 = 0;
      v15 = 0;
    }

    else
    {

      v14 = v38;
      v15 = v34;
    }

    v12 = *(v36 + 304);
    v13 = *(v36 + 288);
    v11 = *(v36 + 296);
    MEMORY[0x277D82BD8](v28);
    (*(v11 + 8))(v12, v13);

    *(v36 + 192) = v35;
    Array.append(_:)();

    v38 = v14;
    v34 = v15;
  }

  outlined destroy of [SFCardSection]((v36 + 56));
  v10 = *(v36 + 160);

  __swift_destroy_boxed_opaque_existential_0((v36 + 16));
  outlined destroy of [SFCardSection]((v36 + 160));

  v8 = *(*(v36 + 136) + 8);

  return v8(v10);
}

{
  *(*v0 + 136) = *v0;

  return MEMORY[0x2822009F8](PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:), 0);
}

{
  v93 = v0[43];
  v92 = v0[42];
  v94 = v0[41];
  v0[17] = v0;
  ProtectedAppStatus.state.getter();
  if ((*(v92 + 88))(v93, v94) == *MEMORY[0x277D5BDF8])
  {
    v5 = *(v91 + 320);
    v76 = *(v91 + 288);
    v77 = *(v91 + 392);
    v75 = *(v91 + 296);
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v75 + 16))(v5, v6, v76);

    v78 = swift_allocObject();
    *(v78 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v78 + 24) = v77;

    oslog = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v80 = swift_allocObject();
    *(v80 + 16) = 32;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v79 = swift_allocObject();
    *(v79 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v79 + 24) = v78;
    v82 = swift_allocObject();
    *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v82 + 24) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v83 = v7;

    *v83 = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[1] = v80;

    v83[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[3] = v81;

    v83[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[5] = v82;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v85))
    {
      v8 = *(v91 + 384);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v73 = createStorage<A>(capacity:type:)(0, v71, v71);
      v74 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v91 + 256) = buf;
      *(v91 + 264) = v73;
      *(v91 + 272) = v74;
      serialize(_:at:)(2, (v91 + 256));
      serialize(_:at:)(1, (v91 + 256));
      *(v91 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 128) = v80;
      closure #1 in osLogInternal(_:log:type:)((v91 + 120), v91 + 256, v91 + 264, v91 + 272);
      if (v8)
      {
        goto LABEL_24;
      }

      *(v91 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 128) = v81;
      closure #1 in osLogInternal(_:log:type:)((v91 + 120), v91 + 256, v91 + 264, v91 + 272);
      *(v91 + 120) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 128) = v82;
      closure #1 in osLogInternal(_:log:type:)((v91 + 120), v91 + 256, v91 + 264, v91 + 272);
      _os_log_impl(&dword_2686B1000, oslog, v85, "#PaymentsAppResolutionFlowStrategy %s is hidden", buf, 0xCu);
      destroyStorage<A>(_:count:)(v73, 0, v71);
      destroyStorage<A>(_:count:)(v74, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

      v70 = 0;
      v69 = 0;
    }

    else
    {

      v70 = *(v91 + 384);
    }

    v65 = *(v91 + 320);
    v66 = *(v91 + 288);
    v64 = *(v91 + 296);
    MEMORY[0x277D82BD8](oslog);
    (*(v64 + 8))(v65, v66);
    v67 = v70;
    v68 = v69;
    goto LABEL_19;
  }

  v9 = *(v91 + 312);
  v54 = *(v91 + 288);
  v55 = *(v91 + 392);
  v53 = *(v91 + 296);
  v10 = Logger.payments.unsafeMutableAddressor();
  (*(v53 + 16))(v9, v10, v54);

  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
  *(v56 + 24) = v55;

  log = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v57 + 24) = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v60 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v61 = v11;

  *v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v61[1] = v58;

  v61[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v61[3] = v59;

  v61[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v61[5] = v60;
  _finalizeUninitializedArray<A>(_:)();

  if (!os_log_type_enabled(log, v63))
  {

    v48 = *(v91 + 384);
    goto LABEL_18;
  }

  v12 = *(v91 + 384);
  v50 = static UnsafeMutablePointer.allocate(capacity:)();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v51 = createStorage<A>(capacity:type:)(0, v49, v49);
  v52 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v91 + 232) = v50;
  *(v91 + 240) = v51;
  *(v91 + 248) = v52;
  serialize(_:at:)(2, (v91 + 232));
  serialize(_:at:)(1, (v91 + 232));
  *(v91 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v91 + 112) = v58;
  closure #1 in osLogInternal(_:log:type:)((v91 + 104), v91 + 232, v91 + 240, v91 + 248);
  if (v12)
  {
LABEL_24:
  }

  *(v91 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v91 + 112) = v59;
  closure #1 in osLogInternal(_:log:type:)((v91 + 104), v91 + 232, v91 + 240, v91 + 248);
  *(v91 + 104) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v91 + 112) = v60;
  closure #1 in osLogInternal(_:log:type:)((v91 + 104), v91 + 232, v91 + 240, v91 + 248);
  _os_log_impl(&dword_2686B1000, log, v63, "#PaymentsAppResolutionFlowStrategy %s is not hidden", v50, 0xCu);
  destroyStorage<A>(_:count:)(v51, 0, v49);
  destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D620BD0](v50, MEMORY[0x277D84B78]);

  v48 = 0;
  v47 = 0;
LABEL_18:
  v45 = *(v91 + 344);
  v46 = *(v91 + 328);
  v41 = *(v91 + 312);
  v42 = *(v91 + 288);
  v43 = *(v91 + 392);
  v44 = *(v91 + 336);
  v40 = *(v91 + 296);
  MEMORY[0x277D82BD8](log);
  (*(v40 + 8))(v41, v42);

  *(v91 + 224) = v43;
  Array.append(_:)();
  (*(v44 + 8))(v45, v46);
  v67 = v48;
  v68 = v47;
LABEL_19:
  (*(*(v91 + 360) + 8))(*(v91 + 368), *(v91 + 352));

  v38 = v67;
  for (i = v68; ; i = v23)
  {

    *(v91 + 384) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMd, &_ss16IndexingIteratorVySay17SiriAppResolution0D0CGGMR);
    IndexingIterator.next()();
    v88 = *(v91 + 176);
    *(v91 + 392) = v88;
    if (!v88)
    {
      outlined destroy of [SFCardSection]((v91 + 56));
      v18 = *(v91 + 160);

      __swift_destroy_boxed_opaque_existential_0((v91 + 16));
      outlined destroy of [SFCardSection]((v91 + 160));

      v16 = *(*(v91 + 136) + 8);

      return v16(v18);
    }

    *(v91 + 184) = v88;
    v1 = App.appIdentifier.getter();
    v89 = v1;
    v90 = v2;
    *(v91 + 400) = v2;
    if (v2)
    {
      break;
    }

    v13 = *(v91 + 304);
    v29 = *(v91 + 288);
    v28 = *(v91 + 296);
    v14 = Logger.payments.unsafeMutableAddressor();
    (*(v28 + 16))(v13, v14, v29);

    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for implicit closure #3 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
    *(v30 + 24) = v88;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v31 + 24) = v30;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v34 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v35 = v15;

    *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v32;

    v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[3] = v33;

    v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v36, v37))
    {
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v91 + 200) = v25;
      *(v91 + 208) = v26;
      *(v91 + 216) = v27;
      serialize(_:at:)(2, (v91 + 200));
      serialize(_:at:)(1, (v91 + 200));
      *(v91 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 80) = v32;
      closure #1 in osLogInternal(_:log:type:)((v91 + 72), v91 + 200, v91 + 208, v91 + 216);
      if (v38)
      {
        goto LABEL_24;
      }

      *(v91 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 80) = v33;
      closure #1 in osLogInternal(_:log:type:)((v91 + 72), v91 + 200, v91 + 208, v91 + 216);
      *(v91 + 72) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 80) = v34;
      closure #1 in osLogInternal(_:log:type:)((v91 + 72), v91 + 200, v91 + 208, v91 + 216);
      _os_log_impl(&dword_2686B1000, v36, v37, "#PaymentsAppResolutionFlowStrategy %s has no bundleID, but not filtering it out", v25, 0xCu);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v25, MEMORY[0x277D84B78]);

      v22 = 0;
      v23 = 0;
    }

    else
    {

      v22 = v38;
      v23 = i;
    }

    v20 = *(v91 + 304);
    v21 = *(v91 + 288);
    v19 = *(v91 + 296);
    MEMORY[0x277D82BD8](v36);
    (*(v19 + 8))(v20, v21);

    *(v91 + 192) = v88;
    Array.append(_:)();
    v38 = v22;
  }

  *(v91 + 88) = v1;
  *(v91 + 96) = v2;
  v86 = *(v91 + 40);
  v87 = *(v91 + 48);
  __swift_project_boxed_opaque_existential_1((v91 + 16), v86);
  v3 = swift_task_alloc();
  *(v91 + 408) = v3;
  *v3 = *(v91 + 136);
  v3[1] = PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:);
  v4 = *(v91 + 368);

  return MEMORY[0x2821BB7C0](v4, v89, v90, v86, v87);
}

uint64_t implicit closure #1 in PaymentsAppResolutionFlowStrategy.filterOutHiddenApps(apps:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

void PaymentsAppResolutionFlowStrategy.finalizeAppsForDisambiguation(_:)(void *a1)
{
  v13 = 0;
  v12 = 0;
  v8 = 0;
  v2 = *v1;
  v13 = a1;
  v12 = v1;
  v11 = *(v2 + 80);
  v6 = *a1;

  v9[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  Collection.firstIndex(where:)();
  outlined destroy of [SFCardSection](v9);
  if ((v10 & 1) == 0)
  {
    v8 = v9[1];
    type metadata accessor for App();
    Array.subscript.getter();
    v4 = App.appIdentifier.getter();
    v5 = v3;

    v7[0] = v4;
    v7[1] = v5;
    outlined destroy of String.UTF8View(v7);
    if (!v5)
    {
      Array.remove(at:)();

      static AppUtil.walletApp.getter();
      Array.append(_:)();
    }
  }
}

id PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(uint64_t a1)
{
  v14 = 0;
  v13 = 0;
  v11 = 0;
  v2 = *v1;
  v14 = a1;
  v13 = v1;
  v12 = *(v2 + 80);
  v3 = App.appIdentifier.getter();
  v8 = static PaymentsDirectInvocations.selectionInvocation(appIdentifier:)(v3, v4);

  v11 = v8;
  v6 = objc_opt_self();
  outlined init with copy of GlobalsProviding((v1 + 14), v10);
  v7 = SKIDirectInvocationPayload.toRSKE(deviceState:)(v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v9 = [v6 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(uint64_t a1, uint64_t a2, char a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  lazy protocol witness table accessor for type [SAAceView] and conformance [A]();
  Sequence.forEach(_:)();
}

uint64_t closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(id *a1, char a2, uint64_t a3, void *a4)
{
  v174 = a4;
  v175 = a3;
  v176 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v189 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v180 = 0;
  v179 = 0;
  v4 = *a4;
  v177 = *a1;
  v194 = v177;
  v193 = a2;
  v192 = a3;
  v191 = a4;
  v190 = *(v4 + 80);
  if (a2)
  {
    v5 = v177;
    objc_opt_self();
    v172 = swift_dynamicCastObjCClass();
    if (v172)
    {
      v171 = v172;
    }

    else
    {

      v171 = 0;
    }

    v170 = v171;
    if (v171)
    {
      v169 = v170;
      v167 = v170;
      v180 = v170;
      v6 = [v170 templateItems];
      v168 = v6;
      if (v6)
      {
        v166 = v168;
        v163 = v168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        v164 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = v164;
      }

      else
      {
        v165 = 0;
      }

      v162 = v165;
      if (v165)
      {
        v161 = v162;
        v158 = v162;
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        type metadata accessor for SASTColumnDataListItem();
        v159 = _arrayConditionalCast<A, B>(_:)();

        v160 = v159;
      }

      else
      {
        v160 = 0;
      }

      v156 = v160;
      if (v160)
      {
        v155 = v156;
        v143 = v156;
        v152 = v173;
        v179 = v156;
        v178[3] = v156;
        v178[2] = v175;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22SASTColumnDataListItemCGMd, &_sSaySo22SASTColumnDataListItemCGMR);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
        v146 = lazy protocol witness table accessor for type [SASTColumnDataListItem] and conformance [A]();
        lazy protocol witness table accessor for type [App] and conformance [A]();
        zip<A, B>(_:_:)();
        v178[0] = v178[4];
        v178[1] = v178[5];

        v147 = v41;
        MEMORY[0x28223BE20](v41, v7);
        v149 = &v38;
        v39 = partial apply for closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
        v40 = v8;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMd, &_ss12Zip2SequenceVySaySo22SASTColumnDataListItemCGSay17SiriAppResolution0H0CGGMR);
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        v148 = v151;
        v9 = lazy protocol witness table accessor for type Zip2Sequence<[SASTColumnDataListItem], [App]> and conformance Zip2Sequence<A, B>();
        v10 = v152;
        v12 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed SAUIListItem, @guaranteed App) -> (@owned SAUIListItem), v149, v150, v151, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v11);
        v153 = v10;
        v154 = v12;
        if (!v10)
        {
          v140 = v154;

          outlined destroy of Zip2Sequence<[SAUIListItem], [App]>(v178);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v167 setTemplateItems_];

          result = v153;
          v142 = v153;
          return result;
        }

        __break(1u);
        goto LABEL_70;
      }
    }
  }

  v14 = v177;
  objc_opt_self();
  v139 = swift_dynamicCastObjCClass();
  if (v139)
  {
    v138 = v139;
  }

  else
  {

    v138 = 0;
  }

  v137 = v138;
  if (!v138)
  {
    goto LABEL_53;
  }

  v136 = v137;
  v132 = v137;
  v186 = v137;
  v129 = 0;
  v130 = type metadata accessor for SFCard();
  v131 = v130;
  v133 = type metadata accessor for _SFPBCard();
  v134 = v133;
  v15 = [v137 cardData];
  v135 = v15;
  if (v15)
  {
    v128 = v135;
    v123 = v135;
    v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v16;

    v126 = v124;
    v127 = v125;
  }

  else
  {
    v126 = 0;
    v127 = 0xF000000000000000;
  }

  v122 = _SFPBCard.__allocating_init(data:)(v126, v127);
  if (v122)
  {
    v121 = v122;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/PaymentsAppResolutionFlowStrategy.swift", 59, 2, 348, 0);
    __break(1u);
  }

  v120 = SFCard.__allocating_init(protobuf:)(v121);
  if (!v120)
  {

LABEL_53:
    v29 = v177;
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      v67 = v68;
    }

    else
    {

      v67 = 0;
    }

    v66 = v67;
    if (v67)
    {
      v65 = v66;
      v62 = v66;
      v189 = v66;
      v30 = [v66 items];
      v63 = v30;
      if (v30)
      {
        v61 = v63;
        v58 = v63;
        v57 = type metadata accessor for SAUIListItem();
        v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      v56 = v60;
      if (v60)
      {
        v55 = v56;
        v43 = v56;
        v52 = v173;
        v188 = v56;
        v187[3] = v56;
        v187[2] = v175;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12SAUIListItemCGMd, &_sSaySo12SAUIListItemCGMR);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
        v46 = lazy protocol witness table accessor for type [SAUIListItem] and conformance [A]();
        lazy protocol witness table accessor for type [App] and conformance [A]();
        zip<A, B>(_:_:)();
        v187[0] = v187[4];
        v187[1] = v187[5];

        v47 = v41;
        MEMORY[0x28223BE20](v41, v31);
        v49 = &v38;
        v39 = partial apply for closure #4 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
        v40 = v32;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMd, &_ss12Zip2SequenceVySaySo12SAUIListItemCGSay17SiriAppResolution0F0CGGMR);
        v51 = type metadata accessor for SAUIListItem();
        v48 = v51;
        v33 = lazy protocol witness table accessor for type Zip2Sequence<[SAUIListItem], [App]> and conformance Zip2Sequence<A, B>();
        v34 = v52;
        v36 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed SAUIListItem, @guaranteed App) -> (@owned SAUIListItem), v49, v50, v51, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v35);
        v53 = v34;
        v54 = v36;
        if (v34)
        {
          goto LABEL_72;
        }

        v41[1] = v54;

        outlined destroy of Zip2Sequence<[SAUIListItem], [App]>(v187);
        v42 = Array._bridgeToObjectiveC()().super.isa;

        [v62 setItems_];

        v64 = v53;
      }

      else
      {

        v64 = v173;
      }
    }

    else
    {
      v64 = v173;
    }

    v70 = v64;
LABEL_68:
    result = v70;
    v142 = v70;
    return result;
  }

  v119 = v120;
  v112 = v120;
  v116 = v173;
  v185 = v120;
  v184[1] = v175;

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v113 = v115;
  v17 = lazy protocol witness table accessor for type [App] and conformance [A]();
  v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:), v174, v114, v115, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
  v117 = v173;
  v118 = v19;
  if (v173)
  {
LABEL_70:

    __break(1u);
    goto LABEL_71;
  }

  v109 = v118;

  v110 = Array._bridgeToObjectiveC()().super.isa;

  [v132 setReferencedCommands_];

  v111 = [v112 cardSections];
  if (v111)
  {
    v108 = v111;
    v105 = v111;
    v104 = type metadata accessor for SFCardSection();
    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  v183 = v107;
  if (!v107)
  {
    outlined destroy of [SFCardSection](&v183);
    v103 = v117;
LABEL_42:
    v92 = v103;
    v26 = v112;
    v93 = _SFPBCard.__allocating_init(facade:)(v112);
    if (v93)
    {
      v91 = v93;
      v87 = v93;
      v27 = [v93 data];
      v88 = v27;
      if (v27)
      {
        v86 = v88;
        v81 = v88;
        v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v28;

        v84 = v82;
        v85 = v83;
      }

      else
      {
        v84 = 0;
        v85 = 0xF000000000000000;
      }

      v80 = v85;
      v79 = v84;

      v89 = v79;
      v90 = v80;
    }

    else
    {
      v89 = 0;
      v90 = 0xF000000000000000;
    }

    v77 = v90;
    v78 = v89;
    if (v90 >> 60 == 15)
    {
      v74 = 0;
    }

    else
    {
      v75 = v78;
      v76 = v77;
      v71 = v77;
      v72 = v78;
      v73 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v72, v71);
      v74 = v73;
    }

    v69 = v74;
    [v132 setCardData_];

    v70 = v92;
    goto LABEL_68;
  }

  v101 = v117;
  v94 = v183;

  outlined destroy of [SFCardSection](&v183);
  v182 = v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  v20 = lazy protocol witness table accessor for type [SFCardSection] and conformance [A]();
  v96 = &v182;
  MEMORY[0x26D620820](v184, v95, v20);
  outlined destroy of [SFCardSection](&v182);
  v181 = v184[0];
  v21 = v132;
  v97 = v41;
  MEMORY[0x28223BE20](v41, v22);
  v39 = v132;
  v98 = &v38;
  MEMORY[0x28223BE20](&v38, v23);
  v99 = v37;
  v37[2] = partial apply for closure #3 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:);
  v37[3] = v24;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMd, &_ss18EnumeratedSequenceVySaySo13SFCardSectionCGGMR);
  lazy protocol witness table accessor for type EnumeratedSequence<[SFCardSection]> and conformance EnumeratedSequence<A>();
  v25 = v101;
  Sequence.forEach(_:)();
  v102 = v25;
  if (!v25)
  {

    outlined destroy of [SFCardSection](&v181);
    v103 = v102;
    goto LABEL_42;
  }

LABEL_71:

  __break(1u);
LABEL_72:

  __break(1u);
  return result;
}

void *closure #1 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(void *a1, uint64_t a2)
{
  v9 = App.appIdentifier.getter();
  v10 = v2;
  if (v2)
  {
    type metadata accessor for SASTCommandTemplateAction();
    type metadata accessor for INIntent();
    v5 = SAUIAppPunchOut.__allocating_init()();

    v11 = SASTCommandTemplateAction.init(intent:appId:)(v5, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    _allocateUninitializedArray<A>(_:)();
    *v3 = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(a2);
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setCommands_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BE0](v11);
    [a1 setAction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BE0](a1);
  return a1;
}

uint64_t thunk for @callee_guaranteed (@guaranteed SASTColumnDataListItem, @guaranteed App) -> (@owned SASTTemplateItem)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a1;
  v42 = a2;
  v87 = a3;
  v78 = a4;
  v51 = a5;
  v86 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Unexpectedly found nil while unwrapping an Optional value";
  v47 = "Swift/Sequence.swift";
  v48 = "Range requires lowerBound <= upperBound";
  v49 = "Swift/Range.swift";
  v50 = "Index out of range";
  v89[3] = a3;
  v89[2] = a4;
  v89[1] = a5;
  v79 = 0;
  v63 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](0, AssociatedTypeWitness);
  v56 = &v29 - v55;
  v57 = *(v9 - 8);
  v58 = v9 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v60 = &v29 - v59;
  v61 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13);
  v62 = &v29 - v61;
  v64 = type metadata accessor for Optional();
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v79, v86);
  v66 = &v29 - v65;
  v67 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v68 = &v29 - v67;
  v69 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v70 = &v29 - v69;
  v71 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v72 = &v29 - v71;
  v82 = *(v23 - 8);
  v83 = v23 - 8;
  v73 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v24);
  v81 = &v29 - v73;
  v74 = swift_getAssociatedTypeWitness();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87, v86);
  v85 = &v29 - v77;
  v88 = dispatch thunk of Sequence.underestimatedCount.getter();
  v89[0] = ContiguousArray.init()();
  v80 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v88);
  (*(v82 + 16))(v81, v84, v87);
  dispatch thunk of Sequence.makeIterator()();
  result = v88;
  if (v88 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v48, 39, 2, v49, 17, 2, 760, 0);
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v88)
    {
      v39 = 0;
      for (i = v43; ; i = v35)
      {
        v37 = i;
        v38 = v39;
        if (v39 < 0 || v38 >= v88)
        {
          break;
        }

        if (v88 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v48, 39, 2, v49, 17, 2, 760, 0);
          __break(1u);
          break;
        }

        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        if ((*(v53 + 48))(v68, 1, AssociatedTypeWitness) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v46, 57, 2, v47, 20, 2, 699, 0);
          __break(1u);
        }

        v27 = v37;
        v41(v68, v62);
        v35 = v27;
        if (v27)
        {
          (*(v75 + 8))(v85, v74);
          outlined destroy of ContiguousArray<A1>(v89);
          (*(v57 + 32))(v44, v62, v51);
          (*(v53 + 8))(v68, AssociatedTypeWitness);
          return v29;
        }

        (*(v53 + 8))(v68, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        if (v36 == v88)
        {
          v34 = v35;
          goto LABEL_21;
        }

        result = v35;
        v39 = v36;
      }

      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v34 = v43;
LABEL_21:
    for (j = v34; ; j = v30)
    {
      v32 = j;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(v53 + 48))(v66, 1, AssociatedTypeWitness) == 1)
      {
        (*(v75 + 8))(v85, v74);
        outlined destroy of A.Element?(v66, AssociatedTypeWitness);
        v31 = v89[0];

        return v31;
      }

      (*(v53 + 32))(v56, v66, AssociatedTypeWitness);
      v28 = v32;
      v41(v56, v60);
      v30 = v28;
      if (v28)
      {
        break;
      }

      (*(v53 + 8))(v56, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
    }

    (*(v53 + 8))(v56, AssociatedTypeWitness);
    (*(v75 + 8))(v85, v74);
    outlined destroy of ContiguousArray<A1>(v89);
    (*(v57 + 32))(v44, v60, v51);
    return v29;
  }

  return result;
}

id closure #2 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(*a1);
  *a2 = result;
  return result;
}

void closure #3 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(uint64_t a1, id a2, void *a3)
{
  v28[3] = a1;
  v28[2] = a2;
  v28[1] = a3;
  v22 = [a2 commands];
  if (v22)
  {
    type metadata accessor for SFAbstractCommand();
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v22);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v28[0] = v20;
  if (v20)
  {
    v17 = v28[0];

    outlined destroy of [SFCardSection](v28);
    v27 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SFAbstractCommandCGMd, &_sSaySo17SFAbstractCommandCGMR);
    lazy protocol witness table accessor for type [SFAbstractCommand] and conformance [A]();
    Collection.first.getter();
    v18 = v26;

    if (v26)
    {
      v3 = [v26 value];
      v25 = v3;
      if (v3)
      {
        v16 = v25;
        MEMORY[0x277D82BE0](v25);
        outlined destroy of SFRichText?(&v25);
        MEMORY[0x277D82BD8](v18);
        v24 = [v16 referentialCommand];
        if (v24)
        {
          v14 = v24;
          MEMORY[0x277D82BE0](v24);
          outlined destroy of SFRichText?(&v24);
          MEMORY[0x277D82BD8](v16);
          v15 = [a3 referencedCommands];
          if (v15)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
            v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            MEMORY[0x277D82BD8](v15);
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if (!v13)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/PaymentsAppResolutionFlowStrategy.swift", 59, 2, 356, 0);
            __break(1u);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          Array.subscript.getter();
          swift_getObjectType();
          v11 = [v23 aceId];
          if (v11)
          {
            v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v8 = v4;
            MEMORY[0x277D82BD8](v11);
            v9 = v7;
            v10 = v8;
          }

          else
          {
            v9 = 0;
            v10 = 0;
          }

          if (v10)
          {
            v5 = MEMORY[0x26D620690](v9);

            v6 = v5;
          }

          else
          {
            v6 = 0;
          }

          [v14 setReferenceIdentifier_];
          MEMORY[0x277D82BD8](v6);
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v14);
        }

        else
        {
          outlined destroy of SFRichText?(&v24);
          MEMORY[0x277D82BD8](v16);
        }
      }

      else
      {
        outlined destroy of SFRichText?(&v25);
        MEMORY[0x277D82BD8](v18);
      }
    }
  }

  else
  {
    outlined destroy of [SFCardSection](v28);
  }
}

void *closure #4 in closure #1 in PaymentsAppResolutionFlowStrategy.updateSelectionCommand(aceViews:apps:isWatch:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  _allocateUninitializedArray<A>(_:)();
  *v2 = PaymentsAppResolutionFlowStrategy.makeAppSelectionCommand(app:)(a2);
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setCommands_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](a1);
  return a1;
}

uint64_t PaymentsAppResolutionFlowStrategy.deinit()
{
  outlined destroy of [SFCardSection](v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return v2;
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.resolveApp(input:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsAppResolutionFlowStrategy.resolveApp(input:)(a1);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA008](a1, a2, a3, a4);
}

uint64_t protocol witness for AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationPrompt(app:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsAppResolutionFlowStrategy.makeConfirmationPrompt(app:)(a1, a2);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t protocol witness for AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:) in conformance PaymentsAppResolutionFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return PaymentsAppResolutionFlowStrategy.makeDisambiguationPrompt(apps:)(a1, a2);
}

uint64_t protocol witness for AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:) in conformance PaymentsAppResolutionFlowStrategy<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}