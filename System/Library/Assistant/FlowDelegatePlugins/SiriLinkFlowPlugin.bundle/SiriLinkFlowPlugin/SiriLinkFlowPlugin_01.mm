uint64_t protocol witness for EnableTCCLabelsProviding.getYesNoLabels() in conformance EnableTCCLabelsProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EnableTCCLabelsProviding.getYesNoLabels() in conformance EnableTCCLabelsProvider;

  return EnableTCCLabelsProvider.getYesNoLabels()();
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;

  v16 = *(v10 + 8);
  if (!v0)
  {
    v12 = v9;
    v13 = v7;
    v14 = v5;
    v15 = v3;
  }

  return v16(v12, v13, v14, v15);
}

void *specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a4[10] = a5;
  a4[11] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 7);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  a4[15] = a6;
  a4[16] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(a4 + 12);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  outlined init with take of Output(a1, (a4 + 2));
  return a4;
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels)
  {
    type metadata accessor for WorkflowDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels);
  }

  return result;
}

uint64_t type metadata accessor for EnableTCCCATWrapperSimple(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AppDisplayInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t CustomRequestParameterDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

Swift::String_optional __swiftcall InstallVoiceShortcutInvocationData.getVoiceCommandName()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall InstallVoiceShortcutInvocationData.getVoiceCommandPhrase()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t ShowAlertVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[39] = v2;
  v1[40] = v0;
  type metadata accessor for Separators();
  v1[41] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for ComponentWrapper();
  v1[42] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[43] = v4;
  v1[44] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for BinaryButton();
  v1[45] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[46] = v6;
  v1[47] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Button.LabelStyle();
  v1[48] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[49] = v8;
  v1[50] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for _ProtoButton.FormAction();
  v1[51] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[52] = v10;
  v1[53] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for ButtonRole();
  v1[54] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[55] = v12;
  v1[56] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Button();
  v1[57] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[58] = v14;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v15 = type metadata accessor for Command();
  v1[63] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[64] = v16;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v17 = type metadata accessor for SimpleItemRich();
  v1[67] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[68] = v18;
  v1[69] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v19);
}

{
  v15 = v0;
  v1 = *(v0 + 320);
  *(v0 + 216) = *(v1 + 16);
  v2 = *(v0 + 224);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 216) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    *(v0 + 232) = *(v1 + 32);
    OUTLINED_FUNCTION_1_2(v14, 0);
    outlined init with copy of String?(v0 + 216, v0 + 280);
    outlined init with copy of String(v0 + 232, v0 + 296);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_1_2(v14, 0);
  }

  SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
  v4 = *(v0 + 528);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v7, xmmword_216850);
  *(v0 + 248) = v8;
  *(v0 + 256) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v7[6].n128_u64[0] = &type metadata for String;
  v7[4].n128_u64[1] = 7562617;
  v7[5].n128_u64[0] = 0xE300000000000000;
  v9 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_7_2(v9, 0x800000000022FD30);

  *(v0 + 40) = v5;
  *(v0 + 48) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v6 + 16);
  *(v0 + 568) = v11;
  *(v0 + 576) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(boxed_opaque_existential_1, v4, v5);
  v12 = swift_task_alloc();
  *(v0 + 584) = v12;
  *v12 = v0;
  v12[1] = ShowAlertVisual.response.getter;

  return static LabelTemplates.ok()();
}

{
  OUTLINED_FUNCTION_8_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v5[74] = v1;

  if (!v1)
  {
    v5[75] = v0;
    v5[76] = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v22 = *(v0 + 568);
  v20 = *(v0 + 520);
  v21 = *(v0 + 504);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 416);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  *(v0 + 80) = &type metadata for String;
  *(v0 + 88) = &protocol witness table for String;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v10 = enum case for ButtonRole.preferred(_:);
  v11 = *(v3 + 104);
  *(v0 + 616) = v11;
  *(v0 + 624) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v4, v10, v5);
  *(v0 + 696) = enum case for _ProtoButton.FormAction.none(_:);
  v12 = *(v7 + 104);
  *(v0 + 632) = v12;
  *(v0 + 640) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v6);
  *(v0 + 700) = enum case for Button.LabelStyle.automatic(_:);
  v13 = *(v8 + 104);
  *(v0 + 648) = v13;
  *(v0 + 656) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v9);
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v14, xmmword_216850);
  *(v0 + 264) = v15;
  *(v0 + 272) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v14[6].n128_u64[0] = &type metadata for String;
  v14[4].n128_u64[1] = 28526;
  v14[5].n128_u64[0] = 0xE200000000000000;
  v16 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_7_2(v16, 0x800000000022FD30);

  *(v0 + 120) = v21;
  *(v0 + 128) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v22(boxed_opaque_existential_1, v20, v21);
  v18 = swift_task_alloc();
  *(v0 + 664) = v18;
  *v18 = v0;
  v18[1] = ShowAlertVisual.response.getter;

  return static LabelTemplates.cancel()();
}

{
  OUTLINED_FUNCTION_8_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v5[84] = v1;

  if (!v1)
  {
    v5[85] = v0;
    v5[86] = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v24 = *(v0 + 648);
  v23 = *(v0 + 700);
  v3 = *(v0 + 632);
  v4 = *(v0 + 696);
  v25 = *(v0 + 616);
  v41 = *(v0 + 552);
  v42 = *(v0 + 544);
  v38 = *(v0 + 536);
  v33 = *(v0 + 520);
  v34 = *(v0 + 528);
  v31 = *(v0 + 512);
  v32 = *(v0 + 504);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v30 = v5;
  v39 = *(v0 + 480);
  v40 = *(v0 + 472);
  v7 = *(v0 + 464);
  v37 = *(v0 + 456);
  v8 = *(v0 + 448);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  *(v0 + 160) = &type metadata for String;
  *(v0 + 168) = &protocol witness table for String;
  *(v0 + 136) = v1;
  v13 = *(v0 + 384);
  v35 = *(v0 + 376);
  *(v0 + 144) = v2;
  v27 = *(v0 + 368);
  v26 = *(v0 + 360);
  v36 = *(v0 + 352);
  v29 = *(v0 + 344);
  v28 = *(v0 + 336);
  v3(v10, v4, v11);
  v24(v12, v23, v13);
  v25(v8, enum case for ButtonRole.standard(_:), v9);
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v14 = *(v7 + 16);
  v14(v39, v5, v37);
  v14(v40, v6, v37);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 200) = v26;
  *(v0 + 208) = &protocol witness table for BinaryButton;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  (*(v27 + 16))(boxed_opaque_existential_1, v35, v26);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_216840;
  *(v16 + 56) = v38;
  *(v16 + 64) = &protocol witness table for SimpleItemRich;
  v17 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  (*(v42 + 16))(v17, v41, v38);
  *(v16 + 96) = v28;
  *(v16 + 104) = &protocol witness table for ComponentWrapper;
  v18 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  (*(v29 + 16))(v18, v36, v28);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  (*(v29 + 8))(v36, v28);
  (*(v27 + 8))(v35, v26);
  v19 = *(v7 + 8);
  v19(v6, v37);
  v20 = *(v31 + 8);
  v20(v33, v32);
  v19(v30, v37);
  v20(v34, v32);
  (*(v42 + 8))(v41, v38);

  OUTLINED_FUNCTION_6_0();

  return v21();
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  (*(v0[64] + 8))(v0[66], v0[63]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  v11 = v0[69];
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[62];
  v6 = v0[57];
  v7 = v0[58];
  v8 = *(v0[64] + 8);
  v8(v0[65], v4);
  (*(v7 + 8))(v5, v6);
  v8(v3, v4);
  (*(v1 + 8))(v11, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShowAlertVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_28();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = ShowAlertVisual.data.getter;

  return ShowAlertVisual.response.getter();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = v0[6];
  lazy protocol witness table accessor for type Response and conformance Response();
  v2 = ProtobufBuilder.serializedData()();
  v4 = v3;
  v5 = v0[3];
  v6 = v0[2];
  if (v1)
  {
    (*(v5 + 8))(v0[4], v6);

    OUTLINED_FUNCTION_6_0();

    return v7();
  }

  else
  {
    v9 = v2;
    (*(v5 + 8))(v0[4], v6);

    v10 = v0[1];

    return v10(v9, v4);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

unint64_t lazy protocol witness table accessor for type Response and conformance Response()
{
  result = lazy protocol witness table cache variable for type Response and conformance Response;
  if (!lazy protocol witness table cache variable for type Response and conformance Response)
  {
    type metadata accessor for Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response and conformance Response);
  }

  return result;
}

uint64_t DisambiguationItemComponent.init(title:subtitle:image:synonyms:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ShowAlertVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowAlertVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[3] = a2;
  a1[4] = a2;
  a1[6] = a2;
  a1[7] = a2;
  *(v2 - 224) = 0;
  a1[9] = a2;
  a1[10] = a2;
  *(v2 - 176) = 0;
  a1[12] = a2;
  a1[13] = a2;
  *(v2 - 128) = 0;
  a1[15] = a2;
  a1[16] = a2;
  *(v2 - 80) = 0;
  a1[18] = a2;
  a1[19] = a2;
}

uint64_t OUTLINED_FUNCTION_2_1()
{
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return static Command.directInvocation(identifier:payload:isNavigation:)();
}

uint64_t InstallVoiceShortcutInvocationData.description.getter()
{
  v1 = 0x7974706D65;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v5._object = 0x800000000022FD70;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v5);
  if (v0[3])
  {
    v6 = v0[2];
    v7 = v0[3];
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x7974706D65;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x617265747475202CLL;
  v9._object = 0xED0000203A65636ELL;
  String.append(_:)(v9);
  if (v0[5])
  {
    v10 = v0[4];
    v11 = v0[5];
  }

  else
  {
    v11 = 0xE500000000000000;
    v10 = 0x7974706D65;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A6C7275202CLL;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  outlined init with copy of URL?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url, v4);
  v14 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) == 1)
  {
    outlined destroy of URL?(v4);
    v15 = 0xE500000000000000;
  }

  else
  {
    v1 = URL.absoluteString.getter();
    v15 = v16;
    (*(*(v14 - 8) + 8))(v4, v14);
  }

  v17._countAndFlagsBits = v1;
  v17._object = v15;
  String.append(_:)(v17);

  return v19[0];
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallVoiceShortcutInvocationData.__allocating_init(semantic:url:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(a1, a2, a3, a4, a5);
  return v10;
}

void *InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a4;
  v5[5] = a5;
  outlined init with take of URL?(a3, v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url);
  return v5;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallVoiceShortcutInvocationData.__allocating_init(invocationData:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  type metadata accessor for InstallVoiceShortcutInvocationData(0);
  v10 = static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0xD000000000000010, 0x800000000022FDA0, a1);
  v12 = v11;
  v13 = static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0xD000000000000012, 0x800000000022FDC0, a1);
  v15 = v14;
  static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0x6D6F436563696F76, 0xEF4C5255646E616DLL, a1);
  v17 = v16;

  if (v17)
  {
    URL.init(string:)();
  }

  else
  {
    v18 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
  }

  outlined init with copy of URL?(v9, v7);
  v19 = (*(v2 + 112))(v10, v12, v7, v13, v15);
  outlined destroy of URL?(v9);
  return v19;
}

uint64_t type metadata accessor for InstallVoiceShortcutInvocationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for InstallVoiceShortcutInvocationData;
  if (!type metadata singleton initialization cache for InstallVoiceShortcutInvocationData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v7)
    {
      outlined init with copy of Any(*(a3 + 56) + 32 * v6, v17);
      if (swift_dynamicCast())
      {
        return v16;
      }
    }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v17);
    *(v12 + 12) = 2080;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

    *(v12 + 14) = v15;
    _os_log_impl(&dword_0, v10, v11, "InstallVoiceShortcutInvocationData missing %s : %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t InstallVoiceShortcutInvocationData.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url);
  return v0;
}

uint64_t InstallVoiceShortcutInvocationData.__deallocating_deinit()
{
  InstallVoiceShortcutInvocationData.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for InstallVoiceShortcutInvocationData(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t InstallShortcutCATs.errorInstallShortcut(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATs.errorInstallShortcut(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_3_2();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return v7(v5, 0xD000000000000024);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.errorInstallShortcut(device:));
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t InstallShortcutCATs.launchApp(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATs.launchApp(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_3_2();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return v7(v5, 0xD000000000000019);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.launchApp(device:));
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t InstallShortcutCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

uint64_t WorkflowRunnerCATPatternsExecutor.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstallShortcutCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for InstallShortcutCATs;
  if (!type metadata singleton initialization cache for InstallShortcutCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656369766564;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
}

uint64_t LocationProvider.__allocating_init(aceServiceInvoker:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 24);
  return v2;
}

uint64_t LocationProvider.init(aceServiceInvoker:)(__int128 *a1)
{
  *(v1 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(a1, v1 + 24);
  return v1;
}

uint64_t LocationProvider.getCurrentLocation()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(LocationProvider.getCurrentLocation());
}

{
  v1 = v0[2];
  v2 = [objc_allocWithZone(SAGetRequestOrigin) init];
  v0[3] = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(v3, v4, v2);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v2 setMaxAge:isa];

  v6 = [objc_allocWithZone(NSNumber) initWithDouble:0.05];
  [v2 setSearchTimeout:v6];

  v7 = v1[6];
  v8 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v7);
  v9 = swift_task_alloc();
  v0[4] = v9;
  v10 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v9 = v0;
  v9[1] = LocationProvider.getCurrentLocation();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v7, v10, v8);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0[5];
    v4 = v0[3];
    v5 = objc_allocWithZone(SFLatLng);
    v6 = v3;
    v7 = [v5 init];
    [v2 latitude];
    [v7 setLat:?];
    [v2 longitude];
    [v7 setLng:?];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[5];
    v13 = v0[3];
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v9, v10, "#LocationProvider could not convert result to SASetRequestOrigin", v14, 2u);
    }

    v7 = 0;
  }

  v15 = v0[1];

  return v15(v7);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#LocationProvider Could not get current location", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t LocationProvider.getCurrentLocation()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = LocationProvider.getCurrentLocation();
  }

  else
  {
    v4 = LocationProvider.getCurrentLocation();
  }

  return _swift_task_switch(v4);
}

uint64_t LocationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider()
{
  v4 = (*(**v0 + 104) + **(**v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider;

  return v4();
}

uint64_t protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDesiredAccuracy:v4];
}

uint64_t NSDateComponents.toRelativeLocalizedString(locale:)()
{
  v35 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_1();
  v34 = v0;
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v33 = v3 - v2;
  v4 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  v24 = [objc_allocWithZone(NSDateFormatter) init];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [v24 setLocale:isa];

  [v24 setDateStyle:4];
  [v24 setDoesRelativeDateFormatting:1];
  static Calendar.current.getter();
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  Calendar.date(from:)();
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
  v26 = v35;
  outlined init with copy of Date?(v23, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v26) == 1)
  {
    outlined destroy of Date?(v23);

    v27 = 0;
    v23 = v21;
  }

  else
  {
    v29 = v33;
    v28 = v34;
    (*(v34 + 32))(v33, v21, v26);
    v30 = Date._bridgeToObjectiveC()().super.isa;
    v31 = [v24 stringForObjectValue:v30];

    if (v31)
    {
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v27 = 0;
    }

    (*(v28 + 8))(v29, v26);
  }

  outlined destroy of Date?(v23);
  return v27;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.toContactQuery()()
{
  v1 = ContactQuery.init()();
  (*(*v0 + 216))(v1);
  if (v2)
  {
    ContactQuery.namePrefix.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v3 + 184))();
  if (v4 || (OUTLINED_FUNCTION_0_3(), (*(v5 + 208))(), v6))
  {
    ContactQuery.givenName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v7 + 192))();
  if (v8)
  {
    ContactQuery.middleName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v9 + 200))();
  if (v10)
  {
    ContactQuery.familyName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v11 + 224))();
  if (v12)
  {
    ContactQuery.nickname.setter();
  }

  OUTLINED_FUNCTION_0_3();
  result = (*(v13 + 232))();
  if (v15)
  {
    return ContactQuery.nameSuffix.setter();
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *TfIdfFuzzyMatcher.match(term:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v119 = v114 - v10;
  v116 = *(v8 - 8);
  __chkstk_darwin(v9);
  v125 = v114 - v11;
  v128 = a3;
  v134 = a3;
  v131 = v8;
  v114[0] = v3;
  v120 = *(v7 + 88);
  v132 = v120;
  v126 = v8;
  v12 = type metadata accessor for Array();
  OUTLINED_FUNCTION_1_4();
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TfIdfFuzzyMatcher.match(term:in:), v130, v12, &type metadata for Document, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);
  v114[1] = 0;
  type metadata accessor for TfIdfComputer();
  swift_allocObject();

  v17 = TfIdfComputer.init(documents:)(v16);
  v129 = v17;
  v118 = a1;
  v122 = a2;
  v18 = String.lowercased()();
  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  v19 = 0;
  v20 = *(v15 + 16);
  v21 = _swiftEmptyArrayStorage;
LABEL_2:
  v22 = (v15 + 40 + 16 * v19);
  while (v20 != v19)
  {
    if (v19 >= *(v15 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      OUTLINED_FUNCTION_0_1();
      swift_once();
LABEL_22:
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.voiceCommands);
      v42 = v122;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v134 = v46;
        *v45 = 136315138;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v42, &v134);
        _os_log_impl(&dword_0, v43, v44, "[TfIdfFuzzyMatcher] query %s produced a null vector", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        OUTLINED_FUNCTION_15_0(v46);
        OUTLINED_FUNCTION_15_0(v45);
      }

LABEL_56:

      return 0;
    }

    ++v19;
    v23 = *(v22 - 1);
    v24 = *v22;
    v22 += 2;
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1);
        v21 = v134;
      }

      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v21 = v134;
      }

      v21[2] = v28 + 1;
      v29 = &v21[2 * v28];
      v29[4] = v23;
      v29[5] = v24;
      goto LABEL_2;
    }
  }

  v30 = v21[2];
  v123 = v17 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v30)
  {
    v134 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v134;
    v32 = *(*v129 + 104);
    v33 = v21 + 5;
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;

      v36 = v32(v34, v35);

      v134 = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v31 = v134;
      }

      v31[2] = v38 + 1;
      v31[v38 + 4] = v36;
      v33 += 2;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v39 = (*(*v129 + 104))(countAndFlagsBits, object);

  v40 = &unk_2B7000;
  if (Array<A>.isNullVector.getter(v39))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_22;
  }

  Array<A>.dot(other:)(v39, v39);
  v48 = sqrt(v47);
  v49 = 0;
  v134 = static Array._allocateUninitialized(_:)();
  v50 = v31[2];
  object = v31 + 4;
  v51 = v39 + 32;
  v118 = v120 + 32;
  v117 = (v116 + 1);
  v116 += 4;
  *&v52 = 134218242;
  v115 = v52;
  v123 = v50;
  countAndFlagsBits = v39;
  while (v49 != v50)
  {
    v53 = v49;
    if (v49 >= v31[2])
    {
      goto LABEL_61;
    }

    v54 = object[v49++];
    v55 = *(v39 + 16);
    if (v55 == *(v54 + 16))
    {
      if (v55)
      {
        v56 = 0;
        v57 = (v54 + 32);
        v58 = 0.0;
        do
        {
          v58 = v58 + *(v51 + 8 * v56) * v57[v56];
          ++v56;
        }

        while (v55 != v56);
        v59 = 0.0;
        do
        {
          v60 = *v57++;
          v59 = v59 + v60 * v60;
          --v55;
        }

        while (v55);
      }

      else
      {
        v59 = 0.0;
        v58 = 0.0;
      }

      v66 = sqrt(v59);
      if (v40[95] != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v67 = v58 / (v48 * v66);
      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.voiceCommands);

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v122 = v49;
        v72 = v71;
        v73 = swift_slowAlloc();
        v133 = v73;
        *v72 = v115;
        *(v72 + 4) = v67;
        *(v72 + 12) = 2080;
        v74 = v125;
        v75 = v126;
        Array.subscript.getter();
        v76 = (*(v120 + 32))(v75);
        v78 = v77;
        (*v117)(v74, v126);
        v79 = v76;
        v39 = countAndFlagsBits;
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, &v133);

        *(v72 + 14) = v80;
        _os_log_impl(&dword_0, v69, v70, "[TfIdfFuzzyMatcher] score: %f, title: %s", v72, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        OUTLINED_FUNCTION_15_0(v73);
        v81 = v72;
        v49 = v122;
        OUTLINED_FUNCTION_15_0(v81);
      }

      v40 = &unk_2B7000;
      v50 = v123;
      if (v67 > 0.15)
      {
        v83 = v125;
        v82 = v126;
        Array.subscript.getter();
        v84 = v49;
        v85 = *(TupleTypeMetadata2 + 48);
        v86 = v119;
        v87 = v83;
        v39 = countAndFlagsBits;
        (*v116)(v119, v87, v82);
        *&v86[v85] = v67;
        v49 = v84;
        type metadata accessor for Array();
        Array.append(_:)();
      }
    }

    else
    {
      v61 = v53 + 1;
      if (v40[95] != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.voiceCommands);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_0, v63, v64, "[TfIdfFuzzyMatcher] mismatched vector sizes - this should not have happened. Please file a bug.", v65, 2u);
        OUTLINED_FUNCTION_15_0(v65);
      }

      v49 = v61;
    }
  }

  v88 = v40;

  v90 = v134;
  v133 = v134;
  __chkstk_darwin(v89);
  v91 = v120;
  v114[-2] = v126;
  v114[-1] = v91;
  v92 = type metadata accessor for Array();

  OUTLINED_FUNCTION_1_4();
  v93 = swift_getWitnessTable();
  v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in TfIdfFuzzyMatcher.match(term:in:), &v114[-4], v92, &type metadata for Double, &type metadata for Never, v93, &protocol witness table for Never, v94);

  v96 = specialized Sequence<>.max()(v95);
  v98 = v97;

  if (v98)
  {

    if (v88[95] != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Logger.voiceCommands);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "[TfIdfFuzzyMatcher] empty results after running matcher", v103, 2u);
      OUTLINED_FUNCTION_15_0(v103);
    }

    goto LABEL_56;
  }

  if ((v96 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {

    return 0;
  }

  v133 = v90;
  __chkstk_darwin(v99);
  v104 = v126;
  v114[-4] = v126;
  v114[-3] = v91;
  v114[-2] = v96;
  v106 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in TfIdfFuzzyMatcher.match(term:in:), &v114[-6], v92, TupleTypeMetadata2, &type metadata for Never, v93, &protocol witness table for Never, v105);

  v133 = v106;
  swift_getWitnessTable();
  v133 = _ArrayProtocol.filter(_:)();
  __chkstk_darwin(v133);
  v114[-2] = v104;
  v114[-1] = v91;
  swift_getWitnessTable();
  v107 = Sequence.sorted(by:)();

  v133 = v107;
  v108 = Collection.isEmpty.getter();
  if (v108)
  {

    goto LABEL_56;
  }

  v133 = v107;
  __chkstk_darwin(v108);
  v114[-2] = v104;
  v114[-1] = v91;
  KeyPath = swift_getKeyPath();
  v111 = __chkstk_darwin(KeyPath);
  v114[-2] = v91;
  v114[-1] = v111;
  v113 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #4 in TfIdfFuzzyMatcher.match(term:in:), &v114[-4], v92, v104, &type metadata for Never, v93, &protocol witness table for Never, v112);

  return CustomIntentDisambiguationItemContainer.init(items:)(v113).items._rawValue;
}

uint64_t closure #1 in TfIdfFuzzyMatcher.match(term:in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, Swift::String *a3@<X8>)
{
  (*(a2 + 8))(&v6, a1, a2);
  v11 = v7;
  outlined destroy of String?(&v11, &_sSSSgMd, &_sSSSgMR);
  v12 = v8;
  outlined destroy of String?(&v12, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v10 = v9;
  outlined destroy of String?(&v10, &_sSaySSGMd, &_sSaySSGMR);
  v4 = String.lowercased()();

  *a3 = v4;
  return result;
}

uint64_t closure #4 in TfIdfFuzzyMatcher.match(term:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  *a3 = *&v8[*(TupleTypeMetadata2 + 48)];
  return (*(*(a2 - 8) + 8))(v8, a2);
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double closure #5 in TfIdfFuzzyMatcher.match(term:in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v15 - v10;
  v12 = *(v9 + 48);
  (*(v13 + 16))(&v15 - v10, a1, TupleTypeMetadata2);
  (*(*(a2 - 8) + 32))(a3, v11, a2);
  result = *(a1 + *(TupleTypeMetadata2 + 48)) / a4;
  *(a3 + v12) = result;
  return result;
}

uint64_t implicit closure #4 in TfIdfFuzzyMatcher.match(term:in:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + class metadata base offset for KeyPath);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v4 + 16))(&v13 - v8);
  v10 = *(v3 + 48);
  v11 = *&v9[v10];
  (*(*(*(v2 + class metadata base offset for KeyPath + 8) - 8) + 32))(v7, v9);
  *&v7[v10] = v11;
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

double TfIdfFuzzyMatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.15;
  *(v0 + 16) = xmmword_216C60;
  return result;
}

double TfIdfFuzzyMatcher.init()()
{
  result = 0.15;
  *(v0 + 16) = xmmword_216C60;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t outlined destroy of String?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LNValueType.executeCommonVoiceCommandTaskBuilder.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v0);
  if (!v6)
  {
    outlined consume of VoiceCommandIntentValueType(v4, v5, 0);
LABEL_5:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    v12 = OUTLINED_FUNCTION_1_5();
    v11 = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)(v12, v13);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
LABEL_3:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    v7 = OUTLINED_FUNCTION_2_3();
    v11 = static UsoTaskBuilder_execute_common_VoiceCommand.unitTaskBuilder(value:symbol:unitName:)(v7, v8, v9, v10, 0, 0);
LABEL_6:
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v14;
    v16 = type metadata accessor for UsoBuilderOptions();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);

    static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

    outlined destroy of UsoBuilderOptions?(v3);
    v17 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v19 = v18;

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v40);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_0, v21, v22, "Building nlv4 prompt:\n%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {
    }

    return v14;
  }

  switch(v4)
  {
    case 2uLL:
    case 0x11uLL:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.voiceCommands);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Attempting to make nlv4 prompt for unsupported value type", v30, 2u);
      }

      v14 = 0;
      break;
    case 3uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v33 = OUTLINED_FUNCTION_2_3();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.currencyTaskBuilder(value:currencyCode:)(v33, v34, v35, v36);
      goto LABEL_6;
    case 4uLL:
    case 5uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.dateTaskBuilder()();
      goto LABEL_6;
    case 6uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.dateIntervalTaskBuilder()();
      goto LABEL_6;
    case 7uLL:
      goto LABEL_3;
    case 8uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.recurrenceRuleTaskBuilder()();
      goto LABEL_6;
    case 9uLL:
    case 0xBuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.numberTaskBuilder()();
      goto LABEL_6;
    case 0xAuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.entityTaskBuilder()();
      goto LABEL_6;
    case 0xCuLL:
    case 0xDuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v31 = OUTLINED_FUNCTION_1_5();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.personTaskBuilder(value:)(v31, v32);
      goto LABEL_6;
    case 0xEuLL:
    case 0xFuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.placemarkTaskBuilder()();
      goto LABEL_6;
    case 0x12uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v37 = OUTLINED_FUNCTION_1_5();
      v11 = static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)(v37, v38);
      goto LABEL_6;
    default:
      goto LABEL_5;
  }

  return v14;
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of VoiceCommandIntentValueType(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void *CustomIntentStateAttachment.customIntentResponse.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *WorkflowDataModels.LinkActionModel.snippetAction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.__allocating_init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v17 = swift_allocObject();
  ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v17 = type metadata accessor for CATOption();
  __chkstk_darwin(v17 - 8);
  OUTLINED_FUNCTION_3();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v18 = a1;
  v19 = a2;
  v20 = a5;
  LNActionMetadata.firstParameterMetadata(from:)(v19);
  v10[7] = v21;
  if (v21)
  {
    v21 = [v21 valueType];
  }

  v10[8] = v21;
  outlined init with copy of DeviceState(a6, (v10 + 9));
  outlined init with copy of DeviceState(a9, (v10 + 14));
  outlined init with copy of DeviceState(a6, v30);
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  v24 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v25 = CATWrapper.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  type metadata accessor for LinkActionDialogTemplating();
  v26 = swift_allocObject();
  v26[14] = v24;
  v26[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v26[11] = v25;
  outlined init with take of Output(v30, (v26 + 2));
  v26[7] = a7;
  v26[8] = a8;
  v26[9] = v22;
  v26[10] = v23;
  v10[19] = v26;
  return v10;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v53 = v9 - v8;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v56 = v11;
  v57 = v10;
  v12 = __chkstk_darwin(v10);
  v54 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = v50 - v14;
  v15 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v22, static Logger.voiceCommands);
  (*(v17 + 16))(v21, a1, v15);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_48();
    v50[1] = a1;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_85();
    v52 = a2;
    v28 = v27;
    v58 = v27;
    *v26 = 136315138;
    Input.description.getter();
    v51 = v6;
    (*(v17 + 8))(v21, v15);
    v29 = OUTLINED_FUNCTION_76();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v31);
    v6 = v51;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_0, v23, v24, "#ShortcutsLinkPromptForValueFlowStrategy actionForInput: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_15_0(v28);
    OUTLINED_FUNCTION_15_0(v26);
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v33 = v55;
  Input.parse.getter();
  v34 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v33);
  v35 = *(v56 + 8);
  v36 = OUTLINED_FUNCTION_62();
  v35(v36);
  switch(v34)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v38 = v54;
      Input.parse.getter();
      v39 = OUTLINED_FUNCTION_62();
      v41 = v40(v39);
      if (v41 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v41 == enum case for Parse.directInvocation(_:))
      {
        v43 = OUTLINED_FUNCTION_62();
        v44(v43);
        v45 = v53;
        (*(v6 + 32))(v53, v38, v4);
        if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v46)
        {
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            static ActionForInput.ignore()();
            return (*(v6 + 8))(v45, v4);
          }
        }

        static ActionForInput.handle()();
        return (*(v6 + 8))(v45, v4);
      }

      if (v41 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
      {
LABEL_9:
        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v49 = OUTLINED_FUNCTION_62();
      return (v35)(v49);
  }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for USOParse();
  v1[13] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for NLIntent();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Parse();
  v1[19] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Input();
  v1[22] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[23] = v12;
  v1[24] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 224) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[17] + 8))(v0[18], v0[16]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_87();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 240) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[14] + 8))(v0[15], v0[13]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_87();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[17] + 8))(v0[18], v0[16]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[14] + 8))(v0[15], v0[13]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v24 = v20[23];
  v23 = v20[24];
  v25 = v20[22];
  v26 = v20[8];
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_48();
    v31 = OUTLINED_FUNCTION_85();
    a9 = v31;
    *v30 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_76();
    v36(v35);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &a9);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_0, v28, v29, "#ShortcutsLinkPromptForValueFlowStrategy parseValueResponse from: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0(v30);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_76();
    v39(v38);
  }

  v40 = [*(v20[9] + 48) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  OUTLINED_FUNCTION_71();
  v20[25] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v20[26] = v41;
  *v41 = v42;
  v41[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
  OUTLINED_FUNCTION_27_0();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v43, v44, v45);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)(uint64_t a1)
{
  v2 = v1 + 21;
  v3 = v1 + 20;
  v4 = v1 + 19;
  Input.parse.getter();
  v5 = OUTLINED_FUNCTION_9_3();
  v7 = v6(v5);
  if (v7 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v8 = v1[21];
    v9 = v1[18];
    v10 = v1[16];
    v11 = v1[17];
    (*(v1[20] + 96))(v8, v1[19]);
    (*(v11 + 32))(v9, v8, v10);
    v12 = swift_task_alloc();
    v1[27] = v12;
    *v12 = v1;
    v12[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
    OUTLINED_FUNCTION_73(v1[18]);
    OUTLINED_FUNCTION_21_0();

    return ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)(v13);
  }

  if (v7 == enum case for Parse.directInvocation(_:))
  {
    v16 = v1[12];
    (*(v1[20] + 96))(v1[21], v1[19]);
    v17 = OUTLINED_FUNCTION_9_3();
    v18(v17);
    ShortcutsLinkPromptForValueFlowStrategy.parse(directInvocation:)(v16);
    v19 = OUTLINED_FUNCTION_62();
    v20(v19);
    goto LABEL_13;
  }

  if (v7 != enum case for Parse.uso(_:) || (v2 = v1 + 15, v21 = v1[15], v22 = v1[21], v3 = v1 + 14, v23 = v1[14], v4 = v1 + 13, v24 = v1[13], (*(v1[20] + 96))(v22, v1[19]), (*(v23 + 32))(v21, v22, v24), (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0))
  {
    (*(*v3 + 8))(*v2, *v4);
LABEL_13:
    OUTLINED_FUNCTION_12_2();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_21_0();

    __asm { BRAA            X2, X16 }
  }

  v25 = swift_task_alloc();
  v1[29] = v25;
  *v25 = v1;
  v25[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
  OUTLINED_FUNCTION_73(v1[15]);
  OUTLINED_FUNCTION_21_0();

  return ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)(v26);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Locale();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for VoiceCommandsNLIntent(0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:));
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 96) = v8;

  v10 = OUTLINED_FUNCTION_20_1();
  v11(v10);
  outlined destroy of VoiceCommandsNLIntent(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[3];
  v2 = v1[8];
  v0[8] = v2;
  if (!v2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v16))
    {
      v17 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v17);
      OUTLINED_FUNCTION_26(&dword_0, v18, v19, "#ShortcutsLinkPromptForFlowStrategy parseValueResponse has nil valueType");
      OUTLINED_FUNCTION_17();
    }

LABEL_15:

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1[7];
  v0[9] = v3;
  if (!v3)
  {
    v20 = one-time initialization token for voiceCommands;
    v21 = v2;
    if (v20 != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v22, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = OUTLINED_FUNCTION_30_1(v23);
    v25 = v0[8];
    if (v24)
    {
      v26 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v26);
      OUTLINED_FUNCTION_26(&dword_0, v27, v28, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from NLIntent");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v15 = v25;
    }

    goto LABEL_15;
  }

  v4 = v0[7];
  v5 = v0[2];
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_21_2();
  (*(v6 + 16))(v4, v5);
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v2;
  v7 = v3;
  dispatch thunk of DeviceState.siriLocale.getter();
  v8 = type metadata accessor for ContactResolver();
  OUTLINED_FUNCTION_66(v8);
  v9 = ContactResolver.init()();
  v0[10] = v9;
  OUTLINED_FUNCTION_54(async function pointer to specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
  v31 = v10;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:);
  v12 = OUTLINED_FUNCTION_73(v0[7]);

  return v31(v12, v7, v9);
}

{
  OUTLINED_FUNCTION_24_1();
  v28 = v0;
  v1 = *(v0 + 96);
  if (!v1)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v17, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = OUTLINED_FUNCTION_30_1(v19);
    v21 = *(v0 + 64);
    if (v20)
    {
      v22 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v22);
      OUTLINED_FUNCTION_26(&dword_0, v23, v24, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from NLIntent");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v18 = v21;
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v27 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v27);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "#ShortcutsLinkPromptForFlowStrategy parsed value: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0(v6);
  }

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78();

  return ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(v14);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = OUTLINED_FUNCTION_6_4();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Locale();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:));
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v8 + 80) = v7;

  if (v1)
  {
  }

  v9 = OUTLINED_FUNCTION_9_3();
  v10(v9);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[8];
  v0[7] = v2;
  if (v2)
  {
    v3 = v1[7];
    v0[8] = v3;
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
      v2;
      v4 = v3;
      OUTLINED_FUNCTION_9_3();
      dispatch thunk of DeviceState.siriLocale.getter();
      v5 = swift_task_alloc();
      v0[9] = v5;
      *v5 = v0;
      v5[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:);
      OUTLINED_FUNCTION_73(v0[2]);

      return LNValueType.getLNValue(usoParse:parameterMetadata:locale:)();
    }

    v13 = one-time initialization token for voiceCommands;
    v14 = v2;
    if (v13 != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = OUTLINED_FUNCTION_30_1(v16);
    v18 = v0[7];
    if (v17)
    {
      v19 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v19);
      OUTLINED_FUNCTION_26(&dword_0, v20, v21, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v8 = v18;
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v9))
    {
      v10 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v10);
      OUTLINED_FUNCTION_26(&dword_0, v11, v12, "#ShortcutsLinkPromptForFlowStrategy parseValueResponse has nil valueType");
      OUTLINED_FUNCTION_17();
    }
  }

  v22 = OUTLINED_FUNCTION_2_4();

  return v23(v22);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 80))
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:);
    v2 = OUTLINED_FUNCTION_72();

    return ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(v2);
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v4, static Logger.voiceCommands);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = OUTLINED_FUNCTION_30_1(v6);
    v8 = *(v0 + 56);
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v9);
      OUTLINED_FUNCTION_26(&dword_0, v10, v11, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v5 = v8;
    }

    v12 = OUTLINED_FUNCTION_2_4();

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = OUTLINED_FUNCTION_6_4();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_12_0();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v6);
    OUTLINED_FUNCTION_26(&dword_0, v7, v8, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
    OUTLINED_FUNCTION_17();
  }

  else
  {

    v2 = v5;
  }

  v9 = OUTLINED_FUNCTION_2_4();

  return v10(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(directInvocation:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Parse.DirectInvocation.userData.getter();
  if (!v8)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_7;
  }

  specialized Dictionary.subscript.getter(v8, &v28, 0x65756C6176, 0xE500000000000000);

  if (!*(&v29 + 1))
  {
LABEL_7:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v28, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v9 = v26;
    v10 = v27;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v1)
    {

      outlined consume of Data._Representation(v9, v10);
      v2 = 0;
    }

    else
    {
      v22 = v11;
      outlined consume of Data._Representation(v9, v10);
      if (v22)
      {
        return v22;
      }
    }
  }

LABEL_8:
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  (*(v5 + 16))(v7, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v30 = v2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v28 = v16;
    *v15 = 136315138;
    v17 = Parse.DirectInvocation.userData.getter();
    v25 = v4;
    if (!v17)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v18 = Dictionary.description.getter();
    v20 = v19;

    (*(v5 + 8))(v7, v25);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "#ShortcutsLinkPromptForValueFlowStrategy could not get value from direct invocation. %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    return 0;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_8_0();
  v1[58] = v2;
  v1[59] = v0;
  v3 = type metadata accessor for DialogPhase();
  v1[60] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[61] = v4;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[64] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[65] = v6;
  v1[66] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for SpeakableString();
  v1[67] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[68] = v8;
  v1[69] = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  v73 = v0;
  v1 = *(v0[59] + 56);
  v0[74] = v1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v1 title];
  if (!v2)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

  v3 = [objc_opt_self() sharedPreferences];
  outlined bridged method (ob) of @objc AFPreferences.languageCode()(v3);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v7 = [v2 localizedStringForLocaleIdentifier:v5];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v8;

LABEL_9:
  v0[76] = v6;
  v0[75] = v2;
  v9 = v0[73];
  v10 = v0[59];
  type metadata accessor for ShortcutsLinkNLContextProvider();
  swift_initStackObject();
  ShortcutsLinkNLContextProvider.makeContextForNeedsValue(valueType:)(*(v10 + 64), v9);
  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v12 = v0[73];
  v13 = v0[72];
  v14 = type metadata accessor for Logger();
  v0[77] = __swift_project_value_buffer(v14, static Logger.voiceCommands);
  outlined init with copy of NLContextUpdate?(v12, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[72];
  if (!v17)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    if (!v1)
    {
      goto LABEL_19;
    }

LABEL_14:
    v23 = v1;
    v24 = swift_task_alloc();
    v0[78] = v24;
    *v24 = v0;
    v24[1] = ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue();
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(v25);
  }

  v19 = v0[71];
  v20 = OUTLINED_FUNCTION_48();
  v21 = OUTLINED_FUNCTION_85();
  v72 = v21;
  *v20 = 136315138;
  outlined init with copy of NLContextUpdate?(v18, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[71], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v22 = 0;
  }

  else
  {
    v22 = NLContextUpdate.nluSystemDialogActs.getter();
    OUTLINED_FUNCTION_21_2();
    v28 = OUTLINED_FUNCTION_76();
    v29(v28);
  }

  v30 = v0[72];
  v0[57] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMR);
  v31 = String.init<A>(describing:)();
  v33 = v32;
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v30, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v72);

  *(v20 + 4) = v34;
  _os_log_impl(&dword_0, v15, v16, "#ShortcutsLinkPromptForValueFlowStrategy makePromptForValue: %s", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  OUTLINED_FUNCTION_15_0(v21);
  OUTLINED_FUNCTION_11_0();

  if (v1)
  {
    goto LABEL_14;
  }

LABEL_19:
  v0[83] = _swiftEmptyArrayStorage;
  v35 = specialized Array.count.getter(_swiftEmptyArrayStorage);
  v0[84] = v35;
  if (v35)
  {
    v36 = v35;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v38))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v39, v40, "#ShortcutsLinkPromptForValueFlowStrategy value has provided options so will use disambiguation");
      OUTLINED_FUNCTION_11_0();
    }

    v41 = v0[68];
    v1 = v0[59];

    v42 = *(v1 + 24);
    v0[90] = v42;
    v11 = 0;
    v71 = [v42 dialog];
    v0[91] = v71;
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      v0[92] = v43;
      if (v36 == v11)
      {
        break;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_43;
        }
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      String.toSpeakableString.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_3();
        v47 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v48, v49, v50, v51, v52, v53);
        v43 = v54;
      }

      v1 = v43[2];
      v44 = v43[3];
      if (v1 >= v44 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v1 + 1, 1, v43, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v43 = v55;
      }

      OUTLINED_FUNCTION_40_1();
      (*(v41 + 32))(v45 + v46 * v1);
      ++v11;
    }

    v56 = swift_task_alloc();
    v0[93] = v56;
    *v56 = v0;
    OUTLINED_FUNCTION_20_2(v56, v57, v58, v59, v60, v61, v62, v63, v71);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
  }

  else
  {
    v65 = v0[76];
    v66 = v0[59];
    if (!v65)
    {
      v67 = [*(v66 + 24) parameterName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_74();

      v66 = v0[59];
    }

    v0[85] = v65;
    v68 = *(v66 + 24);
    v0[86] = v68;
    v0[87] = [v68 dialog];
    v69 = swift_task_alloc();
    v0[88] = v69;
    *v69 = v0;
    OUTLINED_FUNCTION_17_1(v69);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v5[79] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {
    v5[80] = v3;
    v10 = swift_task_alloc();
    v5[81] = v10;
    *v10 = v7;
    v10[1] = ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue();

    return Array<A>.toDisambiguationItemModels()();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 656) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[49] = v1;
  v2[50] = v4;
  v2[51] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 696);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 712) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 728);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 752) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[95];
  outlined destroy of WorkflowDataModels.LinkPromptForValueModel((v0 + 2));

  outlined destroy of WorkflowDataModels.LinkActionModel((v0 + 24));
  outlined consume of Data?(v2, v1);

  v4 = OUTLINED_FUNCTION_26_2();
  v5(v4);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v1 = *(v0 + 760);

  v2 = OUTLINED_FUNCTION_26_2();
  v3(v2);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

void *ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  v1 = *(v0 + 656);
  *(v0 + 664) = v1;
  v2 = specialized Array.count.getter(v1);
  *(v0 + 672) = v2;
  v42 = v2;
  if (v2)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v4))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v5, v6, "#ShortcutsLinkPromptForValueFlowStrategy value has provided options so will use disambiguation");
      OUTLINED_FUNCTION_11_0();
    }

    v7 = *(v0 + 544);
    v8 = *(v0 + 472);

    v9 = *(v8 + 24);
    *(v0 + 720) = v9;
    result = [v9 dialog];
    v11 = 0;
    v41 = result;
    *(v0 + 728) = result;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 736) = v12;
      if (v42 == v11)
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      String.toSpeakableString.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_3();
        v17 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v18, v19, v20, v21, v22, v23);
        v12 = v24;
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v12, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v12 = v25;
      }

      OUTLINED_FUNCTION_40_1();
      result = (*(v7 + 32))(v15 + v16 * v14);
      ++v11;
    }

    v26 = swift_task_alloc();
    *(v0 + 744) = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_20_2(v26, v27, v28, v29, v30, v31, v32, v33, v41);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
  }

  else
  {
    v35 = *(v0 + 608);
    v36 = *(v0 + 472);
    if (!v35)
    {
      v37 = [*(v36 + 24) parameterName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_74();

      v36 = *(v0 + 472);
    }

    *(v0 + 680) = v35;
    v38 = *(v36 + 24);
    *(v0 + 688) = v38;
    *(v0 + 696) = [v38 dialog];
    v39 = swift_task_alloc();
    *(v0 + 704) = v39;
    *v39 = v0;
    OUTLINED_FUNCTION_17_1(v39);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)();
  }
}

void ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  v2 = OUTLINED_FUNCTION_41_1(*(v0 + 400));
  static DialogPhase.clarification.getter();
  v3 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_74();

  v4 = OUTLINED_FUNCTION_60();
  v5(v4);
  OUTLINED_FUNCTION_23_2();
  OutputGenerationManifest.responseViewId.setter();
  v6 = OUTLINED_FUNCTION_75();
  v7(v6);
  outlined init with copy of NLContextUpdate?(v47, v46);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v8 = [v2 catId];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v10))
    {
      v11 = OUTLINED_FUNCTION_52();
      *v11 = 0;
      OUTLINED_FUNCTION_79(&dword_0, v12, v13, "ShortcutsLinkPromptForValueFlowStrategy no snippet output");
      OUTLINED_FUNCTION_15_0(v11);
    }

    v14 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v14);
    *(v0 + 832) = ResponseFactory.init()();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = OUTLINED_FUNCTION_64(v15);
    *(v0 + 840) = v16;
    OUTLINED_FUNCTION_69(v16, xmmword_216010);
    OUTLINED_FUNCTION_32_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 848) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_28_1();
LABEL_5:
    *(v19 + 8) = v20;
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_58();

    __asm { BR              X3 }
  }

  v23 = [v45 viewSnippet];
  if (v23)
  {
    v24 = v23;
    v48 = v2;
    v25 = [v23 viewData];

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_86();
  }

  else
  {
    if (!*(v0 + 672))
    {
      v40 = type metadata accessor for ResponseFactory();
      OUTLINED_FUNCTION_66(v40);
      *(v0 + 768) = ResponseFactory.init()();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v42 = OUTLINED_FUNCTION_64(v41);
      *(v0 + 776) = v42;
      OUTLINED_FUNCTION_69(v42, xmmword_216010);
      OUTLINED_FUNCTION_32_1();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 784) = v43;
      *v43 = v44;
      OUTLINED_FUNCTION_29_1();
      goto LABEL_5;
    }

    v48 = v2;
  }

  OUTLINED_FUNCTION_55();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_75();
  App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_82();

  v26 = v48;
  v27 = DialogExecutionResult.firstDialogFullPrint()();
  OUTLINED_FUNCTION_39_1(v27.value._countAndFlagsBits, v27.value._object);
  *(v0 + 96) = v2;
  v28 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v28);
  v29 = OUTLINED_FUNCTION_20_1();
  outlined copy of Data?(v29, v30);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v26, v0 + 272);

  *(v0 + 808) = ResponseFactory.init()();
  *(v0 + 376) = type metadata accessor for WorkflowDataModels(0);
  OUTLINED_FUNCTION_27_2();
  *(v0 + 384) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v31, v32);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  memcpy(boxed_opaque_existential_1, (v0 + 16), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = OUTLINED_FUNCTION_64(v34);
  *(v0 + 816) = v35;
  OUTLINED_FUNCTION_80(v35, xmmword_216010);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 824) = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_16_2(v36);
  OUTLINED_FUNCTION_58();

  __asm { BR              X4 }
}

{
  v2 = OUTLINED_FUNCTION_41_1(*(v0 + 424));
  static DialogPhase.clarification.getter();
  v3 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_74();

  v4 = OUTLINED_FUNCTION_60();
  v5(v4);
  OUTLINED_FUNCTION_23_2();
  OutputGenerationManifest.responseViewId.setter();
  v6 = OUTLINED_FUNCTION_75();
  v7(v6);
  outlined init with copy of NLContextUpdate?(v47, v46);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v8 = [v2 catId];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v10))
    {
      v11 = OUTLINED_FUNCTION_52();
      *v11 = 0;
      OUTLINED_FUNCTION_79(&dword_0, v12, v13, "ShortcutsLinkPromptForValueFlowStrategy no snippet output");
      OUTLINED_FUNCTION_15_0(v11);
    }

    v14 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v14);
    *(v0 + 832) = ResponseFactory.init()();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = OUTLINED_FUNCTION_64(v15);
    *(v0 + 840) = v16;
    OUTLINED_FUNCTION_69(v16, xmmword_216010);
    OUTLINED_FUNCTION_32_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 848) = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_28_1();
LABEL_5:
    *(v19 + 8) = v20;
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_58();

    __asm { BR              X3 }
  }

  v23 = [v45 viewSnippet];
  if (v23)
  {
    v24 = v23;
    v48 = v2;
    v25 = [v23 viewData];

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_86();
  }

  else
  {
    if (!*(v0 + 672))
    {
      v40 = type metadata accessor for ResponseFactory();
      OUTLINED_FUNCTION_66(v40);
      *(v0 + 768) = ResponseFactory.init()();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v42 = OUTLINED_FUNCTION_64(v41);
      *(v0 + 776) = v42;
      OUTLINED_FUNCTION_69(v42, xmmword_216010);
      OUTLINED_FUNCTION_32_1();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 784) = v43;
      *v43 = v44;
      OUTLINED_FUNCTION_29_1();
      goto LABEL_5;
    }

    v48 = v2;
  }

  OUTLINED_FUNCTION_55();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_75();
  App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_82();

  v26 = v48;
  v27 = DialogExecutionResult.firstDialogFullPrint()();
  OUTLINED_FUNCTION_39_1(v27.value._countAndFlagsBits, v27.value._object);
  *(v0 + 96) = v2;
  v28 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v28);
  v29 = OUTLINED_FUNCTION_20_1();
  outlined copy of Data?(v29, v30);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v26, v0 + 272);

  *(v0 + 808) = ResponseFactory.init()();
  *(v0 + 376) = type metadata accessor for WorkflowDataModels(0);
  OUTLINED_FUNCTION_27_2();
  *(v0 + 384) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v31, v32);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  memcpy(boxed_opaque_existential_1, (v0 + 16), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = OUTLINED_FUNCTION_64(v34);
  *(v0 + 816) = v35;
  OUTLINED_FUNCTION_80(v35, xmmword_216010);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 824) = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_16_2(v36);
  OUTLINED_FUNCTION_58();

  __asm { BR              X4 }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for Locale();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:));
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)()
{
  if (![*(v0 + 192) dynamicOptionsSupport])
  {

    OUTLINED_FUNCTION_77();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 200);
  v2 = objc_opt_self();
  v3 = *(v1 + 48);
  v4 = [v2 policyWithActionMetadata:v3];
  *(v0 + 176) = 0;
  *(v0 + 232) = v4;
  v5 = [v4 connectionWithError:v0 + 176];
  *(v0 + 240) = v5;
  v6 = *(v0 + 176);
  if (!v5)
  {
    v20 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  v7 = v5;
  v26 = v3;
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v24 = v10[2];
  v25 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1(v10 + 9, v10[12]);
  v12 = v6;
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v13 = *(v8 + 8);
  *(v0 + 248) = v13;
  *(v0 + 256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  v14 = String._bridgeToObjectiveC()();
  *(v0 + 264) = v14;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:);
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22LNDynamicOptionsResultCs5Error_pGMd, &_sSccySo22LNDynamicOptionsResultCs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v15;
  [v7 fetchOptionsForAction:v24 actionMetadata:v26 parameterMetadata:v25 searchTerm:0 localeIdentifier:v14 completionHandler:?];
  OUTLINED_FUNCTION_77();

  return _swift_continuation_await(v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  v1 = v0 + 18;
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  __swift_project_boxed_opaque_existential_1((v6 + 72), *(v6 + 96));
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v3(v4, v5);
  v74 = v7;
  v8 = [v7 sections];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNDynamicOptionsSection, LNDynamicOptionsSection_ptr);
  OUTLINED_FUNCTION_71();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Array.count.getter(v9);
  v11 = 0;
  v80 = v9 & 0xFFFFFFFFFFFFFF8;
  v82 = v9 & 0xC000000000000001;
  v79 = v9 + 32;
  v12 = _swiftEmptyArrayStorage;
  v76 = v10;
  while (v11 != v10)
  {
    if (v82)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v80 + 16))
      {
        goto LABEL_63;
      }

      v13 = *(v79 + 8 * v11);
    }

    v14 = v13;
    v15 = __OFADD__(v11++, 1);
    if (v15)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      goto LABEL_56;
    }

    v16 = [v13 options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNDynamicOption, LNDynamicOption_ptr);
    OUTLINED_FUNCTION_9_3();
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    }

    v19 = v12 >> 62;
    if (v12 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      goto LABEL_64;
    }

    v85 = v18;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v19)
      {
LABEL_17:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_18:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = v12 & 0xFFFFFFFFFFFFFF8;
      v22 = *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1;
      goto LABEL_19;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    v9 = v12 & 0xFFFFFFFFFFFFFF8;
    v22 = *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1;
    if (v22 < v21)
    {
      goto LABEL_18;
    }

LABEL_19:
    v23 = *(v9 + 16);
    v24 = v22 - v23;
    v25 = v9 + 8 * v23;
    if (v17 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_33;
      }

      v28 = v27;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v24 < v29)
      {
        goto LABEL_68;
      }

      if (v28 < 1)
      {
        goto LABEL_69;
      }

      v77 = v29;
      v78 = v11;
      v30 = v25 + 32;
      lazy protocol witness table accessor for type [LNDynamicOption] and conformance [A]();
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15LNDynamicOptionCGMd, &_sSaySo15LNDynamicOptionCGMR);
        v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v17);
        v34 = *v33;
        v32(v1, 0);
        *(v30 + 8 * i) = v34;
      }

      v10 = v76;
      v26 = v77;
      v11 = v78;
LABEL_29:

      if (v26 < v85)
      {
        goto LABEL_65;
      }

      if (v26 > 0)
      {
        v35 = *(v9 + 16);
        v15 = __OFADD__(v35, v26);
        v36 = v35 + v26;
        if (v15)
        {
          goto LABEL_66;
        }

        *(v9 + 16) = v36;
      }
    }

    else
    {
      v26 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (v26)
      {
        if (v24 < v26)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      if (v85 > 0)
      {
        goto LABEL_65;
      }
    }
  }

  v37 = specialized Array.count.getter(v12);
  v1 = _swiftEmptyArrayStorage;
  if (v37)
  {
    if (v37 < 1)
    {
      __break(1u);
    }

    v38 = 0;
    v81 = v12 & 0xC000000000000001;
    v83 = v37;
    v84 = v12;
    do
    {
      if (v81)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v12 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = [v39 title];
      v42 = String._bridgeToObjectiveC()();
      v43 = OUTLINED_FUNCTION_84(v42);

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = [v40 subtitle];
      if (v46)
      {
        v47 = v46;
        v48 = String._bridgeToObjectiveC()();
        v49 = OUTLINED_FUNCTION_84(v48);

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      v53 = [v40 image];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 inImage];
      }

      else
      {
        v55 = 0;
      }

      v9 = [v40 value];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59, v60, v61, v62, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMR, &type metadata for ShortcutsLinkDisambiguationItem, v63);
        v1 = v64;
      }

      v57 = v1[2];
      v56 = v1[3];
      if (v57 >= v56 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMR, &type metadata for ShortcutsLinkDisambiguationItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v1 = v65;
      }

      ++v38;

      v1[2] = v57 + 1;
      v58 = &v1[7 * v57];
      v58[4] = v86;
      v58[5] = v45;
      v58[6] = v50;
      v58[7] = v52;
      v58[8] = v55;
      v58[9] = _swiftEmptyArrayStorage;
      v58[10] = v9;
      v12 = v84;
    }

    while (v83 != v38);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    goto LABEL_70;
  }

LABEL_56:
  v66 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v66, static Logger.voiceCommands);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v68))
  {
    v69 = OUTLINED_FUNCTION_48();
    *v69 = 134217984;
    *(v69 + 4) = v1[2];

    _os_log_impl(&dword_0, v67, v68, "ShortcutsLinkPromptForValueFlowStrategy: make prompt for entity value with DOP received %ld options", v69, 0xCu);
    OUTLINED_FUNCTION_15_0(v69);
  }

  else
  {
  }

  v70 = v75[29];
  v71 = v75[30];

  v72 = v75[1];

  return v72(v1);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else if (a2)
  {
    v7 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:));
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0[9] + 56);
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:);
    v4 = OUTLINED_FUNCTION_72();

    return ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_4();

    return v7(v6);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (!*(*(v0 + 96) + 16) || !*(*(v0 + 72) + 64) || (objc_opt_self(), OUTLINED_FUNCTION_71(), !swift_dynamicCastObjCClass()))
  {
    v11 = *(v0 + 80);

LABEL_8:
    *(v0 + 64);
    goto LABEL_9;
  }

  v1 = [*(v0 + 64) value];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = *(v0 + 96);
  if ((v2 & 1) == 0)
  {
    v21 = *(v0 + 80);

    goto LABEL_8;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
  OUTLINED_FUNCTION_64(v4);
  specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v3, 0);
  v5 = OUTLINED_FUNCTION_9_3();
  v7 = v6(v5);

  v8 = *(v0 + 80);
  if (*(v7 + 16))
  {
    v9 = *(v7 + 80);
    v10 = *(v7 + 64);

    v9;
  }

  else
  {
    v22 = *(v0 + 64);

    v23 = v22;
  }

LABEL_9:
  OUTLINED_FUNCTION_87();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  return v0;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForValueFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy;

  return ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ShortcutsLinkPromptForValueFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_44_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v9 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v9);
      OUTLINED_FUNCTION_21_3(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_42_0(v6, v7, v8, &type metadata for String);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyShySSGGMd, &_ss23_ContiguousArrayStorageCyShySSGGMR);
      v6 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v6);
      OUTLINED_FUNCTION_21_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    OUTLINED_FUNCTION_42_0(v11, v12, v13, v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v7 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v7);
      OUTLINED_FUNCTION_21_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_37_1(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 40);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit18SectionConvertible_pMd, &_s10SnippetKit18SectionConvertible_pMR);
    OUTLINED_FUNCTION_42_0(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v6 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v6);
      OUTLINED_FUNCTION_21_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin24DisambiguationVisualItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin24DisambiguationVisualItemVGMR);
      v10 = swift_allocObject();
      v7 = OUTLINED_FUNCTION_37_1(v10);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v11 / 48);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_42_0(v7, v8, v9, &type metadata for DisambiguationVisualItem);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_11_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDyS2SSgGGMd, &_ss23_ContiguousArrayStorageCySDyS2SSgGGMR);
      v6 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v6);
      OUTLINED_FUNCTION_21_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SSgGMd, &_sSDyS2SSgGMR);
    OUTLINED_FUNCTION_42_0(v11, v12, v13, v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_6;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5, &type metadata accessor for DisplayHint, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow17TemplatingSectionV_Tt1g5, &type metadata accessor for TemplatingSection, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR, &type metadata for WFChooseFromListDisambiguationItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_2();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_27_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 56);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v12)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.languageCode()(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-1] - v5;
  v13[3] = &type metadata for AppInfoResolver;
  v13[4] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(a1, v13, v2, &v13[-1] - v5);
  v7 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v8 = 0;
  }

  else
  {
    v8 = AppDisplayInfo.displayName.getter();
    OUTLINED_FUNCTION_21_2();
    v9 = OUTLINED_FUNCTION_9_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v8;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [LNDynamicOption] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15LNDynamicOptionCGMd, &_sSaySo15LNDynamicOptionCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

BOOL OUTLINED_FUNCTION_30_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_32_1()
{

  return v0;
}

void *OUTLINED_FUNCTION_39_1(uint64_t a1, uint64_t a2)
{
  v3[24] = v5;
  v3[25] = v6;
  v3[26] = v8;
  v3[27] = v7;
  v3[28] = a1;
  v3[29] = a2;
  v3[30] = v2;
  v3[32] = 0;
  v3[33] = 0;
  v3[31] = v4;

  return memcpy(v3 + 2, v3 + 24, 0x50uLL);
}

id OUTLINED_FUNCTION_41_1@<X0>(void *a1@<X8>)
{
  *(v1 + 760) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_50(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_55()
{
  *(v1 + 800) = v2;
  *(v1 + 792) = v0;

  return type metadata accessor for App();
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_69(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_80(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v3 + 16, v3 + 104);
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v0 + 72, 2);
}

id OUTLINED_FUNCTION_84(uint64_t a1)
{
  v4 = *(v2 + 2616);

  return [v1 v4];
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_86()
{
}

uint64_t WFScreentimeCheckFlowStrategy.__allocating_init(appPolicyHandler:bundleId:deviceState:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  outlined init with take of AceServiceInvokerAsync(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  outlined init with take of AceServiceInvokerAsync(a4, v4 + 72);
  return v4;
}

uint64_t WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[12] = v4;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();

  return static ResponseTemplates.appDisabledByScreenTime()(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  else
  {
    v2 = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  return _swift_task_switch(v2);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 72), *(*(v0 + 64) + 96));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v7;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);

  v8 = *(v0 + 8);

  return v8();
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

Swift::Bool __swiftcall VoiceCommandsScreentimeCheckFlowStrategy.isAppAllowedByScreentime()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v0[7], v0[8], v1, v2) & 1;
}

void *WFScreentimeCheckFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t WFScreentimeCheckFlowStrategy.__deallocating_deinit()
{
  WFScreentimeCheckFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void INIntentResponse.localizedResponseString(isVox:intentName:)(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0 || (INIntentResponse.printedDialog()(), !v5))
  {

    INIntentResponse.localizedSpokenResponse(intentName:)(a2, a3);
  }
}

void INIntentResponse.printedDialog()()
{
  v0 = INIntentResponse.printedTemplate()();
  if (v0.value._object)
  {
    object = v0.value._object;
    v52 = type metadata accessor for CATSpeakableString();
    v2 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(v0.value._countAndFlagsBits, v0.value._object);
    v54 = *(v2 + 16);
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v56 = v2;
    v4 = (v2 + 40);
    v5 = &type metadata for String;
    v6 = &off_2B4000;
    v7 = v0.value._object;
    countAndFlagsBits = v0.value._countAndFlagsBits;
    v59 = v0.value._countAndFlagsBits;
    v50 = v0.value._object;
    while (1)
    {
      if (v54 == v3)
      {

        OUTLINED_FUNCTION_1_6(v52);
        CATSpeakableString.init(_:speak:)(countAndFlagsBits, object, v59, v7);
        return;
      }

      if (v3 >= *(v56 + 16))
      {
        break;
      }

      v8 = *(v4 - 1);
      v9 = *v4;

      v60 = static CATSpeakableString.unwrapProperty(propertyName:)(v8, v9);

      AnyHashable.init<A>(_:)();
      v10 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v55);
      if (!v10)
      {
        goto LABEL_18;
      }

      v11 = v10;

      if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&v61), (v13 & 1) == 0))
      {

        outlined destroy of AnyHashable(&v61);
        return;
      }

      outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v63);
      outlined destroy of AnyHashable(&v61);

      type metadata accessor for INObject();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v61 = countAndFlagsBits;
      v62 = object;
      v63 = v8;
      v64 = v9;
      v14 = [v60 v6[339]];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = v5;
      v16 = lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = OUTLINED_FUNCTION_0_4(v16, v17, v18, v19, v20, v21, v22, v23, v46, v48, v16, v16, v50, v52);
      v57 = v24;

      v25 = outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(v60);
      v61 = v59;
      v62 = v7;
      v63 = v8;
      v64 = v9;
      if (v26)
      {
        v59 = OUTLINED_FUNCTION_0_4(v25, v26, v27, v28, v29, v30, v31, v32, v47, v49, v16, v16, v51, v53);
        v34 = v33;

        v7 = v34;
      }

      else
      {
        v35 = [v60 v6[339]];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = OUTLINED_FUNCTION_0_4(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49, v16, v16, v51, v53);
        v45 = v44;

        v7 = v45;
      }

      v5 = v15;
      v4 += 2;
      ++v3;
      object = v57;
      v6 = &off_2B4000;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void *INIntentResponse.localizedSpokenResponse(intentName:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = static LocaleUtils.siriLanguageCode()();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v10 = OUTLINED_FUNCTION_1_6(v9);
  *(v10 + 16) = xmmword_216850;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v11 = static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(a1, a2);

  v12 = static LocaleUtils.getLocale(preferredLocalizations:)(v11);
  v14 = v13;

  v15 = outlined bridged method (mbnnb) of @objc INIntentResponse._renderedResponse(forLanguage:requiresSiriCompatibility:)(v12, v14, 1, v3);
  if (!v16)
  {
    return 0;
  }

  v17 = v15;
  v18 = v16;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  v20 = INIntentResponse.localizedResponseTemplate(intentName:)(v19);
  v21 = (v20._object >> 56) & 0xF;
  if ((v20._object & 0x2000000000000000) == 0)
  {
    v21 = v20._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = type metadata accessor for CATSpeakableString();
    v23 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(v20._countAndFlagsBits, v20._object);
    v24 = static CATSpeakableString.applyPronunciationHints(template:variablesWithWrapper:intent:intentResponse:tokens:)(v20._countAndFlagsBits, v20._object, v23, 0, v3, 0);
    v26 = v25;

    OUTLINED_FUNCTION_1_6(v22);
    v27 = v17;
    v28 = v18;
    v29 = v24;
    v30 = v26;
  }

  else
  {

    v32 = type metadata accessor for CATSpeakableString();
    OUTLINED_FUNCTION_1_6(v32);
    v27 = v17;
    v28 = v18;
    v29 = 0;
    v30 = 0;
  }

  return CATSpeakableString.init(_:speak:)(v27, v28, v29, v30);
}

Swift::String __swiftcall INIntentResponse.localizedResponseTemplate(intentName:)(Swift::String intentName)
{
  object = intentName._object;
  countAndFlagsBits = intentName._countAndFlagsBits;
  v4 = static LocaleUtils.siriLanguageCode()();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v8 = OUTLINED_FUNCTION_1_6(v7);
  *(v8 + 16) = xmmword_216850;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  v9 = static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(countAndFlagsBits, object);

  static LocaleUtils.getLocale(preferredLocalizations:)(v9);

  v10 = String._bridgeToObjectiveC()();

  v11 = [v1 _responseTemplateForLanguage:v10 requiresSiriCompatibility:1];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void *INIntentResponse.getPropertiesInTemplate(intentName:)(uint64_t a1, uint64_t a2)
{
  v2 = INIntentResponse.localizedResponseTemplate(intentName:)(*&a1);
  type metadata accessor for CATSpeakableString();
  v3 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v2._countAndFlagsBits, v2._object);

  return v3;
}

Swift::String_optional __swiftcall INIntentResponse.printedTemplate()()
{
  INIntentResponse.getResponseCodeDictionary()();
  if (!v0)
  {
    goto LABEL_10;
  }

  specialized Dictionary.subscript.getter(v0, &v16, 0xD000000000000027, 0x8000000000230070);

  if (!v17)
  {
    outlined destroy of Any?(&v16);
    v0 = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = OUTLINED_FUNCTION_2_5(v1, v2, v3, &type metadata for String, v4, v5, v6, v7, v12, v14, v16);
  v9 = v8 == 0;
  if (v8)
  {
    v0 = v13;
  }

  else
  {
    v0 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v15;
  }

LABEL_11:
  result.value._object = v10;
  result.value._countAndFlagsBits = v0;
  return result;
}

void INIntentResponse.getResponseCodeDictionary()()
{
  v1 = [v0 _codableDescription];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v1);
    if (!v3)
    {
LABEL_31:
      __break(1u);
      return;
    }

    specialized Dictionary.subscript.getter(v3, &v20, 0xD000000000000015, 0x80000000002300D0);

    if (!v21)
    {

      outlined destroy of Any?(&v20);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v4 = v18;
    v5 = [v0 _intentResponseCodableCode];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 name];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *(v18 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = v18 + 32;
        while (v11 < *(v4 + 16))
        {
          outlined init with copy of Any(v12, &v20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
          if (swift_dynamicCast())
          {
            if (*(v18 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000000002300F0), (v14 & 1) != 0) && (outlined init with copy of Any(*(v18 + 56) + 32 * v13, &v20), (swift_dynamicCast() & 1) != 0))
            {
              if (v18 == v17 && v19 == v9)
              {

                goto LABEL_24;
              }

              v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v16)
              {

                goto LABEL_24;
              }

              v4 = v18;
            }

            else
            {
            }
          }

          ++v11;
          v12 += 32;
          if (v10 == v11)
          {

            return;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_26:

      return;
    }

LABEL_24:
  }
}

Swift::String_optional __swiftcall INIntentResponse.languageCode()()
{
  INIntentResponse.getResponseCodeDictionary()();
  if (!v0)
  {
    goto LABEL_10;
  }

  specialized Dictionary.subscript.getter(v0, &v16, 0xD00000000000002CLL, 0x80000000002300A0);

  if (!v17)
  {
    outlined destroy of Any?(&v16);
    v0 = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = OUTLINED_FUNCTION_2_5(v1, v2, v3, &type metadata for String, v4, v5, v6, v7, v12, v14, v16);
  v9 = v8 == 0;
  if (v8)
  {
    v0 = v13;
  }

  else
  {
    v0 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v15;
  }

LABEL_11:
  result.value._object = v10;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(void *a1)
{
  v1 = [a1 propertiesByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(void *a1)
{
  v1 = [a1 pronunciationHint];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (mbnnb) of @objc INIntentResponse._renderedResponse(forLanguage:requiresSiriCompatibility:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 _renderedResponseForLanguage:v6 requiresSiriCompatibility:a3 & 1];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_5(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void a6, void a7, void a8, uint64_t a3, uint64_t a4, char a5)
{

  return swift_dynamicCast();
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional __swiftcall SuggestionsCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.Properties.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t SuggestionsCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionsCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionsCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SuggestionsCATsSimple.cancel(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t SuggestionsCATsSimple.cancel(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)(uint64_t a1)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 120) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v8);
  }

  else
  {
    OUTLINED_FUNCTION_28_2();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_57();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CancelDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.cancelAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.close(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 2);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CloseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CloseDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CloseDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CloseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t _s18SiriLinkFlowPlugin21SuggestionsCATsSimpleC15CancelDialogIdsOSYAASY8rawValue03RawL0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionsCATsSimple.NextDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SuggestionsCATsSimple.closeAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.create(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CreateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CreateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CreateDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CreateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.createAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.disable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_59_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(OUTLINED_FUNCTION_36_1(v5) + 16) = xmmword_216FA0;
  OUTLINED_FUNCTION_26_3();
  *(v6 + 32) = v0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v3;
  v8 = OUTLINED_FUNCTION_3_4(v6, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v10);
  if (v11)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v0;
  *(v2 + 136) = v13;
  outlined init with copy of SpeakableString?(v14, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v11)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v11)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v18, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v11)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v11)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  v22 = OUTLINED_FUNCTION_22_3();
  v23 = OUTLINED_FUNCTION_43_1(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_42_1(v23);
  OUTLINED_FUNCTION_87();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::DisableDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.DisableDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::DisableDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.DisableDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.disableAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_59_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  *(OUTLINED_FUNCTION_36_1(v6) + 16) = xmmword_216FA0;
  OUTLINED_FUNCTION_26_3();
  *(v7 + 32) = v1;
  *(v7 + 40) = v8;
  *(v7 + 48) = v4;
  v9 = OUTLINED_FUNCTION_3_4(v7, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v11);
  if (v12)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_26_3();
  *(v3 + 128) = v1;
  *(v3 + 136) = v14;
  outlined init with copy of SpeakableString?(v15, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v12)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v17, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v12)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v19, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v12)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  v21 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v21, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v12)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v23);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v24;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_87();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.enable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::EnableDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.EnableDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::EnableDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.EnableDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.enableAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.next(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 3);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t SuggestionsCATsSimple.NextDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x7470697263736564;
  }
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::NextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.NextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::NextDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.NextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.nextAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_87();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t SuggestionsCATsSimple.nextAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)(uint64_t a1)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 120) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v8);
  }

  else
  {
    OUTLINED_FUNCTION_28_2();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_57();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.open(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 3);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::OpenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.OpenDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::OpenDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.OpenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.openAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.previous(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v10, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = OUTLINED_FUNCTION_22_3();
  v19 = OUTLINED_FUNCTION_43_1(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_42_1(v19);
  OUTLINED_FUNCTION_87();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::PreviousDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.PreviousDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::PreviousDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.PreviousDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.previousAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.search(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::SearchDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.SearchDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::SearchDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.SearchDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.searchAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.SearchDialogIds and conformance SuggestionsCATsSimple.SearchDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.toggle(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_42_1(v20);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t SuggestionsCATsSimple.CancelDialogIds.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::ToggleDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.ToggleDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::ToggleDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.ToggleDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.toggleAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_49(v8);
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_36_1(v3);
  *(v4 + 16) = xmmword_216FA0;
  v5 = OUTLINED_FUNCTION_20_3(v4, "coldStartSuggestion");
  v6 = OUTLINED_FUNCTION_2_6(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v13, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v17, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_40_2(v19);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.ToggleDialogIds and conformance SuggestionsCATsSimple.ToggleDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return SuggestionsCATsSimple.init(templateDir:options:globals:)(v1, v2, v3);
}

uint64_t SuggestionsCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  __chkstk_darwin(v13);
  outlined init with copy of SpeakableString?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SuggestionsCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v2;
}

uint64_t SuggestionsCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for SuggestionsCATsSimple;
  if (!type metadata singleton initialization cache for SuggestionsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x31EA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsCATsSimple.CancelDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsCATsSimple.CancelDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x320D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{
  result = *(v0 + 48);
  *(v1 + 272) = 0x7470697263736564;
  *(v1 + 280) = 0xEB000000006E6F69;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_7()
{
  result = *(v0 + 32);
  *(v1 + 176) = 0x7954797469746E65;
  *(v1 + 184) = 0xEA00000000006570;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v2;
  *(result + 72) = a2;
  *(result + 80) = 0x656D614E707061;
  *(result + 88) = 0xE700000000000000;
  return result;
}

void *OUTLINED_FUNCTION_3_4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = a2;
  result[10] = 0x656D614E707061;
  result[11] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  result = *(v1 + 40);
  *(v2 + 224) = 0x614E797469746E65;
  *(v2 + 232) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v2;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
}

double OUTLINED_FUNCTION_31()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

double OUTLINED_FUNCTION_32_2()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  return result;
}

double OUTLINED_FUNCTION_33_1()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

double OUTLINED_FUNCTION_34_1()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

double OUTLINED_FUNCTION_35_1()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_44_1()
{
  *(v1 + 120) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1)
{
  *(v1 + 88) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1)
{
  *(v1 + 80) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{
  *(v1 + 72) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

uint64_t *OUTLINED_FUNCTION_51()
{
  *(v1 + 312) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 288));
}

uint64_t *OUTLINED_FUNCTION_52_0()
{
  *(v1 + 264) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 240));
}

uint64_t *OUTLINED_FUNCTION_53()
{
  *(v1 + 216) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 192));
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of SpeakableString?(v4, v5, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_55_0()
{
  *(v1 + 168) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 144));
}

uint64_t AutoShortcutInvocation.propertyIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoShortcutInvocation(0) + 28);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t type metadata accessor for AutoShortcutInvocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoShortcutInvocation;
  if (!type metadata singleton initialization cache for AutoShortcutInvocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutoShortcutInvocation.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoShortcutInvocation(0) + 32);

  return outlined init with copy of DeviceState(v3, a1);
}

id AutoShortcutInvocation.preferences.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoShortcutInvocation(0) + 36));

  return v1;
}

uint64_t AutoShortcutInvocation.init(directInvocationData:provider:preferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  specialized Dictionary.subscript.getter(a1, &v32, 0x6449656C646E7562, 0xE800000000000000);
  if (!v34)
  {
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_16_3(v12, v13, v14, &type metadata for String) & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = v37;
  v15 = v38;
  specialized Dictionary.subscript.getter(a1, &v32, 0xD000000000000012, 0x8000000000230180);

  if (!v34)
  {
LABEL_9:

    outlined destroy of Any?(&v32);
LABEL_11:
    lazy protocol witness table accessor for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  if (!OUTLINED_FUNCTION_16_3(v17, v18, v19, &type metadata for String))
  {
LABEL_10:

    goto LABEL_11;
  }

  static AutoShortcutInvocation.parseServerVocabularyIdentifier(identifier:)(&v32);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  else
  {
    v39 = *(&v32 + 1);
    v29 = v33;
    v30 = v32;
    v31 = v34;
    v22 = v36;
    v28 = v35;

    if (v22)
    {

      UUID.init(uuidString:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v23 = type metadata accessor for UUID();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
    }

    v24 = type metadata accessor for AutoShortcutInvocation(0);
    outlined init with copy of DeviceState(a2, a4 + v24[8]);
    v25 = [objc_opt_self() sharedPreferences];

    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    *a4 = v16;
    a4[1] = v15;
    v26 = v39;
    a4[2] = v30;
    a4[3] = v26;
    v27 = v31;
    a4[4] = v29;
    a4[5] = v27;
    result = outlined init with take of UUID?(v11, a4 + v24[7]);
    *(a4 + v24[9]) = v25;
  }

  return result;
}

uint64_t static AutoShortcutInvocation.parseServerVocabularyIdentifier(identifier:)@<X0>(void *a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v4[2];
  if (!v5)
  {
    v6 = 1;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = 2;
LABEL_5:

    lazy protocol witness table accessor for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  v10 = v4[4];
  v9 = v4[5];
  v12 = v4[6];
  v11 = v4[7];
  if (v5 == 3)
  {
    v14 = v4[8];
    v13 = v4[9];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a3 = v10;
  a3[1] = v9;
  a3[2] = v12;
  a3[3] = v11;
  a3[4] = v14;
  a3[5] = v13;
  return result;
}

uint64_t AutoShortcutInvocation.init(bundleId:actionIdentifier:baseTemplatePhrase:propertyIdentifier:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v13 = type metadata accessor for AutoShortcutInvocation(0);
  outlined init with take of UUID?(a7, a9 + v13[7]);
  result = outlined init with take of AceServiceInvokerAsync(a8, a9 + v13[8]);
  *(a9 + v13[9]) = a10;
  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError()
{
  result = lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError;
  if (!lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError;
  if (!lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutInvocation.AutoShortcutInvocationError and conformance AutoShortcutInvocation.AutoShortcutInvocationError);
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AutoShortcutInvocation.action.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v1[3] = type metadata accessor for AutoShortcutInvocation(0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[5] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[6] = v3;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for OSSignposter();
  v1[9] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutInvocation.action.getter);
}

{
  OUTLINED_FUNCTION_14_2();
  v1 = OUTLINED_FUNCTION_22();
  $defer #1 () in AutoShortcutInvocation.action.getter(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_9_3();
  v5(v4);

  OUTLINED_FUNCTION_6_6();
  v7 = *(v0 + 120);

  return v6(v7);
}

{
  OUTLINED_FUNCTION_14_2();
  v1 = OUTLINED_FUNCTION_22();
  $defer #1 () in AutoShortcutInvocation.action.getter(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_9_3();
  v5(v4);

  v6 = *(v0 + 8);

  return v6();
}

void AutoShortcutInvocation.action.getter()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[2];
  v6 = __swift_project_value_buffer(v3, static Signposter.voiceCommands);
  (*(v2 + 16))(v1, v6, v3);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  outlined init with copy of AutoShortcutInvocation(v5, v4);
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = *v9;
    v13 = v9[1];

    outlined destroy of AutoShortcutInvocation(v9);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v10 + 4) = v14;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v15, "FetchActionForAutoShortcutPhrase", "BundleId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15_0(v11);
    OUTLINED_FUNCTION_15_0(v10);
  }

  else
  {
    v16 = v0[4];

    outlined destroy of AutoShortcutInvocation(v16);
  }

  v18 = v0[2];
  v17 = v0[3];
  (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[12] = OUTLINED_FUNCTION_15_4();
  v19 = OUTLINED_FUNCTION_9_3();
  v20(v19);
  v21 = (v18 + *(v17 + 32));
  v22 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v24 = *(v22 + 24) + **(v22 + 24);
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = AutoShortcutInvocation.action.getter;

  __asm { BRAA            X8, X16 }
}

uint64_t AutoShortcutInvocation.action.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v5 + 112) = v1;

  if (v1)
  {
    v8 = AutoShortcutInvocation.action.getter;
  }

  else
  {
    *(v5 + 120) = a1;
    v8 = AutoShortcutInvocation.action.getter;
  }

  return _swift_task_switch(v8);
}

uint64_t AutoShortcutInvocation.autoShortcuts.getter()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(AutoShortcutInvocation.autoShortcuts.getter);
}

{
  type metadata accessor for AutoShortcutInvocation(0);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = AutoShortcutInvocation.autoShortcuts.getter;

  return static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:)();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_6();

  return v5(v2);
}

uint64_t static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v7 = type metadata accessor for OSSignpostID();
  v0[9] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[10] = v8;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v9 = type metadata accessor for OSSignposter();
  v0[13] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[14] = v10;
  v0[15] = swift_task_alloc();

  return _swift_task_switch(static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:));
}

{
  v33 = v0;
  v1 = outlined bridged method (pb) of @objc AFPreferences.languageCode()(*(v0 + 48));
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
    }

    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = __swift_project_value_buffer(v7, static Signposter.voiceCommands);
    (*(v6 + 16))(v5, v8, v7);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();

    v9 = OSSignposter.logHandle.getter();
    v10 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v32);
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v9, v10, v15, "AutoShortcutFirstRunFlowFetchAutoShortcuts", "BundleId: %s)", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_15_0(v14);
      OUTLINED_FUNCTION_15_0(v13);
    }

    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 40);
    (*(v18 + 16))(*(v0 + 88), v16, v17);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 144) = OUTLINED_FUNCTION_15_4();
    (*(v18 + 8))(v16, v17);
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v31 = (*(v21 + 8) + **(v21 + 8));
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:);
    v24 = *(v0 + 24);
    v23 = *(v0 + 32);

    return v31(v24, v23, v3, v4, v20, v21);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.voiceCommands);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "AutoShortcutInvocation cannot get Siri language", v29, 2u);
      OUTLINED_FUNCTION_15_0(v29);
    }

    OUTLINED_FUNCTION_6_6();

    return v30(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v2 + 160) = v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v3 = static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:);
  }

  else
  {

    v3 = static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:);
  }

  return _swift_task_switch(v3);
}

{
  v17 = v0;
  $defer #1 () in AutoShortcutInvocation.action.getter(v0[15], v0[18], "AutoShortcutFirstRunFlowFetchAutoShortcuts");
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = v0[16];
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);
    *(v9 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v16);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_0, v2, v3, "AutoShortcutInvocation cannot get AppShortcuts for bundleId=%s; siriLanguage%s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v10);
    OUTLINED_FUNCTION_15_0(v9);
  }

  else
  {
  }

  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);

  OUTLINED_FUNCTION_6_6();

  return v14(_swiftEmptyArrayStorage);
}