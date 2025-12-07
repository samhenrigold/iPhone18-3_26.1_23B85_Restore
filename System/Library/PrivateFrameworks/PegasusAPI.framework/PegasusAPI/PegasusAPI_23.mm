uint64_t sub_1B8F0463C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_212_1(v0);
  return sub_1B8F1B8B8();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_212_1(v0);
  return sub_1B8F188B0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_212_1(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.url.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_212_1(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_6:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
    return OUTLINED_FUNCTION_163_2(v8);
  }

  OUTLINED_FUNCTION_461();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_182();
  return sub_1B8F09548();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.url.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  OUTLINED_FUNCTION_212_1(0);
  OUTLINED_FUNCTION_68_4(v13);
  v1[4] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_51_5();
      OUTLINED_FUNCTION_177_1();
      sub_1B8F09548();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_212_1(v5);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_182();
      return sub_1B8F09548();
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  return OUTLINED_FUNCTION_101_2(v9);
}

uint64_t sub_1B8F04BA8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8D9207C(v1 + *(v2 + 20), &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  v3 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.intent.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  OUTLINED_FUNCTION_212_1(0);
  OUTLINED_FUNCTION_68_4(v13);
  v1[4] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_7:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v12[4] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_177_1();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F04DEC()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6 + v3, &qword_1EBAB91F0, &qword_1B96693D0);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0(v6 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBAB91F0, &qword_1B96693D0);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0(v6 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.getter()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = (v1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v21[0] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v21[1] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v21 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBABE988, &qword_1B96693D8);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_139();
  sub_1B8F09598();
  sub_1B8F09598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_110_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_50_5();
      sub_1B8F09548();
      v14 = *v8 == *v1 && v8[1] == v1[1];
      if (v14 || (sub_1B964C9F0() & 1) != 0)
      {
        v15 = v8[2] == v1[2] && v8[3] == v1[3];
        if (v15 || (sub_1B964C9F0()) && (sub_1B8D6123C(v8[4], v1[4]))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_35();
          sub_1B8CD2378(v16, v17, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }
      }

      OUTLINED_FUNCTION_121_0();
      sub_1B8F095E8();
LABEL_26:
      sub_1B8F095E8();
      OUTLINED_FUNCTION_3_20();
      sub_1B8F095E8();
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_51_5();
      sub_1B8F09548();
      v18 = *v11 == *v2 && v11[1] == v2[1];
      if (v18 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_35();
        sub_1B8CD2378(v19, v20, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_120_2();
      sub_1B8F095E8();
      goto LABEL_26;
    }
  }

  sub_1B8F095E8();
  sub_1B8D9207C(v0, &dword_1EBABE988, &qword_1B96693D8);
LABEL_27:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v6 = sub_1B8CD2378(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v11 = sub_1B8CD2378(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  v3 = OUTLINED_FUNCTION_156_4();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(v3);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + *(v2 + 24));
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.suggestionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appIntent.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appBundle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.tagName.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8F05934()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F059BC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.previewSummary.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_163_3(v2);
  a1[10] = 0;
  a1[11] = v3;
  a1[12] = 0;
  a1[13] = v3;
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.userGuideName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.init()()
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_163_3(v0);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F06158@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  v4 = v3(0);
  return OUTLINED_FUNCTION_101_2(v4);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v5 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_163_3(v8);
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8F095E8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_288();
  return sub_1B8F09548();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_18();
      OUTLINED_FUNCTION_128();
      sub_1B8F09548();
      goto LABEL_7;
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_132_4();
  v11[4] = 0;
  v11[5] = v17;
  v11[6] = 0;
  v11[7] = v17;
  v11[8] = 0;
  v11[9] = v17;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F064C8()
{
  OUTLINED_FUNCTION_134_3();
  v5 = *v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v5, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_8_18();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
    OUTLINED_FUNCTION_115_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v0, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_288();
      return sub_1B8F09548();
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  *(v0 + 40) = v10;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  return OUTLINED_FUNCTION_101_2(v11);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v11 + 32) = 0;
    *(v11 + 40) = v17;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F0688C()
{
  OUTLINED_FUNCTION_134_3();
  v5 = *v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v5, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_7_18();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
    OUTLINED_FUNCTION_114_5();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v0, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_288();
      return sub_1B8F09548();
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  *(v0 + 40) = v10;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  return OUTLINED_FUNCTION_101_2(v11);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v11 + 32) = 0;
    *(v11 + 40) = v17;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F06C50()
{
  OUTLINED_FUNCTION_134_3();
  v5 = *v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v5, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_6_9();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
    OUTLINED_FUNCTION_112_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v0, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v25[1] = v2;
  v3 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  v4 = OUTLINED_FUNCTION_183(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v25[0] = v6 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_8();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v25 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE990, &qword_1B96693E8);
  OUTLINED_FUNCTION_183(v21);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_139();
  sub_1B8F09598();
  sub_1B8F09598();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_41_8();
      sub_1B8F09598();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_7_18();
        sub_1B8F09548();
        static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle.== infix(_:_:)(v18, v1);
        sub_1B8F095E8();
LABEL_13:
        sub_1B8F095E8();
        OUTLINED_FUNCTION_53_4();
        sub_1B8F095E8();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_114_5();
    }

    else
    {
      OUTLINED_FUNCTION_41_8();
      sub_1B8F09598();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_6_9();
        v24 = v25[0];
        sub_1B8F09548();
        static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide.== infix(_:_:)(v14, v24);
        sub_1B8F095E8();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_112_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_8();
    sub_1B8F09598();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_18();
      sub_1B8F09548();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.== infix(_:_:)(v20);
      sub_1B8F095E8();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_115_3();
  }

  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBABE990, &qword_1B96693E8);
LABEL_14:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v14 = v5 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v18 = sub_1B8CD2378(v16, v17, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v18) & 1;
}

uint64_t sub_1B8F07268(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v15 = sub_1B8CD2378(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

uint64_t sub_1B8F07358(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  a2(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.assetType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v3);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  OUTLINED_FUNCTION_57(v0);
  if (v4)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBABE998, &unk_1B96693F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_182();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F09548();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v13);
  OUTLINED_FUNCTION_68_4(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABE998, &unk_1B96693F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_461();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F07758()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8F09598();
    sub_1B8D9207C(v5 + v4, &qword_1EBABE998, &unk_1B96693F0);
    OUTLINED_FUNCTION_5_14();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    OUTLINED_FUNCTION_52_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBABE998, &unk_1B96693F0);
    OUTLINED_FUNCTION_5_14();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t sub_1B8F07890()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_24_3();
  sub_1B8F1B8B8();
  v7 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

uint64_t sub_1B8F07980()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  if (qword_1ED9CDEB0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1ED9CDEB8;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07C30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07CE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F07F28@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t sub_1B8F07F84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5858);
  __swift_project_value_buffer(v0, qword_1EBAB5858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1B9667720;
  v4 = v60 + v3;
  v5 = v60 + v3 + v1[14];
  *(v60 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "cluster_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "template_type";
  *(v11 + 1) = 13;
  v11[16] = 2;
  *(v11 + 3) = "template";
  *(v11 + 4) = 8;
  v11[40] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "question";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "answer";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "context";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = v1[14];
  v19 = (v4 + 6 * v2);
  *v19 = 7;
  v20 = v19 + v18;
  *v20 = "language";
  *(v20 + 1) = 8;
  v20[16] = 2;
  *(v20 + 3) = "lang";
  *(v20 + 4) = 4;
  v20[40] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "platform";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "platform_version";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "actions";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "sources";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "tip_id";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "score";
  *(v32 + 1) = 5;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "asset";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v4 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "attributions";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  v37 = (v4 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "disclaimer";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v8();
  v39 = (v4 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "asset_base_url";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v8();
  v41 = (v4 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "device_families";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v8();
  v43 = (v4 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "tips_collection_id";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v8();
  v45 = (v4 + 19 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "summarized_answer";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v8();
  v47 = (v4 + 20 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "siri_suggestions";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v8();
  v49 = (v4 + 21 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "context_hints";
  *(v50 + 1) = 13;
  v50[16] = 2;
  v8();
  v51 = (v4 + 22 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "context_tags";
  *(v52 + 1) = 12;
  v52[16] = 2;
  v8();
  v53 = (v4 + 23 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "support_flow_id";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v8();
  v55 = (v4 + 24 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "is_llm_generated_answer";
  *(v56 + 1) = 23;
  v56[16] = 2;
  v8();
  v57 = (v4 + 25 * v2);
  v58 = v57 + v1[14];
  *v57 = 100;
  *v58 = "serialized_result";
  *(v58 + 1) = 17;
  v58[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8F08780()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);
  swift_allocObject();
  result = sub_1B8F087C0();
  qword_1ED9CDEB8 = result;
  return result;
}

uint64_t sub_1B8F087C0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context) = xmmword_1B9652FE0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources) = v5;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer) = v5;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies) = v5;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags) = v5;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult) = xmmword_1B9652FE0;
  return v0;
}

uint64_t sub_1B8F08990(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v120 = &v95 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v96 = (v1 + 48);
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v97 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v98 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
  v95 = xmmword_1B9652FE0;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context) = xmmword_1B9652FE0;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  v99 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  v100 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v101 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion) = 0;
  v102 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions) = MEMORY[0x1E69E7CC0];
  v103 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources) = v12;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  v104 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v105 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score) = 0;
  v14 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v106 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v107 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions) = v12;
  v108 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer) = v12;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  v109 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v111 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies) = v12;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  v112 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v113 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, 1, 1, v8);
  v114 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions) = v12;
  v115 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints) = v12;
  v116 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags) = v12;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  v117 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v118 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer) = 0;
  v119 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult) = v95;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v19;
  *(v1 + 24) = v20;
  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v21;
  *(v1 + 40) = v22;

  swift_beginAccess();
  v23 = *(a1 + 48);
  LOBYTE(v21) = *(a1 + 56);
  v24 = v96;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 56) = v21;
  swift_beginAccess();
  v26 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = v97;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 72) = v25;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  v31 = *v9;
  v32 = v9[1];
  *v9 = v30;
  v9[1] = v29;
  sub_1B8D91FCC(v30, v29);
  sub_1B8D538A0(v31, v32);
  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v99;
  swift_beginAccess();
  *v36 = v35;
  v36[1] = v34;

  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v100;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  v41 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  swift_beginAccess();
  LODWORD(v41) = *(a1 + v41);
  v42 = v101;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v102;
  swift_beginAccess();
  *(v1 + v45) = v44;

  v46 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v103;
  swift_beginAccess();
  *(v1 + v48) = v47;

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v104;
  swift_beginAccess();
  *v52 = v51;
  v52[1] = v50;

  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  swift_beginAccess();
  v54 = *v53;
  v55 = v105;
  swift_beginAccess();
  *v55 = v54;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v107;
  swift_beginAccess();
  *(v1 + v58) = v57;

  v59 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = v108;
  swift_beginAccess();
  *(v1 + v61) = v60;

  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = v109;
  swift_beginAccess();
  *v65 = v64;
  v65[1] = v63;

  v66 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  swift_beginAccess();
  v67 = *(a1 + v66);
  v68 = v111;
  swift_beginAccess();
  *(v1 + v68) = v67;

  v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  swift_beginAccess();
  v71 = *v69;
  v70 = v69[1];
  v72 = v112;
  swift_beginAccess();
  *v72 = v71;
  v72[1] = v70;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v73 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = v114;
  swift_beginAccess();
  *(v1 + v75) = v74;

  v76 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = v115;
  swift_beginAccess();
  *(v1 + v78) = v77;

  v79 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
  swift_beginAccess();
  v80 = *(a1 + v79);
  v81 = v116;
  swift_beginAccess();
  *(v1 + v81) = v80;

  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = v117;
  swift_beginAccess();
  *v85 = v84;
  v85[1] = v83;

  v86 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v118;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  sub_1B8D91FCC(v90, v89);

  v91 = v119;
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  *v91 = v90;
  v91[1] = v89;
  sub_1B8D538A0(v92, v93);
  return v1;
}

uint64_t sub_1B8F09548()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8F09598()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8F095E8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B8F096DC()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer, &qword_1EBABE968, &qword_1B96693B0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context), *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context + 8));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset, &qword_1EBABE970, &qword_1B96693B8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, &qword_1EBABE968, &qword_1B96693B0);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult), *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult + 8));
  return v0;
}

uint64_t sub_1B8F0989C()
{
  v0 = sub_1B8F096DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_166_3();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B8F08990(v2);
  }

  v3 = OUTLINED_FUNCTION_7_6();
  return sub_1B8F09978(v3, v4, v5, v6);
}

uint64_t sub_1B8F09978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        continue;
      case 2:
        sub_1B8DC46F4(a2, a1);
        continue;
      case 3:
        sub_1B8F09CC0(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8E16ACC(a2, a1);
        continue;
      case 5:
      case 20:
        sub_1B8F0A21C();
        continue;
      case 6:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context;
        v19 = MEMORY[0x1E69AAC78];
        goto LABEL_31;
      case 7:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language;
        goto LABEL_30;
      case 8:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform;
        goto LABEL_30;
      case 9:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
        v18 = MEMORY[0x1E69AAC98];
        goto LABEL_26;
      case 10:
        sub_1B8F09D54(a2, a1, a3, a4);
        continue;
      case 11:
        sub_1B8F09E30(a2, a1, a3, a4);
        continue;
      case 12:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID;
        goto LABEL_30;
      case 13:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score;
        v18 = MEMORY[0x1E69AAC88];
LABEL_26:
        sub_1B8F09F0C(a2, a1, a3, a4, v17, v18);
        continue;
      case 14:
        sub_1B8F09F88(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B8F0A064(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8F0A140(a2, a1, a3, a4);
        continue;
      case 17:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL;
        goto LABEL_30;
      case 18:
      case 22:
        sub_1B8F0A3AC();
        continue;
      case 19:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID;
        goto LABEL_30;
      case 21:
        sub_1B8F0A2D0(a2, a1, a3, a4);
        continue;
      case 23:
        sub_1B8F0A414(a2, a1, a3, a4);
        continue;
      case 24:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID;
LABEL_30:
        v19 = MEMORY[0x1E69AACE0];
LABEL_31:
        v11 = v19;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        goto LABEL_32;
      case 25:
        sub_1B8F0A4F0(a2, a1, a3, a4);
        continue;
      default:
        if (result != 100)
        {
          continue;
        }

        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult;
LABEL_32:
        sub_1B8F0A57C(v12, v13, v14, v15, v16, v11);
        break;
    }
  }
}

uint64_t sub_1B8F09CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8F1B864();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8F09D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F09E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
  sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F09F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  v8 = a6(v7);
  return OUTLINED_FUNCTION_199_1(v8);
}

uint64_t sub_1B8F09F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8F0A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
  sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A21C()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
  OUTLINED_FUNCTION_49_1();
  v0 = sub_1B964C580();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8F0A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0);
  sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A3AC()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  v0 = sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8F0A414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0);
  sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8F0A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  v8 = a6(v7);
  return OUTLINED_FUNCTION_199_1(v8);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8F0A65C(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F0A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v70 - v8;
  v73 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v77 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  v15 = MEMORY[0x1EEE9AC00](v77);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  v17 = *(a1 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 40);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    v21 = *(a1 + 56);
    v75 = *(a1 + 48);
    v76 = v21;
    sub_1B8F1B864();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 72);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v77) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBABE968, &qword_1B96693B0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B8F095E8();
    }

    sub_1B8F095E8();
  }

  v25 = a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*v25, *(v25 + 8)))
  {
    v26 = *v25;
    v27 = *(v25 + 8);
    sub_1B8D91FCC(v26, v27);
    sub_1B964C6A0();
    v28 = v26;
    v29 = v27;
    if (v4)
    {
      return sub_1B8D538A0(v28, v29);
    }

    sub_1B8D538A0(v26, v27);
  }

  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_32;
  }

  sub_1B964C700();
  if (v5)
  {
  }

LABEL_32:
  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v38 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  swift_beginAccess();
  if (*(a1 + v38))
  {
    result = sub_1B964C6C0();
    if (v5)
    {
      return result;
    }
  }

  v39 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  swift_beginAccess();
  if (*(*(a1 + v39) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
    sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

    sub_1B964C730();
    if (v5)
    {
    }
  }

  v40 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  swift_beginAccess();
  if (*(*(a1 + v40) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
    sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

    sub_1B964C730();
    if (v5)
    {
    }
  }

  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v74;
  if (v44)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  swift_beginAccess();
  if (*v46 != 0.0)
  {
    result = sub_1B964C6B0();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v45, 1, v73) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBABE970, &qword_1B96693B8);
    goto LABEL_61;
  }

  sub_1B8F09548();
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);
  sub_1B964C740();
  if (v5)
  {
    return sub_1B8F095E8();
  }

  sub_1B8F095E8();
LABEL_61:
  v47 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  swift_beginAccess();
  if (*(*(a1 + v47) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
    sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

    sub_1B964C730();
    if (v5)
    {
    }
  }

  v48 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  swift_beginAccess();
  if (*(*(a1 + v48) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
    sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

    sub_1B964C730();
    if (v5)
    {
    }
  }

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v53 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  swift_beginAccess();
  if (*(*(a1 + v53) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57 || (, sub_1B964C700(), result = , !v5))
  {
    swift_beginAccess();
    v58 = v71;
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v58, 1, v77) == 1)
    {
      sub_1B8D9207C(v58, &qword_1EBABE968, &qword_1B96693B0);
    }

    else
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
      sub_1B964C740();
      result = sub_1B8F095E8();
      if (v5)
      {
        return result;
      }
    }

    v59 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
    swift_beginAccess();
    if (!*(*(a1 + v59) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0), sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion), , sub_1B964C730(), result = , !v5))
    {
      v60 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
      swift_beginAccess();
      if (!*(*(a1 + v60) + 16) || (, sub_1B964C6E0(), result = , !v5))
      {
        v61 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
        swift_beginAccess();
        if (!*(*(a1 + v61) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0), sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags), , sub_1B964C730(), result = , !v5))
        {
          v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
          swift_beginAccess();
          v63 = *v62;
          v64 = v62[1];
          v65 = HIBYTE(v64) & 0xF;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v65 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (!v65 || (, sub_1B964C700(), result = , !v5))
          {
            v66 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
            swift_beginAccess();
            if (*(a1 + v66) != 1 || (result = sub_1B964C670(), !v5))
            {
              v67 = a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult;
              swift_beginAccess();
              result = sub_1B8D99EA8(*v67, *(v67 + 8));
              if ((result & 1) == 0)
              {
                v69 = *v67;
                v68 = *(v67 + 8);
                sub_1B8D91FCC(v69, v68);
                sub_1B964C6A0();
                v28 = v69;
                v29 = v68;
                return sub_1B8D538A0(v28, v29);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_30_13();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B8F0B6D0(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8F0B6D0(uint64_t a1, void *a2)
{
  v160 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v156 = v6 - v5;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECB0, &qword_1B966BBD0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v151 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v157 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v151 - v14;
  v163 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = v17 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECB8, &qword_1B966BBD8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v151 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  v27 = OUTLINED_FUNCTION_183(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_66();
  v154 = v28 - v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v155 = &v151 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v151 - v34;
  OUTLINED_FUNCTION_521(a1 + 16, v215);
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  OUTLINED_FUNCTION_521((a2 + 2), v214);
  v38 = v36 == a2[2] && v37 == a2[3];
  if (v38 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
  {
    OUTLINED_FUNCTION_521(a1 + 32, v213);
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    OUTLINED_FUNCTION_521((a2 + 4), v212);
    v41 = v39 == a2[4] && v40 == a2[5];
    if (v41 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
    {
      OUTLINED_FUNCTION_521(a1 + 48, v211);
      v42 = *(a1 + 48);
      v43 = *(a1 + 56);
      OUTLINED_FUNCTION_521((a2 + 6), v210);
      if (sub_1B8D92198(v42, v43, a2[6]))
      {
        OUTLINED_FUNCTION_521(a1 + 64, &v209);
        v44 = *(a1 + 64);
        v45 = *(a1 + 72);
        OUTLINED_FUNCTION_521((a2 + 8), &v208);
        v46 = v44 == a2[8] && v45 == a2[9];
        if (v46 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
        {
          v152 = v22;
          v153 = v18;
          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer, &v207);
          OUTLINED_FUNCTION_89_3();
          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer, &v206);
          v47 = *(v162 + 48);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_92_1();
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_92_1();
          sub_1B8F1B8B8();
          v48 = v163;
          OUTLINED_FUNCTION_178(v25, 1, v163);
          if (v38)
          {

            sub_1B8D9207C(v35, &qword_1EBABE968, &qword_1B96693B0);
            OUTLINED_FUNCTION_178(&v25[v47], 1, v48);
            if (v38)
            {
              sub_1B8D9207C(v25, &qword_1EBABE968, &qword_1B96693B0);
              goto LABEL_29;
            }
          }

          else
          {
            sub_1B8F1B8B8();
            OUTLINED_FUNCTION_178(&v25[v47], 1, v48);
            if (!v50)
            {
              OUTLINED_FUNCTION_24_10();
              sub_1B8F09548();

              v54 = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)();
              sub_1B8F095E8();
              sub_1B8D9207C(v35, &qword_1EBABE968, &qword_1B96693B0);
              sub_1B8F095E8();
              v55 = OUTLINED_FUNCTION_491();
              sub_1B8D9207C(v55, v56, &qword_1B96693B0);
              if ((v54 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_29:
              v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context, &v205);
              v59 = *v57;
              v58 = v57[1];
              v60 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context, &v204);
              v62 = *v60;
              v61 = v60[1];
              sub_1B8D91FCC(v59, v58);
              sub_1B8D91FCC(v62, v61);
              v63 = MEMORY[0x1BFADC060](v59, v58, v62, v61);
              sub_1B8D538A0(v62, v61);
              v64 = sub_1B8D538A0(v59, v58);
              if ((v63 & 1) == 0)
              {
                goto LABEL_90;
              }

              v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
              OUTLINED_FUNCTION_30_11(v64, &v203);
              v66 = *v65;
              v67 = v65[1];
              v68 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
              v69 = OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language, &v202);
              if (v66 != *v68 || v67 != v68[1])
              {
                OUTLINED_FUNCTION_1_0();
                v69 = sub_1B964C9F0();
                if ((v69 & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
              OUTLINED_FUNCTION_30_11(v69, &v201);
              v72 = *v71;
              v73 = v71[1];
              v74 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform, &v200);
              if (v72 != *v74 || v73 != v74[1])
              {
                OUTLINED_FUNCTION_1_0();
                if ((sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v76 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion, &v199);
              LODWORD(v76) = *(a1 + v76);
              v77 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion, &v198);
              if (v76 != *(a2 + v77))
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions, &v197);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions, &v196);

              v78 = OUTLINED_FUNCTION_1_0();
              sub_1B8D8AF74(v78, v79);
              v81 = v80;

              if ((v81 & 1) == 0)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources, &v195);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources, &v194);

              v82 = OUTLINED_FUNCTION_1_0();
              sub_1B8D8B348(v82, v83);
              v85 = v84;

              if ((v85 & 1) == 0)
              {
                goto LABEL_90;
              }

              v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
              OUTLINED_FUNCTION_30_11(v86, &v193);
              v88 = *v87;
              v89 = v87[1];
              v90 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID, &v192);
              if (v88 != *v90 || v89 != v90[1])
              {
                OUTLINED_FUNCTION_1_0();
                if ((sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score, &v191);
              v93 = *v92;
              v94 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score, &v190);
              if (v93 != *v94)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset, &v189);
              v95 = &qword_1B96693B8;
              v96 = v159;
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset, &v188);
              v97 = *(v158 + 48);
              v98 = v161;
              sub_1B8F1B8B8();
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_178(v98, 1, v160);
              if (v38)
              {
                sub_1B8D9207C(v96, &qword_1EBABE970, &qword_1B96693B8);
                OUTLINED_FUNCTION_117(v98 + v97);
                if (v38)
                {
                  sub_1B8D9207C(v98, &qword_1EBABE970, &qword_1B96693B8);
LABEL_59:
                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions, &v187);
                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions, &v186);
                  OUTLINED_FUNCTION_210_1();

                  v102 = OUTLINED_FUNCTION_177_1();
                  sub_1B8D8B598(v102, v103);
                  OUTLINED_FUNCTION_206_2();

                  if ((v95 & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer, &v185);
                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer, &v184);
                  OUTLINED_FUNCTION_210_1();

                  v104 = OUTLINED_FUNCTION_177_1();
                  sub_1B8D7EFB0(v104, v105);
                  OUTLINED_FUNCTION_206_2();

                  v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
                  v107 = OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL, &v183);
                  v108 = *v106;
                  v109 = v106[1];
                  v110 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
                  OUTLINED_FUNCTION_30_11(v107, &v182);
                  if (v108 != *v110 || v109 != v110[1])
                  {
                    OUTLINED_FUNCTION_177_1();
                    if ((sub_1B964C9F0() & 1) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  v112 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies, &v181);
                  v113 = *(a1 + v112);
                  v114 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies, &v180);
                  if ((sub_1B8D6123C(v113, *(a2 + v114)) & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  v115 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
                  v116 = OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID, &v179);
                  v117 = *v115;
                  v118 = v115[1];
                  v119 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
                  OUTLINED_FUNCTION_30_11(v116, &v178);
                  if (v117 != *v119 || v118 != v119[1])
                  {
                    OUTLINED_FUNCTION_177_1();
                    if ((sub_1B964C9F0() & 1) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, &v177);
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, &v176);
                  v121 = *(v162 + 48);
                  v122 = v152;
                  sub_1B8F1B8B8();
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_178(v122, 1, v163);
                  if (v38)
                  {
                    sub_1B8D9207C(v155, &qword_1EBABE968, &qword_1B96693B0);
                    OUTLINED_FUNCTION_178(v121 + v152, 1, v163);
                    if (v38)
                    {
                      sub_1B8D9207C(v152, &qword_1EBABE968, &qword_1B96693B0);
LABEL_81:
                      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions, &v175);
                      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions, &v174);
                      OUTLINED_FUNCTION_210_1();

                      v127 = OUTLINED_FUNCTION_177_1();
                      sub_1B8D8B920(v127, v128);
                      OUTLINED_FUNCTION_206_2();

                      if (v121)
                      {
                        v129 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
                        OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints, &v173);
                        v130 = *(a1 + v129);
                        v131 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
                        OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints, &v172);
                        if (sub_1B8D6123C(v130, *(a2 + v131)))
                        {
                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags, &v171);
                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags, &v170);
                          OUTLINED_FUNCTION_210_1();

                          v132 = OUTLINED_FUNCTION_177_1();
                          sub_1B8D8BB34(v132, v133);
                          OUTLINED_FUNCTION_206_2();

                          if (v121)
                          {
                            v134 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
                            v135 = OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID, &v169);
                            v136 = *v134;
                            v137 = v134[1];
                            v138 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
                            OUTLINED_FUNCTION_30_11(v135, &v168);
                            v139 = v136 == *v138 && v137 == v138[1];
                            if (v139 || (OUTLINED_FUNCTION_177_1(), (sub_1B964C9F0() & 1) != 0))
                            {
                              v140 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
                              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer, &v167);
                              LODWORD(v140) = *(a1 + v140);
                              v141 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
                              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer, &v166);
                              if (v140 == *(a2 + v141))
                              {
                                OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult, &v165);
                                OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult, &v164);
                                v143 = OUTLINED_FUNCTION_690();
                                sub_1B8D91FCC(v143, v144);
                                v145 = OUTLINED_FUNCTION_686();
                                sub_1B8D91FCC(v145, v146);
                                OUTLINED_FUNCTION_690();
                                OUTLINED_FUNCTION_92_1();
                                v49 = MEMORY[0x1BFADC060]();
                                v147 = OUTLINED_FUNCTION_686();
                                sub_1B8D538A0(v147, v148);
                                v149 = OUTLINED_FUNCTION_690();
                                sub_1B8D538A0(v149, v150);
                                goto LABEL_91;
                              }
                            }
                          }
                        }
                      }

LABEL_90:
                      v49 = 0;
LABEL_91:

                      return v49 & 1;
                    }
                  }

                  else
                  {
                    v123 = v152;
                    sub_1B8F1B8B8();
                    OUTLINED_FUNCTION_178(v121 + v123, 1, v163);
                    if (!v124)
                    {
                      OUTLINED_FUNCTION_24_10();
                      v125 = v152;
                      sub_1B8F09548();
                      v126 = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)();
                      sub_1B8F095E8();
                      v121 = &qword_1EBABE968;
                      sub_1B8D9207C(v155, &qword_1EBABE968, &qword_1B96693B0);
                      sub_1B8F095E8();
                      sub_1B8D9207C(v125, &qword_1EBABE968, &qword_1B96693B0);
                      if ((v126 & 1) == 0)
                      {
                        goto LABEL_90;
                      }

                      goto LABEL_81;
                    }

                    sub_1B8D9207C(v155, &qword_1EBABE968, &qword_1B96693B0);
                    OUTLINED_FUNCTION_113_2();
                    sub_1B8F095E8();
                  }

                  v51 = &qword_1EBABECB8;
                  v52 = &qword_1B966BBD8;
                  v53 = v152;
LABEL_27:
                  sub_1B8D9207C(v53, v51, v52);
                  goto LABEL_90;
                }
              }

              else
              {
                sub_1B8F1B8B8();
                OUTLINED_FUNCTION_117(v98 + v97);
                if (!v99)
                {
                  OUTLINED_FUNCTION_25_7();
                  sub_1B8F09548();
                  static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.== infix(_:_:)();
                  v101 = v100;
                  v95 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset;
                  sub_1B8F095E8();
                  sub_1B8D9207C(v96, &qword_1EBABE970, &qword_1B96693B8);
                  sub_1B8F095E8();
                  sub_1B8D9207C(v98, &qword_1EBABE970, &qword_1B96693B8);
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_59;
                }

                sub_1B8D9207C(v96, &qword_1EBABE970, &qword_1B96693B8);
                sub_1B8F095E8();
              }

              v51 = &qword_1EBABECB0;
              v52 = &qword_1B966BBD0;
              v53 = v98;
              goto LABEL_27;
            }

            sub_1B8D9207C(v35, &qword_1EBABE968, &qword_1B96693B0);
            OUTLINED_FUNCTION_113_2();
            sub_1B8F095E8();
          }

          v51 = &qword_1EBABECB8;
          v52 = &qword_1B966BBD8;
          v53 = v25;
          goto LABEL_27;
        }
      }
    }
  }

  v49 = 0;
  return v49 & 1;
}

uint64_t sub_1B8F0C660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0C6E0(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0C750(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0C7D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5898);
  __swift_project_value_buffer(v0, qword_1EBAB5898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TEMPLATE_TYPE_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TEMPLATE_TYPE_GENERATED_ANSWER";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TEMPLATE_TYPE_TERMINOLOGY";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TEMPLATE_TYPE_REDIRECT";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TEMPLATE_TYPE_SEARCH_RESULTS";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CAE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_128();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964EE60;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 0;
  *v15 = a3;
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 1;
  *v20 = a4;
  *(v20 + 1) = 18;
  v20[16] = 2;
  v19();
  v21 = (v14 + 2 * v11);
  v22 = v21 + v10[14];
  *v21 = 2;
  *v22 = a5;
  *(v22 + 1) = 20;
  v22[16] = 2;
  v19();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CD00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE7B8);
  __swift_project_value_buffer(v0, qword_1EBABE7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUGGESTION_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUGGESTION_TYPE_RELATED";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SUGGESTION_TYPE_ACTION";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CF2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57B8);
  __swift_project_value_buffer(v0, qword_1EBAB57B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ASSET_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASSET_TYPE_IMAGE";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASSET_TYPE_ICON";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ASSET_TYPE_VIDEO";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8F0D258(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B8F18964(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
      OUTLINED_FUNCTION_156_4();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      v6 = sub_1B8CD2378(v4, v5, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v6) & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1B8F0D528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC68, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0D5A8(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0D618(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0D698()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B96F2C00);
  qword_1EBABE7F8 = 0xD000000000000046;
  unk_1EBABE800 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F0D72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CDE98);
  __swift_project_value_buffer(v0, qword_1ED9CDE98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "color";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "highlighted";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F0D9DC(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F0D9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v8 || (sub_1B964C700(), !v1))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
    sub_1B8F1B8B8();
    v9 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v9, v10, v6) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
    }

    else
    {
      OUTLINED_FUNCTION_1_30();
      sub_1B8F09548();
      OUTLINED_FUNCTION_123_3();
      sub_1B8CD2378(v11, v12, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
      sub_1B964C740();
      OUTLINED_FUNCTION_12_14();
      sub_1B8F095E8();
      if (v1)
      {
        goto LABEL_9;
      }
    }

    if (*(v0 + 16) != 1 || (sub_1B964C670(), !v1))
    {
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8F0DD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0DDA8(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0DE18(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0DE98()
{
  result = MEMORY[0x1BFADC850](0xD000000000000012, 0x80000001B96F2BE0);
  qword_1EBABE808 = 0xD000000000000046;
  unk_1EBABE810 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F0DF2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE818);
  __swift_project_value_buffer(v0, qword_1EBABE818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alt";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "color";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "highlighted";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F0E230(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F0E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v9 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v10 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v1) == 0))
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
      {
        sub_1B8D9207C(v3, &qword_1EBABE978, &qword_1B96693C0);
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        sub_1B8F09548();
        OUTLINED_FUNCTION_123_3();
        sub_1B8CD2378(v11, v12, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        v0 = v1;
        OUTLINED_FUNCTION_12_14();
        sub_1B8F095E8();
        if (v1)
        {
          goto LABEL_11;
        }
      }

      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_24_3(), sub_1B964C670(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8F0E568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0E5E8(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0E658(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B8F0ECC4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B8F0E7CC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8F0E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECA0, &qword_1B966BBC0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBABECA0, &qword_1B966BBC0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABECA0, &qword_1B966BBC0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABECA0, &qword_1B966BBC0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABECA0, &qword_1B966BBC0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBABECA0, &qword_1B966BBC0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB91D0, &qword_1B964D9B8);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8F0ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECA8, &qword_1B966BBC8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBABECA8, &qword_1B966BBC8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABECA8, &qword_1B966BBC8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABECA8, &qword_1B966BBC8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABECA8, &qword_1B966BBC8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBABECA8, &qword_1B966BBC8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB91D0, &qword_1B964D9B8);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_166_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = OUTLINED_FUNCTION_7_6();
    sub_1B8F0F4F0(v6, v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_6();
    sub_1B8F0F2DC(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_47_3();
  result = sub_1B8F095E8();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F0F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F0F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F0F9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC50, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0FA54(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0FAC4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return sub_1B964C5D0();
}

void sub_1B8F0FC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (1)
  {
    v8 = sub_1B964C3C0();
    if (v7 || (v9 & 1) != 0)
    {
      break;
    }

    if (v8 == 1)
    {
      sub_1B8F18368();
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v2, v3, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F0FE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0FE94(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0FF04(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0FFC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CDC68);
  __swift_project_value_buffer(v0, qword_1ED9CDC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B964E4A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "summary";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "steps";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intro";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "outro";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "list_style";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  return sub_1B964C760();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F18368();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8F103B4(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8F10454(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8F104F4(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F10594(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B8F10634(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F103B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t sub_1B8F10454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0);
  sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);
  return sub_1B964C570();
}

uint64_t sub_1B8F104F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t sub_1B8F10594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v3, v4, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v6, v7, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(v2[2] + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0), sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v8, v9, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v10, v11, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
          {
            if (!v2[5] || (sub_1B8F189B8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
            {
              type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D7EFB0(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7EFB0(*(v1 + 8), v0[1]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7F638(*(v1 + 16), v0[2]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7EFB0(*(v1 + 24), v0[3]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7EFB0(*(v1 + 32), v0[4]);
  if ((v8 & 1) == 0 || !sub_1B8D92198(*(v1 + 40), *(v1 + 48), v0[5]))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v11 = sub_1B8CD2378(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8F10A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F10ABC(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F10B2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F10D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F10DEC(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F10E5C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F10F2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58B8);
  __swift_project_value_buffer(v0, qword_1EBAB58B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameters";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
    {
      if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
      {
        type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F11314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC30, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F11394(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F11404(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F114C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57F8);
  __swift_project_value_buffer(v0, qword_1EBAB57F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intent";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_17_3();
        sub_1B8F117CC(v9, v10, v11, v12);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B8F11CD0(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8F121D4(v7, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F117CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC90, &qword_1B966BBB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  v26 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBABEC90, &qword_1B966BBB0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABEC90, &qword_1B966BBB0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABEC90, &qword_1B966BBB0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABEC90, &qword_1B966BBB0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBABEC90, &qword_1B966BBB0);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_1B8F11CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC98, &qword_1B966BBB8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  v26 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBABEC98, &qword_1B966BBB8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABEC98, &qword_1B966BBB8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABEC98, &qword_1B966BBB8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABEC98, &qword_1B966BBB8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBABEC98, &qword_1B966BBB8);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  OUTLINED_FUNCTION_1();
  if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
    sub_1B8F1B8B8();
    v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
    {
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v1 = v0;
      sub_1B8F125D4(v9, v10, v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v1 = v0;
      sub_1B8F123B4(v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_3_20();
    result = sub_1B8F095E8();
    if (!v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_1();
      if (!v17)
      {
        return OUTLINED_FUNCTION_8_1();
      }

      OUTLINED_FUNCTION_49_1();
      result = sub_1B964C700();
      if (!v1)
      {
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F123B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F125D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F8, &unk_1B964D9E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  v11 = *(v8 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v4);
  if (!v10)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(v2 + v11, 1, v4);
    if (!v14)
    {
      sub_1B8F09548();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value.== infix(_:_:)();
      v17 = v16;
      sub_1B8F095E8();
      OUTLINED_FUNCTION_207_2();
      sub_1B8D9207C(v2, &qword_1EBAB91F0, &qword_1B96693D0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB91F8, &unk_1B964D9E0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_178(v2 + v11, 1, v4);
  if (!v10)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_17:
  v18 = *(v26 + 24);
  v19 = *(v1 + v18);
  v20 = *(v1 + v18 + 8);
  v21 = (v0 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_35();
    v25 = sub_1B8CD2378(v23, v24, MEMORY[0x1E69AAC10]);
    v15 = OUTLINED_FUNCTION_634(v25);
    goto LABEL_23;
  }

LABEL_15:
  v15 = 0;
LABEL_23:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F12B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC28, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F12BB4(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F12C24(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F12CF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE8B8);
  __swift_project_value_buffer(v0, qword_1EBABE8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "suggestion_text";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestion_type";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_intent";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "app_bundle";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F12FEC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (sub_1B8F18A0C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v10 = v5 && v8 == v9;
  if (v10 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_167_4();
    v13 = v5 && v11 == v12;
    if (v13 || (sub_1B964C9F0() & 1) != 0)
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      v16 = sub_1B8CD2378(v14, v15, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v16) & 1;
    }
  }

  return 0;
}

uint64_t sub_1B8F132CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1334C(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F133BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F13488()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58D8);
  __swift_project_value_buffer(v0, qword_1EBAB58D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v8 = sub_1B8CD2378(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8F13894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC18, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F13914(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F13984(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F13A48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57D8);
  __swift_project_value_buffer(v0, qword_1EBAB57D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "topic_name";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "user_guide_name";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "product_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "topic_id";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "url";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "preview_summary";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v8 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
              {
                type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v14 = v5 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = v2[10] == v1[10] && v2[11] == v1[11];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = v2[12] == v1[12] && v2[13] == v1[13];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v20 = sub_1B8CD2378(v18, v19, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v20) & 1;
}

uint64_t sub_1B8F14108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14188(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F141F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14278()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B96F2B00);
  qword_1EBABE8F0 = 0xD000000000000046;
  *algn_1EBABE8F8 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F1430C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5878);
  __swift_project_value_buffer(v0, qword_1EBAB5878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B964EE70;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "product_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "topic_id";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "url";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "user_guide_name";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
          {
            type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8F147C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14848(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F148B8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14938()
{
  result = MEMORY[0x1BFADC850](0xD000000000000013, 0x80000001B96F2AD0);
  qword_1EBABE900 = 0xD000000000000046;
  *algn_1EBABE908 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F149E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1B964C780();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B964EE60;
  v9 = (v8 + v7);
  v10 = v8 + v7 + v5[14];
  *v9 = 1;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = v9 + v6 + v5[14];
  *(v9 + v6) = 2;
  *v15 = a3;
  *(v15 + 1) = 10;
  v15[16] = 2;
  v14();
  v16 = (v9 + 2 * v6);
  v17 = v16 + v5[14];
  *v16 = 3;
  *v17 = "url";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v14();
  return sub_1B964C760();
}

uint64_t sub_1B8F14CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC00, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14D20(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F14D90(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14E10()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B96F2AB0);
  qword_1EBABE910 = 0xD000000000000046;
  *algn_1EBABE918 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F14EF4()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8F14F90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_1_15();
  if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
      {
        a4(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F150BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBF8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1513C(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F151AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F15278()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58F8);
  __swift_project_value_buffer(v0, qword_1EBAB58F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "guide";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15F10(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15A18(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15520(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F15520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC78, &qword_1B966BB98);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBABEC78, &qword_1B966BB98);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABEC78, &qword_1B966BB98);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABEC78, &qword_1B966BB98);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABEC78, &qword_1B966BB98);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBABEC78, &qword_1B966BB98);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8F15A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC80, &qword_1B966BBA0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBABEC80, &qword_1B966BBA0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABEC80, &qword_1B966BBA0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABEC80, &qword_1B966BBA0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABEC80, &qword_1B966BBA0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBABEC80, &qword_1B966BBA0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8F15F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC88, &qword_1B966BBA8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBABEC88, &qword_1B966BBA8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBABEC88, &qword_1B966BBA8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABEC88, &qword_1B966BBA8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBABEC88, &qword_1B966BBA8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBABEC88, &qword_1B966BBA8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_166_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_686();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = OUTLINED_FUNCTION_7_6();
      sub_1B8F16748(v7, v8, v9, v10);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_7_6();
      sub_1B8F1695C(v15, v16, v17, v18);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_6();
    sub_1B8F16538(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_53_4();
  result = sub_1B8F095E8();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F16538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F16748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F1695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_208();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E8, &unk_1B964D9D0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_88();
  v11 = *(v10 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_92_1();
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_178(v0 + v11, 1, v2);
    if (v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_12:
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
      OUTLINED_FUNCTION_156_4();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      v20 = sub_1B8CD2378(v18, v19, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_634(v20);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0 + v11, 1, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_53_4();
    sub_1B8F095E8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB91E8, &unk_1B964D9D0);
    goto LABEL_10;
  }

  sub_1B8F09548();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value.== infix(_:_:)();
  v17 = v16;
  sub_1B8F095E8();
  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_10:
  v15 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F16E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F16EC0(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F16F30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F17018(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_193_2();
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B964D060;
  v15 = (v14 + v13);
  v16 = v14 + v13 + *(v7 + 56);
  *v15 = 1;
  *v16 = a3;
  *(v16 + 8) = 4;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v20 = *(v19 + 104);
  (v20)(v16, v17, v18);
  v21 = v15 + v11 + *(v7 + 56);
  *(v15 + v11) = 2;
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = 2;
  v20();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v9 = sub_1B8CD2378(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8F173F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F17470(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F174E0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F17580(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000046;
  *a5 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F1760C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5818);
  __swift_project_value_buffer(v0, qword_1EBAB5818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asset_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alt";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "file_asset";
  *(v12 + 1) = 10;
  v12[16] = 2;
  *(v12 + 3) = "files";
  *(v12 + 4) = 5;
  v12[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8F17940(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F178D8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F17940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (sub_1B8F18A60(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), !v1))
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
      {
        sub_1B8D9207C(v2, &qword_1EBABE998, &unk_1B96693F0);
LABEL_8:
        OUTLINED_FUNCTION_8_1();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_5_14();
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_52_3();
      sub_1B8F095E8();
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEA48, &qword_1B9669400);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v11 = *v1;
  v12 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v12)
    {
      case 1:
        if (v11 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      case 2:
        if (v11 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      case 3:
        if (v11 != 3)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      default:
        if (!v11)
        {
          goto LABEL_6;
        }

        goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

LABEL_6:
  v13 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
LABEL_39:
    v26 = 0;
    goto LABEL_40;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  v14 = *(v9 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v13)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_5_14();
      sub_1B8F09548();
      v18 = *v4 == *v3 && v4[1] == v3[1];
      if (v18 || (sub_1B964C9F0() & 1) != 0)
      {
        v19 = v4[2] == v3[2] && v4[3] == v3[3];
        if (v19 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_35();
          sub_1B8CD2378(v20, v21, MEMORY[0x1E69AAC10]);
          v22 = OUTLINED_FUNCTION_198_0();
          sub_1B8F095E8();
          OUTLINED_FUNCTION_207_2();
          sub_1B8D9207C(v2, &qword_1EBABE998, &unk_1B96693F0);
          if (v22)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      sub_1B8F095E8();
      sub_1B8F095E8();
      v16 = &qword_1EBABE998;
      v17 = &unk_1B96693F0;
LABEL_20:
      sub_1B8D9207C(v2, v16, v17);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_52_3();
    sub_1B8F095E8();
LABEL_19:
    v16 = &qword_1EBABEA48;
    v17 = &qword_1B9669400;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (!v13)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBABE998, &unk_1B96693F0);
LABEL_38:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v25 = sub_1B8CD2378(v23, v24, MEMORY[0x1E69AAC10]);
  v26 = OUTLINED_FUNCTION_199_0(v25);
LABEL_40:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F17FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBE0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F18074(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F180E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F18198(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, a2);
  v9 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_193_2();
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + *(v4 + 56);
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_21_7();
  (*(v16 + 104))(v14, v15);
  return sub_1B964C760();
}

void sub_1B8F18368()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v2(0);
  v3 = OUTLINED_FUNCTION_128();
  sub_1B8CD2378(v3, v4, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0), sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F184D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  v10 = sub_1B8CD2378(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8F185A8()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD2378(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F18680(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBD8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F18700(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F18770(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2378(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F188B0()
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

unint64_t sub_1B8F18964()
{
  result = qword_1EBABE9A8;
  if (!qword_1EBABE9A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, v0, v1);
    atomic_store(result, &qword_1EBABE9A8);
  }

  return result;
}

unint64_t sub_1B8F189B8()
{
  result = qword_1ED9CDB40;
  if (!qword_1ED9CDB40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, v0, v1);
    atomic_store(result, &qword_1ED9CDB40);
  }

  return result;
}

unint64_t sub_1B8F18A0C()
{
  result = qword_1EBABEA00;
  if (!qword_1EBABEA00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, v0, v1);
    atomic_store(result, &qword_1EBABEA00);
  }

  return result;
}

unint64_t sub_1B8F18A60()
{
  result = qword_1ED9CDB90[0];
  if (!qword_1ED9CDB90[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, v0, v1);
    atomic_store(result, qword_1ED9CDB90);
  }

  return result;
}

unint64_t sub_1B8F18AB8()
{
  result = qword_1ED9CDED0;
  if (!qword_1ED9CDED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, v0, v1);
    atomic_store(result, &qword_1ED9CDED0);
  }

  return result;
}

unint64_t sub_1B8F18B10()
{
  result = qword_1ED9CDEC0;
  if (!qword_1ED9CDEC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, v0, v1);
    atomic_store(result, &qword_1ED9CDEC0);
  }

  return result;
}

unint64_t sub_1B8F18B68()
{
  result = qword_1ED9CDEC8;
  if (!qword_1ED9CDEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, v0, v1);
    atomic_store(result, &qword_1ED9CDEC8);
  }

  return result;
}

unint64_t sub_1B8F18BC0()
{
  result = qword_1EBABEA60;
  if (!qword_1EBABEA60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, v0, v1);
    atomic_store(result, &qword_1EBABEA60);
  }

  return result;
}

unint64_t sub_1B8F18C18()
{
  result = qword_1EBABEA68;
  if (!qword_1EBABEA68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, v0, v1);
    atomic_store(result, &qword_1EBABEA68);
  }

  return result;
}

unint64_t sub_1B8F18C70()
{
  result = qword_1EBABEA70;
  if (!qword_1EBABEA70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName, v0, v1);
    atomic_store(result, &qword_1EBABEA70);
  }

  return result;
}

unint64_t sub_1B8F18CC8()
{
  result = qword_1ED9CDB38;
  if (!qword_1ED9CDB38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, v0, v1);
    atomic_store(result, &qword_1ED9CDB38);
  }

  return result;
}

unint64_t sub_1B8F18D20()
{
  result = qword_1ED9CDB28;
  if (!qword_1ED9CDB28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, v0, v1);
    atomic_store(result, &qword_1ED9CDB28);
  }

  return result;
}

unint64_t sub_1B8F18D78()
{
  result = qword_1ED9CDB30;
  if (!qword_1ED9CDB30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle, v0, v1);
    atomic_store(result, &qword_1ED9CDB30);
  }

  return result;
}

unint64_t sub_1B8F18DD0()
{
  result = qword_1EBABEA78;
  if (!qword_1EBABEA78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, v0, v1);
    atomic_store(result, &qword_1EBABEA78);
  }

  return result;
}

unint64_t sub_1B8F18E28()
{
  result = qword_1EBABEA80;
  if (!qword_1EBABEA80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, v0, v1);
    atomic_store(result, &qword_1EBABEA80);
  }

  return result;
}

unint64_t sub_1B8F18E80()
{
  result = qword_1EBABEA88;
  if (!qword_1EBABEA88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType, v0, v1);
    atomic_store(result, &qword_1EBABEA88);
  }

  return result;
}

unint64_t sub_1B8F18ED8()
{
  result = qword_1ED9CDB88;
  if (!qword_1ED9CDB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, v0, v1);
    atomic_store(result, &qword_1ED9CDB88);
  }

  return result;
}

unint64_t sub_1B8F18F30()
{
  result = qword_1ED9CDB78;
  if (!qword_1ED9CDB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, v0, v1);
    atomic_store(result, &qword_1ED9CDB78);
  }

  return result;
}

unint64_t sub_1B8F18F88()
{
  result = qword_1ED9CDB80;
  if (!qword_1ED9CDB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType, v0, v1);
    atomic_store(result, &qword_1ED9CDB80);
  }

  return result;
}

uint64_t sub_1B8F1A774(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8F1A8FC(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8F1AA2C(319, qword_1ED9F3B30, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8F1AA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B8F1AB40(uint64_t a1)
{
  sub_1B8F1AA2C(319, &qword_1ED9EF1A8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1B8F1AA2C(319, qword_1ED9EF1B0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_1B964C2B0();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1B8F1AC88()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void sub_1B8F1AD40(uint64_t a1)
{
  sub_1B8F1AA2C(319, qword_1ED9D3308, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F1AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B8F1AED4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8F1AFAC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_214Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_215Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8F1B16C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_171Tm()
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v7 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_172Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v2)
  {
    v6 = OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v6 = v1 + v8;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_1B8F1B368(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B8F1B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1B964C2B0();
  if (v9 <= 0x3F)
  {
    sub_1B8F1AA2C(319, a6, a7, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_187Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_188Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8F1B638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B8F1AA2C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B8F1B6C4(uint64_t a1)
{
  sub_1B8F1AA2C(319, qword_1ED9F3A80, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8F1AA2C(319, qword_1ED9F3BC8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8F1B864()
{
  result = qword_1ED9CDED8;
  if (!qword_1ED9CDED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, &type metadata for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType, v0, v1);
    atomic_store(result, &qword_1ED9CDED8);
  }

  return result;
}

uint64_t sub_1B8F1B8B8()
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_21_7();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_3(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_68_4@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return sub_1B8F1B8B8();
}

void OUTLINED_FUNCTION_132_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_150_2()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_163_3(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
}

uint64_t OUTLINED_FUNCTION_168_2@<X0>(uint64_t a2@<X8>)
{
  *v3 = a2;
  *(v3 + 8) = a2;
  *(v3 + 16) = a2;
  *(v3 + 24) = a2;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_191_2(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_200_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_201_2(uint64_t a1)
{
  *v2 = 0;
  *(v2 + 8) = v1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_202_2(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_205_0(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_206_2()
{
}

uint64_t OUTLINED_FUNCTION_207_2()
{

  return sub_1B8F095E8();
}

uint64_t OUTLINED_FUNCTION_210_1()
{
}

uint64_t OUTLINED_FUNCTION_214_0()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.appBundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.query.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 24));
  OUTLINED_FUNCTION_117(v0);
  if (v14)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_66_3(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_117(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B8F21064();
  return a7(v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v14);
  OUTLINED_FUNCTION_16_4(*(v15 + 28));
  OUTLINED_FUNCTION_117(v0);
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v10 + v17) = qword_1ED9D38C8;
    v18 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.deviceexpertQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v12);
  OUTLINED_FUNCTION_15_12(v13);
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_69_3(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED48, &unk_1B966BBF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v0);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1B8F1CB2C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Search_Error(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse(v12);
  OUTLINED_FUNCTION_15_12(v13);
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1CD00()
{
  OUTLINED_FUNCTION_111_0();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_103();
  v11 = v2(v10);
  sub_1B8DD9078(v1 + *(v11 + 32), v4, v6, v3);
  v0(0);
  v12 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v17, v18, v19);
  return v16;
}

uint64_t sub_1B8F1CDEC()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 32), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.traceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.results.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1CFD0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = v1(v5);
  OUTLINED_FUNCTION_36_3(*(v6 + 24));
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()(v0);
  result = OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED38, &unk_1B966BBE0);
  }

  return result;
}

uint64_t sub_1B8F1D0C0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.query.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 24));
  OUTLINED_FUNCTION_117(v0);
  if (v14)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_66_3(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_117(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1D280(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79();
  v4 = (a1)(0);
  OUTLINED_FUNCTION_82_2(*(v4 + 24));
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v5 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v10, v11, &unk_1B966BBE0);
  return v9;
}

uint64_t sub_1B8F1D34C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBABED38, &unk_1B966BBE0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8F1D3D0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = v1(v5);
  OUTLINED_FUNCTION_36_3(*(v6 + 28));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v8)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
  }

  *(v0 + v9) = qword_1ED9D38C8;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B8F1D50C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v14);
  OUTLINED_FUNCTION_16_4(*(v15 + 28));
  OUTLINED_FUNCTION_117(v0);
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v10 + v17) = qword_1ED9D38C8;
    v18 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1D6EC(void (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79();
  v4 = (a1)(0);
  OUTLINED_FUNCTION_82_2(*(v4 + 28));
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v10, v11, &qword_1B96809F0);
  return v9;
}

uint64_t sub_1B8F1D7B8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 28), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8F1D83C()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = v1(v5);
  OUTLINED_FUNCTION_36_3(*(v6 + 32));
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED48, &unk_1B966BBF0);
  }

  return result;
}

uint64_t sub_1B8F1D93C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.deviceexpertQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v12);
  OUTLINED_FUNCTION_15_12(v13);
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_69_3(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED48, &unk_1B966BBF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1DB5C()
{
  OUTLINED_FUNCTION_99_4();
  v0(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t sub_1B8F1DBE4()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1DCB0()
{
  OUTLINED_FUNCTION_99_4();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v1(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B8F1DD94()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = v1(v5);
  OUTLINED_FUNCTION_36_3(*(v6 + 32));
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
  }

  return result;
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Apple_Parsec_Search_Error(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse(v12);
  OUTLINED_FUNCTION_15_12(v13);
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_68_5(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F1DF94(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1B8F21064();
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B8F21010();
    OUTLINED_FUNCTION_187_1();
    sub_1B8F210B8();
  }

  else
  {
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B8F21010();
    OUTLINED_FUNCTION_187_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B8F1E148()
{
  OUTLINED_FUNCTION_99_4();
  v0(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t sub_1B8F1E1D0()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1E29C()
{
  OUTLINED_FUNCTION_99_4();
  *v1 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v2(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8F1E338()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABECC0);
  __swift_project_value_buffer(v0, qword_1EBABECC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "app_bundle_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_results";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = sub_1B964C700(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_1B964C6C0(), !v4))
    {
      type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  v7 = sub_1B8CD23C0(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B8F1E7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE80, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1E82C(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABED58, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1E89C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD23C0(&qword_1EBABED58, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE78, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1EAD8(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDB0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1EB48(uint64_t a1, uint64_t a2)
{
  sub_1B8CD23C0(&qword_1EBABEDB0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EC50()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_26_10();
  sub_1B8CD23C0(v1, v2, protocol conformance descriptor for Apple_Parsec_Search_Error);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1EDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE70, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1EE40(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDC8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1EEB0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD23C0(&qword_1EBABEDC8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EF54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_80_1();
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_60_4();
  *(v6 + 16) = xmmword_1B964E4B0;
  v7 = a2 + v6;
  v8 = a2 + v6 + *(v3 + 56);
  *(a2 + v6) = 1;
  *v8 = "query";
  *(v8 + 1) = 5;
  v8[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_53_5(&v7[v5]);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_74_6(v13, "query_context");
  v16 = *MEMORY[0x1E69AADE8];
  (v12)(v15, v16, v10);
  v17 = OUTLINED_FUNCTION_53_5(&v7[2 * v5]);
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_74_6(v17, "deviceexpert_query_context");
  (v12)(v19, v16, v10);
  v20 = OUTLINED_FUNCTION_51_6();
  *v20 = "feature_flag";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v12();
  return sub_1B964C760();
}

uint64_t sub_1B8F1F190(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F254();
        break;
      case 2:
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F2DC();
        break;
      case 3:
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F364();
        break;
      case 4:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F1F254()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_34_5();
  sub_1B8CD23C0(v1, v2, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F2DC()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_33_7();
  sub_1B8CD23C0(v1, v2, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F364()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_32_7();
  sub_1B8CD23C0(v1, v2, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v5;
  v10 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v44 = v13;
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v42 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_77_3();
  v46 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v43 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_103();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v25);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v47 = a4(0);
  sub_1B8DD9078(v10 + v47[6], v6, &qword_1EBABED38, &unk_1B966BBE0);
  v28 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v28, v29, v26) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBABED38, &unk_1B966BBE0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_34_5();
    sub_1B8CD23C0(v30, v31, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);
    sub_1B964C740();
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  sub_1B8DD9078(v10 + v47[7], v7, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v46) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_33_7();
    v35 = sub_1B8CD23C0(v33, v34, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_108_3(v43, 2, v36, v35);
    v9 = v5;
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  sub_1B8DD9078(v10 + v47[8], v44, &qword_1EBABED48, &unk_1B966BBF0);
  if (__swift_getEnumTagSinglePayload(v44, 1, Context) == 1)
  {
    sub_1B8D9207C(v44, &qword_1EBABED48, &unk_1B966BBF0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_32_7();
    v39 = sub_1B8CD23C0(v37, v38, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);
    OUTLINED_FUNCTION_108_3(v42, 3, v40, v39);
    v9 = v5;
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v41)
  {
    return sub_1B964C290();
  }

  result = sub_1B964C700();
  if (!v9)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F1F8D0(void *a1, void *a2, uint64_t (*a3)(void))
{
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v76 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v77 = v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED60, &unk_1B966BC00);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v81 = v13;
  v84 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v78 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v82 = v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_185();
  v85 = v21;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED70, &unk_1B966BC10) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v86 = a3(0);
  v87 = a1;
  v31 = *(v86 + 24);
  v32 = *(v27 + 56);
  sub_1B8DD9078(a1 + v31, v30, &qword_1EBABED38, &unk_1B966BBE0);
  sub_1B8DD9078(a2 + v31, &v30[v32], &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_117(v30);
  if (v33)
  {
    OUTLINED_FUNCTION_117(&v30[v32]);
    if (v33)
    {
      sub_1B8D9207C(v30, &qword_1EBABED38, &unk_1B966BBE0);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &qword_1EBABED70;
    v35 = &unk_1B966BC10;
    v36 = v30;
LABEL_50:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_51;
  }

  sub_1B8DD9078(v30, v26, &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_117(&v30[v32]);
  if (v33)
  {
    sub_1B8F210B8();
    goto LABEL_9;
  }

  sub_1B8F21010();
  v37 = static Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.== infix(_:_:)();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v30, &qword_1EBABED38, &unk_1B966BBE0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  v39 = v86;
  v38 = v87;
  v40 = *(v86 + 28);
  v41 = *(v83 + 48);
  v42 = v85;
  OUTLINED_FUNCTION_86_3(v87 + v40, v85);
  OUTLINED_FUNCTION_86_3(a2 + v40, v42 + v41);
  v43 = OUTLINED_FUNCTION_602();
  v44 = v84;
  OUTLINED_FUNCTION_178(v43, v45, v84);
  if (v33)
  {
    OUTLINED_FUNCTION_178(v42 + v41, 1, v44);
    if (v33)
    {
      sub_1B8D9207C(v42, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v46 = v82;
  sub_1B8DD9078(v42, v82, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v42 + v41, 1, v44);
  if (v47)
  {
    sub_1B8F210B8();
LABEL_19:
    v34 = &qword_1EBABED68;
    v35 = &qword_1B9680A10;
LABEL_20:
    v36 = v42;
    goto LABEL_50;
  }

  v48 = v78;
  sub_1B8F21010();
  if (*(v46 + *(v44 + 20)) != *(v48 + *(v44 + 20)))
  {

    v49 = OUTLINED_FUNCTION_432();
    v51 = sub_1B9090820(v49, v50);

    if (!v51)
    {
      sub_1B8F210B8();
      sub_1B8F210B8();
      v34 = &qword_1EBABED40;
      v35 = &qword_1B96809F0;
      goto LABEL_20;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v52, v53, MEMORY[0x1E69AAC10]);
  v54 = sub_1B964C850();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v42, &qword_1EBABED40, &qword_1B96809F0);
  if ((v54 & 1) == 0)
  {
LABEL_51:
    v66 = 0;
    return v66 & 1;
  }

LABEL_24:
  v55 = *(v39 + 32);
  v56 = *(v79 + 48);
  v57 = v81;
  OUTLINED_FUNCTION_86_3(v38 + v55, v81);
  v58 = a2 + v55;
  v59 = v57;
  OUTLINED_FUNCTION_86_3(v58, v57 + v56);
  v60 = OUTLINED_FUNCTION_602();
  v61 = Context;
  OUTLINED_FUNCTION_178(v60, v62, Context);
  if (v33)
  {
    OUTLINED_FUNCTION_178(v57 + v56, 1, v61);
    if (v33)
    {
      sub_1B8D9207C(v57, &qword_1EBABED48, &unk_1B966BBF0);
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v67 = v57;
  v68 = v77;
  sub_1B8DD9078(v67, v77, &qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_178(v59 + v56, 1, v61);
  if (v69)
  {
    sub_1B8F210B8();
LABEL_38:
    v34 = &qword_1EBABED60;
    v35 = &unk_1B966BC00;
LABEL_49:
    v36 = v59;
    goto LABEL_50;
  }

  v70 = v76;
  sub_1B8F21010();
  v71 = *v68 == *v70 && *(v68 + 8) == *(v70 + 8);
  if (!v71 && (sub_1B964C9F0() & 1) == 0 || *(v68 + 16) != *(v70 + 16))
  {
    sub_1B8F210B8();
    sub_1B8F210B8();
    v34 = &qword_1EBABED48;
    v35 = &unk_1B966BBF0;
    goto LABEL_49;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v72, v73, MEMORY[0x1E69AAC10]);
  v74 = sub_1B964C850();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v59, &qword_1EBABED48, &unk_1B966BBF0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_29:
  v63 = *v38 == *a2 && v38[1] == a2[1];
  if (!v63 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v64, v65, MEMORY[0x1E69AAC10]);
  v66 = sub_1B964C850();
  return v66 & 1;
}

uint64_t sub_1B8F2020C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE68, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F2028C(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDE0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F202FC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD23C0(&qword_1EBABEDE0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F203A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_80_1();
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_60_4();
  *(v6 + 16) = xmmword_1B964E4B0;
  v7 = a2 + v6;
  v8 = a2 + v6 + *(v3 + 56);
  *(a2 + v6) = 1;
  *v8 = "status";
  *(v8 + 1) = 6;
  v8[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_53_5(&v7[v5]);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_74_6(v13, "error");
  (v12)(v15, v9, v10);
  v16 = OUTLINED_FUNCTION_53_5(&v7[2 * v5]);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_74_6(v16, "trace_id");
  (v12)(v18, *MEMORY[0x1E69AADE8], v10);
  v19 = OUTLINED_FUNCTION_51_6();
  *v19 = "results";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v12();
  return sub_1B964C760();
}

uint64_t sub_1B8F205FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_44_5();
        a4(v8);
        break;
      case 2:
        OUTLINED_FUNCTION_44_5();
        sub_1B8F1EC50();
        break;
      case 3:
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_44_5();
        sub_1B8F206CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F206CC()
{
  OUTLINED_FUNCTION_147_1();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  OUTLINED_FUNCTION_25_8();
  sub_1B8CD23C0(v0, v1, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B8F20768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_77_3();
  v11 = type metadata accessor for Apple_Parsec_Search_Error(v10);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  if (!*v4 || (sub_1B8F2116C(), result = sub_1B964C680(), !v5))
  {
    v14 = a4(0);
    sub_1B8DD9078(v4 + *(v14 + 32), v6, &qword_1EBAB9188, &qword_1B964D970);
    if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B8F21010();
      OUTLINED_FUNCTION_26_10();
      sub_1B8CD23C0(v15, v16, protocol conformance descriptor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      result = sub_1B8F210B8();
      if (v5)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v17 || (result = sub_1B964C700(), !v5))
    {
      if (!*(v4[4] + 16))
      {
        return sub_1B964C290();
      }

      type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
      OUTLINED_FUNCTION_25_8();
      sub_1B8CD23C0(v18, v19, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);
      result = sub_1B964C730();
      if (!v5)
      {
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F20A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = OUTLINED_FUNCTION_280();
  v7 = type metadata accessor for Apple_Parsec_Search_Error(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = *v4;
  v21 = *v3;
  if (*(v3 + 8) != 1)
  {
    if (v20 != v21)
    {
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_11;
    }

LABEL_28:
    v31 = 0;
    return v31 & 1;
  }

  if (v21 != 1)
  {
    if (v20 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  if (v20 != 1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v34 = a3(0);
  v22 = *(v34 + 32);
  v23 = *(v16 + 48);
  sub_1B8DD9078(v4 + v22, v19, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v3 + v22, &v19[v23], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v19, 1, v7);
  if (v24)
  {
    OUTLINED_FUNCTION_178(&v19[v23], 1, v7);
    if (v24)
    {
      sub_1B8D9207C(v19, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v19, v15, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v19[v23], 1, v7);
  if (v24)
  {
    sub_1B8F210B8();
LABEL_19:
    sub_1B8D9207C(v19, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_28;
  }

  sub_1B8F21010();
  v25 = static Apple_Parsec_Search_Error.== infix(_:_:)(v15, v11);
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v19, &qword_1EBAB9188, &qword_1B964D970);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v26 = v4[2] == v3[2] && v4[3] == v3[3];
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B8D60FB8(v4[4], v3[4]);
  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  v30 = sub_1B8CD23C0(v28, v29, MEMORY[0x1E69AAC10]);
  v31 = OUTLINED_FUNCTION_634(v30);
  return v31 & 1;
}

uint64_t sub_1B8F20DC8()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD23C0(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F20EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE60, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F20F20(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDF8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F20F90(uint64_t a1, uint64_t a2)
{
  sub_1B8CD23C0(&qword_1EBABEDF8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F21010()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8F21064()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8F210B8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1B8F2116C()
{
  result = qword_1ED9CC388;
  if (!qword_1ED9CC388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_StatusCode, &type metadata for Apple_Parsec_Search_StatusCode, v0, v1);
    atomic_store(result, &qword_1ED9CC388);
  }

  return result;
}

uint64_t sub_1B8F21788(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8F21834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_22Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      OUTLINED_FUNCTION_128_1();
      if (*(v8 + 84) == v0)
      {
        v6 = v2[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
        v6 = v2[8];
      }
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_23Tm()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
      OUTLINED_FUNCTION_128_1();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
        OUTLINED_FUNCTION_128_1();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
          v8 = v5[8];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

void sub_1B8F21B88()
{
  v17 = MEMORY[0x1E69E6158];
  v0 = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    LOBYTE(v15) = 0;
    v18 = v0;
    sub_1B8F21834(319, &qword_1ED9D3810, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      HIBYTE(v15) = 0;
      v19 = v2;
      sub_1B8F21834(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v20 = v4;
        sub_1B8F21834(319, &qword_1EBABEE28, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_49_7(v6, v7, v8, v9, v10, v11, v12, v13, *v14, v14[2], 0, v15, 0, v16, v17, v18, v19, v20, v21);
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_31Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_32Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

void sub_1B8F21E54()
{
  LOBYTE(v13) = 0;
  v15 = MEMORY[0x1E69E6158];
  sub_1B8F21834(319, &qword_1ED9CF6D0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    HIBYTE(v13) = 0;
    v16 = v0;
    v2 = sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      v17 = v2;
      sub_1B8F21834(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9, v10, v11, *v12, v12[2], 0, v13, 0, v14, &type metadata for Apple_Parsec_Search_StatusCode, v15, v16, v17, v18);
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{
  v7 = *(a1 + 32);
  *(v3 + 40) = v7;

  return sub_1B8DD9078(v1 + v7, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, char a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

char *OUTLINED_FUNCTION_51_6()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_3@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = a2;
  *(v2 + 56) = 0;
  *(v2 + 64) = a2;
  *(v2 + 72) = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}