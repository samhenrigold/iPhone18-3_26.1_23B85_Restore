BOOL SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_120_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v11 + 88);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v11 + 64) = v14;
  OUTLINED_FUNCTION_0_104(v14, xmmword_42BF20);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  else
  {
    v15 = *(v11 + 16);
  }

  *(v14 + 48) = v15;
  OUTLINED_FUNCTION_104_3();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000014;
  *(v14 + 88) = v17;
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_89_4(v19);
  if (v12)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v21 = *(v11 + 56);
  *(v14 + 144) = v12;
  OUTLINED_FUNCTION_53_3();
  *(v14 + 168) = v22;
  *(v14 + 176) = v23;
  OUTLINED_FUNCTION_51_3();
  *(v14 + 184) = v24;
  *(v14 + 192) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 216) = v27;
  *(v14 + 224) = v26;
  *(v14 + 232) = 0xE700000000000000;
  outlined init with copy of PhoneCallNLIntent?(v28, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = type metadata accessor for SpeakableString();
  v30 = OUTLINED_FUNCTION_58(v29);
  v31 = *(v11 + 56);
  if (v30 == 1)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 240));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v32();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v33 = swift_task_alloc();
  *(v11 + 72) = v33;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v33 = v34;
  v33[1] = SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_2();

  return v40(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_161_0(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v21);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_56_13(v23);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[6] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_114_0(v24);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_161_0(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v21);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_56_13(v23);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v24 = swift_task_alloc();
  v10[6] = v24;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_161_0(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v21);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_56_13(v23);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[6] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_114_0(v24);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_161_0(v13);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v17 = v10[3];
  *(v11 + 48) = v16;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v21);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_56_13(v23);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v24 = swift_task_alloc();
  v10[6] = v24;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  *(v16 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_9_65(v16, 0x726F63655277656ELL);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v21;
  *v21 = v22;
  v21[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readVoiceMailHistoryIntroductionAsLabels(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_46_15(v15);
  *(v16 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_9_65(v16, 0x726F63655277656ELL);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  v20 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v20 = type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v20);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v21);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v22;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.repeatVoicemailPause()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.repeatVoicemailPauseAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_50(v10, v11, v12, v13, v14, a9);
  OUTLINED_FUNCTION_168_0(v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v19, v20, v21);
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 96);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186(v15);
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_0_104(v17, xmmword_431D00);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v18;
  *(v12 + 80) = v13 + 1;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v22 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v23 = OUTLINED_FUNCTION_24_36(v22);
  if (v14)
  {
    v23 = type metadata accessor for PhoneSearchCallHistoryIntent(v23);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v23);
  *(v12 + 240) = v24;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = &type metadata for Bool;
  *(v12 + 272) = v25;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_160_1();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_119_3();
  *(v12 + 320) = v13;
  *(v12 + 328) = v30;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v31;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_77_12(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_156_0(v33);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ShowCallHistoryIntroDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ShowCallHistoryIntroDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntroAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_50(v10, v11, v12, v13, v14, a9);
  OUTLINED_FUNCTION_168_0(v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v19, v20, v21);
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntroAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 96);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186(v15);
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_0_104(v17, xmmword_431D00);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v18;
  *(v12 + 80) = v13 + 1;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v22 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v23 = OUTLINED_FUNCTION_24_36(v22);
  if (v14)
  {
    v23 = type metadata accessor for PhoneSearchCallHistoryIntent(v23);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v23);
  *(v12 + 240) = v24;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = &type metadata for Bool;
  *(v12 + 272) = v25;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_160_1();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v29();
  }

  OUTLINED_FUNCTION_119_3();
  *(v12 + 320) = v13;
  *(v12 + 328) = v30;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v31;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v32);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v33;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v39(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedCallTypesAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedDateCreatedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(40);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedRecipientAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = *(v11 + 58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_161_0(v14);
  v16 = OUTLINED_FUNCTION_51(v15);
  v17 = OUTLINED_FUNCTION_27_33(v16, xmmword_42BF10);
  *(OUTLINED_FUNCTION_71_9(v17, &type metadata for Bool) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v18[21] = v19;
  v18[22] = 16;
  v18[23] = v20;
  v21 = 0;
  if (v10)
  {
    v21 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[25] = 0;
    v12[26] = 0;
  }

  v12[24] = v10;
  v12[27] = v21;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_39(v22);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParametersAsLabels(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParametersAsLabels(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = *(v11 + 58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_161_0(v14);
  v16 = OUTLINED_FUNCTION_51(v15);
  v17 = OUTLINED_FUNCTION_27_33(v16, xmmword_42BF10);
  *(OUTLINED_FUNCTION_71_9(v17, &type metadata for Bool) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v18[21] = v19;
  v18[22] = 16;
  v18[23] = v20;
  v21 = 0;
  if (v10)
  {
    v21 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[25] = 0;
    v12[26] = 0;
  }

  v12[24] = v10;
  v12[27] = v21;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v22);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v23;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v7 = OUTLINED_FUNCTION_73_9(v5, v6);
  if (v2)
  {
    v7 = type metadata accessor for PhoneSearchCallHistoryIntent(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_117(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_30(v9);
  OUTLINED_FUNCTION_43_4(35);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::UnsupportedUnseenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::UnsupportedUnseenDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseenAsLabels(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseenAsLabels(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  *(OUTLINED_FUNCTION_51(v4) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v7 = OUTLINED_FUNCTION_73_9(v5, v6);
  if (v2)
  {
    v7 = type metadata accessor for PhoneSearchCallHistoryIntent(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v7);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v8);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v9;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(35);
  OUTLINED_FUNCTION_65_1();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.visualCatText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t SearchCallHistoryCATsSimple.VisualCatTextDialogIds.rawValue.getter(char a1)
{
  result = 28494;
  switch(a1)
  {
    case 1:
      result = 0x73746E65636552;
      break;
    case 2:
      result = 0x69616D6563696F56;
      break;
    case 3:
      result = 7562585;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.VisualCatTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.visualCatTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_75_6();
  v13 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(v0 + 24) = v5;
  *(v5 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v5) + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000020;
  *(v6 + 88) = v8;
  *(v6 + 120) = v7;
  *(v6 + 96) = v2;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v9;
  *v9 = v10;
  v9[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);

  return v12(0xD000000000000031, 0x8000000000454440, v5);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReadingAsLabels(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReadingAsLabels(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  *(v0 + 24) = v4;
  *(v4 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v4) + 48) = v2;
  OUTLINED_FUNCTION_39_0();
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000020;
  *(v5 + 88) = v7;
  *(v5 + 120) = v6;
  *(v5 + 96) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v8);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v9;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_65_1();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v4 = OUTLINED_FUNCTION_3_98(v3);
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_135_1(v6);
  v7 = OUTLINED_FUNCTION_34_21(48);

  return v8(v7);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToFollowUpActionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToFollowUpActionDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpActionAsLabels(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpActionAsLabels(isLastPage:)()
{
  OUTLINED_FUNCTION_75_6();
  v13 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  v6 = OUTLINED_FUNCTION_3_98(v5);
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v5;
  *(v5 + 16) = v7;
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v8);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v9;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v10 = OUTLINED_FUNCTION_97_4(48);

  return v11(v10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailPromptToPlayAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(39);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_75_6();
  v18 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 58);
  v4 = *(v1 + 57);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = OUTLINED_FUNCTION_138_3(v6);
  v8 = OUTLINED_FUNCTION_22_30(v7, xmmword_426980);
  v9 = OUTLINED_FUNCTION_85_6(v8, &type metadata for Bool);
  *(v9 + 96) = v4;
  OUTLINED_FUNCTION_39_24(v9, v10);
  if (v3)
  {
    OUTLINED_FUNCTION_160_0();
    v0[19] = 0;
    v0[20] = 0;
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = &type metadata for Double;
  }

  v0[18] = v11;
  v0[21] = v12;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_117(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_39(v14);

  return v17(0xD000000000000036, 0x8000000000454480, v0);
}

BOOL SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecordsAsLabels(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecordsAsLabels(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 58);
  v3 = *(v0 + 57);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v0 + 32) = v5;
  v6 = OUTLINED_FUNCTION_22_30(v5, xmmword_426980);
  v7 = OUTLINED_FUNCTION_85_6(v6, &type metadata for Bool);
  *(v7 + 96) = v3;
  OUTLINED_FUNCTION_39_24(v7, v8);
  if (v2)
  {
    OUTLINED_FUNCTION_160_0();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = &type metadata for Double;
  }

  v5[9].n128_u64[0] = v9;
  v5[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v11);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v3 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_145_0();
  v13 = OUTLINED_FUNCTION_97_4(54);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return SearchCallHistoryCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t SearchCallHistoryCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  outlined init with copy of PhoneCallNLIntent?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t SearchCallHistoryCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t SearchCallHistoryCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SearchCallHistoryCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
  if (!type metadata singleton initialization cache for SearchCallHistoryCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
        break;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_73_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_85_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v2;
  *(result + 72) = a2;
  strcpy((result + 80), "isLastWindow");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_4@<X0>(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x746E65746E69;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_120_3(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 90) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a5;
  *(v8 + 89) = a4;
  *(v8 + 88) = a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_2@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[2].n128_u64[0] = v3 + 3;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_127_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of PhoneCallNLIntent?(a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_144_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(result + 40) = 0xEC000000776F646ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[15] = result;
  v3[16] = v4;
  v3[17] = (a2 - 32) | 0x8000000000000000;
  v3[18] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_171_0@<X0>(uint64_t a1@<X8>)
{
  v2[15] = v1;
  v2[16] = a1;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_182_0(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(v10 + 56) = a7;
  *(v10 + 64) = v9;
  *(v10 + 98) = a9;
  *(v10 + 97) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 96) = a2;
  *(v10 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_183_0(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = result;
  *(v6 + 24) = a3;
  return result;
}

uint64_t SearchCallHistoryHandleFlowStrategy.__allocating_init(sharedGlobals:searchCallHistoryCATsSimple:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_21();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_5();
  SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(v4, a2);
  return v2;
}

uint64_t SearchCallHistoryFlow.__allocating_init(delegate:rchFlow:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  *(v7 - v6) = a2;
  swift_storeEnumTagMultiPayload();

  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)();
  v9 = (*(v2 + 144))(v8, a1, v11);

  return v9;
}

void SearchCallHistoryFlow.__allocating_init(delegate:input:app:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48);
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, v4, v12);
  *(v10 + v11) = v2;
  swift_storeEnumTagMultiPayload();

  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)();
  (*(v0 + 144))(v10, v6, &v14);
  OUTLINED_FUNCTION_5();

  (*(v13 + 8))(v4, v12);
  OUTLINED_FUNCTION_65();
}

uint64_t key path setter for SearchCallHistoryFlow.state : SearchCallHistoryFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchCallHistoryFlow.State(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  swift_beginAccess();
  outlined assign with take of SearchCallHistoryFlow.State(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t SearchCallHistoryFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  swift_beginAccess();
  return outlined init with copy of SearchCallHistoryFlow.State(v1 + v3, a1);
}

void SearchCallHistoryFlow.__allocating_init(intent:intentResponse:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = (v12 - v11);
  *v13 = v9;
  v13[1] = v7;
  v13[2] = v5;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v3, v18);
  v14 = type metadata accessor for SearchCallHistoryRCHFlowDelegate(0);
  OUTLINED_FUNCTION_41_1(v14);
  v15 = v9;
  v16 = v7;

  v17 = SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v18);
  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)();
  (*(v1 + 144))(v13, v17, v18);

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.__allocating_init(state:delegate:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:)(a1, a2, a3);
  return v6;
}

uint64_t SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
  *v7 = type metadata accessor for SearchCallHistoryFlow(0);
  v7[1] = &outlined read-only object #0 of SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:);
  v7[2] = 0;
  v7[3] = 0;
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_delegate) = a2;
  outlined init with copy of SignalProviding(a2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
  memcpy((v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals), a3, 0xC8uLL);
  outlined init with take of SearchCallHistoryFlow.State(a1, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
  return v3;
}

uint64_t SearchCallHistoryFlow.on(input:)(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  (*(*v1 + 120))();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = dispatch thunk of AnyValueFlow.on(input:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    OUTLINED_FUNCTION_5();

    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v10 = OUTLINED_FUNCTION_14_2();
      v20 = v10;
      *v2 = 136315138;
      v11 = OUTLINED_FUNCTION_5_5(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      v19 = v12;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v11, v13, v14, v15);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v19, &v20);
      OUTLINED_FUNCTION_17_21();

      *(v2 + 4) = v1;
      OUTLINED_FUNCTION_11_58(&dword_0, v16, v17, "%s: Flow is not in a state that will expect input.");
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    outlined destroy of SearchCallHistoryFlow.State(v6);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t SearchCallHistoryFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  OUTLINED_FUNCTION_36_4();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in SearchCallHistoryFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = type metadata accessor for ExecuteResponse();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (*(*a6 + 168) + **(*a6 + 168));
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = closure #1 in SearchCallHistoryFlow.execute(completion:);

  return v12(v9);
}

uint64_t closure #1 in SearchCallHistoryFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  (*(v0 + 16))(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_55();
  v2(v1);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t SearchCallHistoryFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for Input();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v1[33] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[34] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  v20 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v17 = v6;
    v18 = 0;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_5_5(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
    v19 = v8;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v7, v9, v10, v11);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "%s needsDialog failed for RF", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_26_0(v5);
  }

  v13 = v0[36];
  v14 = v0[35];
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();

  return v15();
}

void SearchCallHistoryFlow.execute()()
{
  v148 = v0;
  v2 = (*(v0 + 216) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
  v3 = v2[4];
  v4 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = OUTLINED_FUNCTION_5();
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v8 = OUTLINED_FUNCTION_43_3();
  v10 = DeviceState.isAuthenticatedForPhone.getter(v8, v9);
  v11 = __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (v10)
  {
    (*(**(v0 + 216) + 120))(v11);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v88 = *(v0 + 216);
        v89 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v89, static Logger.siriPhone);

        v90 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_126())
        {
          v91 = *(v0 + 216);
          OUTLINED_FUNCTION_42();
          v147 = OUTLINED_FUNCTION_24_37();
          *v88 = 136315138;
          OUTLINED_FUNCTION_5_5(v91 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
          OUTLINED_FUNCTION_43_28();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v92, v93, v94, v95);
          v104 = OUTLINED_FUNCTION_36_28(v96, v97, v98, v99, v100, v101, v102, v103, v133, v134, v135, v138, v140, v141, v142, v143, v145, v146);

          *(v88 + 4) = v104;
          OUTLINED_FUNCTION_12_58(&dword_0, v105, v106, "%s state:checkUnsupportedParameters, offer confirmation flow");
          OUTLINED_FUNCTION_15_50();
          OUTLINED_FUNCTION_5_7();
        }

        v107 = v2[3];
        v108 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v107);
        v109 = *(v108 + 16);

        v109(v107, v108);
        v110 = *(v0 + 40);
        v111 = *(v0 + 56);
        v112 = __swift_project_boxed_opaque_existential_1((v0 + 16), v110);
        *(v0 + 128) = v110;
        *(v0 + 136) = v111;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
        (*(*(v110 - 8) + 16))(boxed_opaque_existential_1, v112, v110);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
        OUTLINED_FUNCTION_41_1(v114);
        type metadata accessor for UnsupportedSearchParametersFlowStrategy();
        lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy, 255, type metadata accessor for UnsupportedSearchParametersFlowStrategy, &protocol conformance descriptor for UnsupportedSearchParametersFlowStrategy);
        v115 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        *(v0 + 184) = v115;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_26;
      case 2u:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v66 = *(v0 + 216);
        v67 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v67, static Logger.siriPhone);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = *(v0 + 216);
          OUTLINED_FUNCTION_42();
          v71 = OUTLINED_FUNCTION_14_2();
          v147 = v71;
          *v66 = 136315138;
          OUTLINED_FUNCTION_5_5(v70 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
          OUTLINED_FUNCTION_43_28();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v72, v73, v74, v75);
          OUTLINED_FUNCTION_36_28(v76, v77, v78, v79, v80, v81, v82, v83, v133, v134, v135, v138, v140, v141, v142, v143, v145, v146);
          OUTLINED_FUNCTION_35_12();

          *(v66 + 4) = v1;
          _os_log_impl(&dword_0, v68, v69, "%s state: needsExecution", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_14_0();
        }

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_26:

        break;
      case 3u:
        v84 = *(v0 + 272);
        *(v0 + 280) = *v84;
        *(v0 + 288) = v84[1];
        *(v0 + 296) = v84[2];
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 304) = v85;
        *v85 = v86;
        v85[1] = SearchCallHistoryFlow.execute();
        OUTLINED_FUNCTION_42_5();

        SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:)();
        return;
      case 4u:
        v46 = **(v0 + 272);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);

        swift_errorRetain();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = *(v0 + 216);
          v51 = OUTLINED_FUNCTION_86_1();
          v147 = OUTLINED_FUNCTION_16_13();
          *v51 = 136315394;
          OUTLINED_FUNCTION_5_5(v50 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
          OUTLINED_FUNCTION_43_28();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v52, v53, v54, v55);
          OUTLINED_FUNCTION_36_28(v56, v57, v58, v59, v60, v61, v62, v63, v133, v134, v135, v138, v140, v141, v142, v143, v145, v146);
          OUTLINED_FUNCTION_35_12();

          *(v51 + 4) = v1;
          *(v51 + 12) = 2080;
          *(v0 + 200) = v46;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v64 = String.init<A>(describing:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v147);
          OUTLINED_FUNCTION_35_12();

          *(v51 + 14) = v1;
          _os_log_impl(&dword_0, v48, v49, "%s SearchCallHistoryIntent RCH Failed with error: %s", v51, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_14_0();
        }

        static ExecuteResponse.complete()();

        break;
      case 5u:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v116 = *(v0 + 216);
        v117 = type metadata accessor for Logger();
        __swift_project_value_buffer(v117, static Logger.siriPhone);
        OUTLINED_FUNCTION_43_28();
        _StringGuts.grow(_:)(78);
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v116 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix), *(v116 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 8), *(v116 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 16), *(v116 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 24));
        v118._object = 0x80000000004610C0;
        v118._countAndFlagsBits = 0xD00000000000004CLL;
        String.append(_:)(v118);
        swift_bridgeObjectRetain_n();
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = OUTLINED_FUNCTION_42();
          v122 = OUTLINED_FUNCTION_36();
          v147 = v122;
          *v121 = 136315138;
          *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, &v147);
          _os_log_impl(&dword_0, v119, v120, "%s", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v122);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_26_0(v121);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)();
        _assertionFailure(_:_:file:line:flags:)();
        OUTLINED_FUNCTION_42_5();
        return;
      case 6u:
        static ExecuteResponse.complete()();
        break;
      default:
        v12 = *(v0 + 272);
        v13 = *(v0 + 256);
        v15 = *(v0 + 224);
        v14 = *(v0 + 232);
        v144 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48));
        (*(v14 + 32))(v13, v12, v15);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v17 = *(v0 + 248);
        v16 = *(v0 + 256);
        v18 = *(v0 + 224);
        v19 = *(v0 + 232);
        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriPhone);
        v21 = *(v19 + 16);
        v21(v17, v16, v18);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v23))
        {
          HIDWORD(v138) = v23;
          v24 = *(v0 + 216);
          v25 = OUTLINED_FUNCTION_86_1();
          v136 = OUTLINED_FUNCTION_16_13();
          v147 = v136;
          *v25 = 136315394;
          OUTLINED_FUNCTION_5_5(v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
          OUTLINED_FUNCTION_43_28();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v26, v27, v28, v29);
          OUTLINED_FUNCTION_36_28(v30, v31, v32, v33, v34, v35, v36, v37, v133, v134, v136, v138, v140, v141, v142, v144, v145, v146);
          OUTLINED_FUNCTION_17_21();

          *(v25 + 4) = v21;
          *(v25 + 12) = 2080;
          OUTLINED_FUNCTION_18_32();
          lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(v38, 255, v39, &protocol conformance descriptor for Input);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v41 = OUTLINED_FUNCTION_35_24();
          v42(v41);
          v43 = OUTLINED_FUNCTION_43_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v45);
          OUTLINED_FUNCTION_5();

          *(v25 + 14) = v40;
          _os_log_impl(&dword_0, v22, v139, "%s Converting input: %s to INSearchCallHistoryIntent.", v25, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v137);
          OUTLINED_FUNCTION_5_7();
        }

        else
        {

          v123 = OUTLINED_FUNCTION_35_24();
          v124(v123);
        }

        v125 = *(v0 + 256);
        v126 = *(v0 + 240);
        v128 = *(v0 + 216);
        v127 = *(v0 + 224);
        v21(v126, v125, v127);
        outlined init with copy of SignalProviding(v2, v0 + 144);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMR);
        OUTLINED_FUNCTION_41_1(v129);
        *(v0 + 192) = specialized IntentConversionFlow.init(input:app:sharedGlobals:)(v126, v144, (v0 + 144));
        v130 = swift_allocObject();
        *(v130 + 16) = partial apply for implicit closure #6 in implicit closure #5 in SearchCallHistoryFlow.execute();
        *(v130 + 24) = v128;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IntentConversionFlow<INSearchCallHistoryIntent> and conformance IntentConversionFlow<A>, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMR, &protocol conformance descriptor for IntentConversionFlow<A>);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        v142(v125, v127);
        break;
    }
  }

  else
  {
    SearchCallHistoryFlow.pushUnlockFlow()();
  }

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_42_5();

  __asm { BRAA            X1, X16 }
}

void SearchCallHistoryFlow.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v140 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v137 = v129 - v6;
  v7 = type metadata accessor for CATOption();
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v141 = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v15 = OUTLINED_FUNCTION_65_18();
  v16 = type metadata accessor for SearchCallHistoryFlow.State(v15);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_12_5();
  v144 = (v18 - v19);
  __chkstk_darwin(v20);
  v22 = v129 - v21;
  v23 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_45_19();
  v32 = *(v31 + 120);
  v142 = v0;
  v138 = v31 + 120;
  v139 = v32;
  v32();
  v143 = v16;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of SearchCallHistoryFlow.State(v22);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
    v34 = v142;

    v35 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    v36 = OUTLINED_FUNCTION_126();
    v37 = v144;
    if (v36)
    {
      v38 = OUTLINED_FUNCTION_86_1();
      v145[0] = OUTLINED_FUNCTION_16_13();
      *v38 = 136315394;
      v39 = OUTLINED_FUNCTION_5_5(v34 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      OUTLINED_FUNCTION_92_2(v39, v40, v41, v42, v43);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_17_21();

      *(v38 + 4) = v1;
      *(v38 + 12) = 2080;
      v139(v44);
      v45 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v145);
      OUTLINED_FUNCTION_17_21();

      *(v38 + 14) = v1;
      _os_log_impl(&dword_0, v35, v2, "%s Unexpected state, stopping: %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_26_0(v38);
    }

    swift_storeEnumTagMultiPayload();
    v99 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_17_3(v34 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, &v148);
    v100 = v34 + v99;
    v101 = v37;
  }

  else
  {
    v135 = v11;
    v138 = v2;
    v139 = v12;
    v47 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48)];
    (*(v25 + 32))(v1, v22, v23);
    v48 = v1;
    if (v140)
    {
      v133 = v23;
      v49 = one-time initialization token for siriPhone;
      v50 = v140;
      if (v49 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v132 = v50;
      v136 = v48;
      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);
      v52 = v142;

      v129[1] = v49;
      v53 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      v54 = OUTLINED_FUNCTION_31_13();
      v140 = v47;
      v134 = v25;
      if (v54)
      {
        OUTLINED_FUNCTION_42();
        v55 = OUTLINED_FUNCTION_14_2();
        v145[0] = v55;
        *v2 = 136315138;
        v56 = OUTLINED_FUNCTION_5_5(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
        OUTLINED_FUNCTION_92_2(v56, v57, v58, v59, v60);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_35_12();

        *(v2 + 4) = v16;
        OUTLINED_FUNCTION_11_58(&dword_0, v61, v62, "%s adding INSearchCallHistoryIntent which only generates dialogs using Response Framework");
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_26_0(v55);
        OUTLINED_FUNCTION_14_0();
      }

      v63 = *(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_delegate);
      outlined init with copy of SignalProviding(v63 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v148);
      v64 = v150;
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v65 = OUTLINED_FUNCTION_5();
      v66(v65, v64);
      v67 = v146;
      v68 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v69 = *(v68 + 56);
      v70 = type metadata accessor for SearchCallHistoryRCHFlowDelegate(0);
      v131 = v70;
      v130 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for SearchCallHistoryRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
      v71 = v138;
      v69(v63, v70, v130, v67, v68);
      __swift_destroy_boxed_opaque_existential_1(v145);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      v72 = (v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
      outlined init with copy of SignalProviding(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals, &v148);
      type metadata accessor for SearchCallHistoryCATsSimple(0);
      static CATOption.defaultMode.getter();
      v73 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for SearchCallHistoryHandleFlowStrategy();
      v74 = swift_allocObject();
      SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(&v148, v73);
      *&v148 = v74;
      lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy, v75, type metadata accessor for SearchCallHistoryHandleFlowStrategy, &protocol conformance descriptor for SearchCallHistoryHandleFlowStrategy);
      static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
      v76 = v139;
      RCHChildFlowProducers.handleIntentFlowCompletion.setter();
      v77 = v72[4];
      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      v78 = OUTLINED_FUNCTION_5();
      v79(v78, v77);
      v80 = v150;
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v81 = v141;
      v82 = v137;
      (*(v141 + 16))(v137, v71, v76);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v76);
      v83 = v63;
      v84 = v140;
      v85 = v132;
      v86 = (*(v80 + 40))(v83, v140);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      v87 = v136;
      SearchCallHistoryFlow.getUnsupportedSearchParametersFlowStrategy(app:input:intent:)();
      if (v88)
      {
        v137 = v88;
        v89 = v86;

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v90, v91))
        {
          OUTLINED_FUNCTION_42();
          v92 = v85;
          v93 = OUTLINED_FUNCTION_24_37();
          v145[0] = v93;
          *v84 = 136315138;
          v94 = OUTLINED_FUNCTION_5_5(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
          OUTLINED_FUNCTION_92_2(v94, v95, v96, v97, v98);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_35_12();

          *(v84 + 4) = v87;
          _os_log_impl(&dword_0, v90, v91, "%s unsupported search parameters are found, set state as checkUnsupportedParameters", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_26_0(v93);
          OUTLINED_FUNCTION_5_7();

          (*(v141 + 8))(v138, v139);
          (*(v134 + 8))(v136, v133);
        }

        else
        {

          (*(v141 + 8))(v138, v139);
          (*(v134 + 8))(v87, v133);
        }

        v109 = v144;
        v125 = v137;
        *v144 = v89;
        v109[1] = v125;
      }

      else
      {

        (*(v81 + 8))(v71, v76);
        (*(v134 + 8))(v87, v133);
        v109 = v144;
        *v144 = v86;
      }

      swift_storeEnumTagMultiPayload();
      v126 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, &v148);
      v100 = v52 + v126;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v102, static Logger.siriPhone);
      v103 = v29;
      (*(v25 + 16))(v29, v1, v23);
      v104 = v142;

      v105 = Logger.logObject.getter();
      v106 = v23;
      v107 = static os_log_type_t.error.getter();

      v108 = os_log_type_enabled(v105, v107);
      v109 = v144;
      if (v108)
      {
        v110 = OUTLINED_FUNCTION_86_1();
        v136 = v48;
        v111 = v110;
        v141 = OUTLINED_FUNCTION_16_13();
        v145[0] = v141;
        *v111 = 136315394;
        v112 = OUTLINED_FUNCTION_5_5(v104 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
        OUTLINED_FUNCTION_92_2(v112, v113, v114, v115, v116);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_17_21();

        *(v111 + 4) = v109;
        *(v111 + 12) = 2080;
        OUTLINED_FUNCTION_18_32();
        lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(v117, 255, v118, &protocol conformance descriptor for Input);
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v140 = v47;
        v120 = *(v25 + 8);
        v120(v103, v106);
        v121 = OUTLINED_FUNCTION_43_3();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v123);
        OUTLINED_FUNCTION_5();
        v109 = v144;

        *(v111 + 14) = v119;
        _os_log_impl(&dword_0, v105, v107, "%s Could not convert Input: %s to Intent, stopping", v111, 0x16u);
        v124 = v141;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v124);
        OUTLINED_FUNCTION_26_0(v111);

        v120(v136, v106);
      }

      else
      {

        v127 = *(v25 + 8);
        v127(v103, v106);
        v127(v48, v106);
      }

      swift_storeEnumTagMultiPayload();
      v128 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3(v104 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, &v148);
      v100 = v104 + v128;
    }

    v101 = v109;
  }

  outlined assign with take of SearchCallHistoryFlow.State(v101, v100);
  swift_endAccess();
  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryFlow.onCompleteProcessUnsupportedParameter(_:)()
{
  OUTLINED_FUNCTION_66();
  v118 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_65_18();
  type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v114 = v7;
  v115 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_12_5();
  v113 = v8 - v9;
  __chkstk_darwin(v10);
  v112 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  OUTLINED_FUNCTION_7();
  v14 = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v110 - v16;
  v18 = type metadata accessor for SimpleConfirmationResponseProvider();
  OUTLINED_FUNCTION_7();
  v116 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v117 = v22 - v21;
  v23 = type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_12_5();
  v119 = (v25 - v26);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_45_19();
  v29 = *(v28 + 120);
  v120 = v0;
  v29();
  v121 = v23;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of SearchCallHistoryFlow.State(v1);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);
    v41 = v120;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v119;
    if (v44)
    {
      v46 = OUTLINED_FUNCTION_86_1();
      v47 = OUTLINED_FUNCTION_16_13();
      v122 = v47;
      v123 = 0;
      *v46 = 136315394;
      v48 = OUTLINED_FUNCTION_5_5(v41 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      OUTLINED_FUNCTION_72_11(v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v46 + 4) = v1;
      *(v46 + 12) = 2080;
      (v29)(v53);
      v54 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v122);
      OUTLINED_FUNCTION_17_21();

      *(v46 + 14) = v1;
      _os_log_impl(&dword_0, v42, v43, "%s Unexpected state, stopping: %s", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v47);
      OUTLINED_FUNCTION_14_0();
    }

    swift_storeEnumTagMultiPayload();
    v72 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30(v41 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
    v70 = v41 + v72;
    v71 = v45;
    goto LABEL_16;
  }

  v30 = *v1;

  (*(v14 + 16))(v17, v118, v12);
  v31 = OUTLINED_FUNCTION_30_23();
  if (v32(v31) != enum case for PromptResult.answered<A>(_:))
  {
    v56 = OUTLINED_FUNCTION_30_23();
    v57(v56);
    goto LABEL_10;
  }

  v33 = OUTLINED_FUNCTION_30_23();
  v34(v33);
  v36 = v116;
  v35 = v117;
  v37 = v18;
  (*(v116 + 32))(v117, v17, v18);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v38 = v115;
  if (__swift_getEnumTagSinglePayload(v2, 1, v115) == 1)
  {
    v39 = *(v36 + 8);
    v1 = (v36 + 8);
    v39(v35, v18);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_10:
    v59 = v119;
    v58 = v120;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v60, static Logger.siriPhone);

    v61 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_42();
      v122 = OUTLINED_FUNCTION_24_37();
      v123 = 0;
      *v17 = 136315138;
      v62 = OUTLINED_FUNCTION_5_5(v58 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      OUTLINED_FUNCTION_72_11(v62, v63, v64, v65, v66);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v17 + 4) = v1;
      OUTLINED_FUNCTION_12_58(&dword_0, v67, v68, "%s Did not receive .answered from child confirmation flow");
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_5_7();
    }

    swift_storeEnumTagMultiPayload();
    v69 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30(v58 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
    v70 = v58 + v69;
    v71 = v59;
    goto LABEL_16;
  }

  v118 = v30;
  v73 = v114;
  v74 = v112;
  (*(v114 + 32))(v112, v2, v38);
  v75 = v113;
  (*(v73 + 16))(v113, v74, v38);
  v76 = (*(v73 + 88))(v75, v38);
  v77 = v119;
  if (v76 == enum case for ConfirmationResponse.confirmed(_:))
  {
    v78 = OUTLINED_FUNCTION_64_15();
    v79(v78);
    (*(v36 + 8))(v35, v37);
    *v77 = v118;
    swift_storeEnumTagMultiPayload();
    v80 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    v81 = v120;
    OUTLINED_FUNCTION_29_30(v120 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
    v70 = v81 + v80;
LABEL_31:
    v71 = v77;
LABEL_16:
    outlined assign with take of SearchCallHistoryFlow.State(v71, v70);
    swift_endAccess();
    goto LABEL_17;
  }

  v82 = v120;
  if (v76 == enum case for ConfirmationResponse.rejected(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v83, static Logger.siriPhone);

    v84 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_42();
      v85 = OUTLINED_FUNCTION_24_37();
      v111 = v37;
      v122 = v85;
      v123 = 0;
      *v73 = 136315138;
      v86 = OUTLINED_FUNCTION_5_5(v82 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      OUTLINED_FUNCTION_72_11(v86, v87, v88, v89, v90);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v73 + 4) = v36;
      OUTLINED_FUNCTION_12_58(&dword_0, v91, v92, "%s user want to cancel the search");
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_5_7();

      (*(v114 + 8))(v112, v38);
      (*(v36 + 8))(v117, v111);
    }

    else
    {

      v105 = OUTLINED_FUNCTION_64_15();
      v106(v105);
      (*(v36 + 8))(v117, v37);
    }

    swift_storeEnumTagMultiPayload();
    v107 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30(v82 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
    v70 = v82 + v107;
    goto LABEL_31;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v93, static Logger.siriPhone);

  v94 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_71_10();
  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_42();
    v95 = OUTLINED_FUNCTION_24_37();
    v111 = v37;
    v122 = v95;
    v123 = 0;
    *v73 = 136315138;
    v96 = OUTLINED_FUNCTION_5_5(v82 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
    OUTLINED_FUNCTION_72_11(v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_39_25();
    OUTLINED_FUNCTION_17_21();

    *(v73 + 4) = v36;
    OUTLINED_FUNCTION_12_58(&dword_0, v101, v102, "%s Received an unknown ConfirmationResponse");
    OUTLINED_FUNCTION_15_50();
    OUTLINED_FUNCTION_5_7();

    v103 = *(v114 + 8);
    v104 = OUTLINED_FUNCTION_64_15();
    v103(v104);
    (*(v116 + 8))(v117, v111);
  }

  else
  {

    v103 = *(v73 + 8);
    v108 = OUTLINED_FUNCTION_64_15();
    v103(v108);
    (*(v116 + 8))(v117, v37);
  }

  swift_storeEnumTagMultiPayload();
  v109 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_29_30(v82 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
  outlined assign with take of SearchCallHistoryFlow.State(v77, v82 + v109);
  swift_endAccess();
  (v103)(v113, v38);
LABEL_17:
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.pushUnlockFlow()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  OUTLINED_FUNCTION_5();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v5 = OUTLINED_FUNCTION_14_2();
    v19 = v5;
    v20 = 0;
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_5_5(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
    v21 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v19);
    OUTLINED_FUNCTION_35_12();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_11_58(&dword_0, v11, v12, "%s Device is locked. Prompting user to unlock before continuing.");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  v13 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals), *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 24));
  v14 = OUTLINED_FUNCTION_5();
  v15(v14, v13);
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v16 = OUTLINED_FUNCTION_43_3();
  SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v16, v17);
  static ExecuteResponse.ongoing<A>(next:)();

  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t SearchCallHistoryFlow.onChildCompletion(flowResult:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SearchCallHistoryFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  OUTLINED_FUNCTION_49_0();
  v12 = __chkstk_darwin(v11);
  v14 = (&v31[-1] - v13);
  (*(v10 + 16))(&v31[-1] - v13, a1, v8, v12);
  v15 = (*(v10 + 88))(v14, v8);
  if (v15 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v10 + 96))(v14, v8);
    v16 = *v14;
    v17 = v14[1];
    v18 = v14[2];
    if ([v18 code] == &dword_4 + 3)
    {
      *v7 = v17;
      v7[1] = v18;
      v7[2] = v16;
      OUTLINED_FUNCTION_43_3();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, v31);
      outlined assign with take of SearchCallHistoryFlow.State(v7, v2 + v19);
      return swift_endAccess();
    }

    goto LABEL_8;
  }

  if (v15 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    (*(v10 + 96))(v14, v8);
    *v7 = *v14;
    OUTLINED_FUNCTION_43_3();
    goto LABEL_9;
  }

  if (v15 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
LABEL_8:
    OUTLINED_FUNCTION_43_3();
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 8), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 16), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 24));
  v22._object = 0x8000000000461110;
  v22._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v22);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_42();
    v26 = OUTLINED_FUNCTION_36();
    v31[0] = v26;
    *v25 = 136315138;
    v27 = OUTLINED_FUNCTION_55();
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);
    _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_26_0(v25);
  }

  OUTLINED_FUNCTION_55();
  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_15();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v1[52] = v5;
  v6 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v1[57] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[58] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v65 = v0;
  v1 = *(v0 + 448);
  v2 = [*(v0 + 424) callTypes];
  v3 = v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals;
  if ((v2 & 0x10) != 0)
  {
    v36 = *(v0 + 432);
    v35 = *(v0 + 440);
    v37 = *(v0 + 424);
    outlined init with copy of SignalProviding(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals, v0 + 296);
    default argument 4 of ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)();
    v38 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_41_1(v38);
    v64[3] = v38;
    v64[4] = &protocol witness table for ResponseFactory;
    v64[0] = ResponseFactory.init()();
    VoicemailResultSetFlowProvider = type metadata accessor for ReadVoicemailResultSetFlowProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_5();

    ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(v35, v37, v36, (v0 + 296), &v62, v64);
    *(v0 + 472) = v39;
    v40 = v39;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 448);
      v45 = OUTLINED_FUNCTION_42();
      v46 = OUTLINED_FUNCTION_36();
      v64[0] = v46;
      *v45 = 136315138;
      v47 = OUTLINED_FUNCTION_5_5(v44 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      v62 = 0;
      v63 = v48;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v49, v50, v51);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);

      *(v45 + 4) = v52;
      OUTLINED_FUNCTION_69_13(&dword_0, v53, v54, "%s makeResultSetFlow for playing voicemails");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_26_0(v46);
      OUTLINED_FUNCTION_26_0(v45);
    }

    v55 = *(v3 + 32);
    v56 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v58 = OUTLINED_FUNCTION_5();
    v59(v58, v55);
    v30 = *(v0 + 360);
    v31 = *(v0 + 368);
    OUTLINED_FUNCTION_7_0((v0 + 336));
    *(v0 + 408) = v40;
    v60 = swift_task_alloc();
    *(v0 + 480) = v60;
    v33 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type ReadVoicemailResultSetFlowProvider and conformance ReadVoicemailResultSetFlowProvider, 255, type metadata accessor for ReadVoicemailResultSetFlowProvider, &protocol conformance descriptor for ReadVoicemailResultSetFlowProvider);
    *v60 = v0;
    v60[1] = SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:);
    v34 = v0 + 408;
  }

  else
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    v6 = *(v0 + 424);
    v7 = *(v0 + 432);
    outlined init with copy of SignalProviding(v3, v0 + 216);
    outlined init with copy of SearchCallHistorySharedGlobals(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals, v0 + 16);
    VoicemailResultSetFlowProvider = type metadata accessor for ReadCallHistoryResultSetFlowProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_17_21();

    v9 = ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(v4, v6, v7, (v0 + 216), v0 + 16);
    *(v0 + 504) = v9;
    v10 = v9;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 448);
      v15 = OUTLINED_FUNCTION_42();
      v16 = OUTLINED_FUNCTION_36();
      v64[0] = v16;
      *v15 = 136315138;
      v17 = OUTLINED_FUNCTION_5_5(v14 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
      v62 = 0;
      v63 = v18;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v19, v20, v21);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v63, v64);

      *(v15 + 4) = v22;
      OUTLINED_FUNCTION_69_13(&dword_0, v23, v24, "%s makeResultSetFlow for reading call history");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_26_0(v16);
      OUTLINED_FUNCTION_26_0(v15);
    }

    v25 = *(v3 + 32);
    v26 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = OUTLINED_FUNCTION_5();
    v29(v28, v25);
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    OUTLINED_FUNCTION_7_0((v0 + 256));
    *(v0 + 400) = v10;
    v32 = swift_task_alloc();
    *(v0 + 512) = v32;
    v33 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type ReadCallHistoryResultSetFlowProvider and conformance ReadCallHistoryResultSetFlowProvider, 255, type metadata accessor for ReadCallHistoryResultSetFlowProvider, &protocol conformance descriptor for ReadCallHistoryResultSetFlowProvider);
    *v32 = v0;
    v32[1] = SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:);
    v34 = v0 + 400;
  }

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v34, VoicemailResultSetFlowProvider, v33, v30, v31);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 488) = v0;

  if (!v0)
  {
    *(v5 + 496) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_23_0();

  __swift_destroy_boxed_opaque_existential_1((v1 + 336));
  OUTLINED_FUNCTION_48_23();
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_17_3(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, v1 + 376);
  outlined assign with take of SearchCallHistoryFlow.State(v0, v2 + v3);
  swift_endAccess();
  static ExecuteResponse.ongoing(next:)();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 520) = v0;

  if (!v0)
  {
    *(v5 + 528) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_23_0();

  __swift_destroy_boxed_opaque_existential_1((v1 + 256));
  OUTLINED_FUNCTION_48_23();
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_17_3(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state, v1 + 376);
  outlined assign with take of SearchCallHistoryFlow.State(v0, v2 + v3);
  swift_endAccess();
  static ExecuteResponse.ongoing(next:)();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();

  __swift_destroy_boxed_opaque_existential_1((v0 + 336));

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  OUTLINED_FUNCTION_11();

  return v1();
}

void SearchCallHistoryFlow.getUnsupportedSearchParametersFlowStrategy(app:input:intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v5 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v72 = v0;
  v12 = v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals;
  v13 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 24);
  v14 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 32);
  v15 = OUTLINED_FUNCTION_30_23();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = (*(v14 + 72))(v13, v14);
  Input.parse.getter();
  (*(*v17 + 192))(&v73, v11);

  (*(v7 + 8))(v11, v5);
  v18 = &type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
  if (v74)
  {
    outlined init with take of SPHConversation(&v73, v76);
    INSearchCallHistoryIntent.contacts.getter();
    if (v19)
    {
      v20 = v19;
      if (specialized Array.count.getter(v19))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = OUTLINED_FUNCTION_35_12();
        v23 = specialized Array.count.getter(v22);

        if (v23 >= 2)
        {
          v71 = v2;
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.siriPhone);
          OUTLINED_FUNCTION_5();

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = OUTLINED_FUNCTION_42();
            v28 = OUTLINED_FUNCTION_36();
            v75[0] = v28;
            *v27 = 136315138;
            v29 = OUTLINED_FUNCTION_5_5(v72 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
            *&v73 = 0;
            *(&v73 + 1) = v30;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v29, v31, v32, v33);
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, *(&v73 + 1), v75);

            *(v27 + 4) = v34;
            _os_log_impl(&dword_0, v25, v26, "%s don't support more than one contact", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            OUTLINED_FUNCTION_26_0(v28);
            v35 = v27;
            v18 = &type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
            OUTLINED_FUNCTION_26_0(v35);
          }

          v36 = 0;
          v2 = v71;
          goto LABEL_20;
        }

LABEL_19:
        v36 = 1;
LABEL_20:
        __swift_project_boxed_opaque_existential_1(v76, v77);
        OUTLINED_FUNCTION_41_4();
        v47 = PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter()();
        if (v36 && v47)
        {
          __swift_project_boxed_opaque_existential_1(v76, v77);
          v48 = OUTLINED_FUNCTION_46_24();
          v50 = v49(v48);
          if (v50)
          {
            v51 = *(v50 + 16);
            v52 = (v50 + 32);
            while (2)
            {
              v53 = v51-- != 0;
              if (v53)
              {
                switch(*v52)
                {
                  case 1:
                  case 5:
                  case 6:
                  case 0xA:
                  case 0xB:
                  case 0xD:
                    goto LABEL_33;
                  case 2:
                  case 4:
                    OUTLINED_FUNCTION_61_1();
                    goto LABEL_33;
                  case 3:
                    OUTLINED_FUNCTION_4_7();
                    goto LABEL_33;
                  case 7:
                    OUTLINED_FUNCTION_6_59();
                    goto LABEL_33;
                  case 8:
                    OUTLINED_FUNCTION_9_52();
                    goto LABEL_33;
                  case 9:
                    OUTLINED_FUNCTION_5_64();
                    goto LABEL_33;
                  case 0xC:
                    OUTLINED_FUNCTION_8_9();
LABEL_33:
                    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    ++v52;
                    if (v54)
                    {
                      break;
                    }

                    continue;
                  default:

                    goto LABEL_34;
                }
              }

              break;
            }

LABEL_34:
          }

          __swift_project_boxed_opaque_existential_1(v76, v77);
          v65 = OUTLINED_FUNCTION_46_24();
          v67 = v66(v65);
          if (v67)
          {
            v68 = *(v67 + 16);
            v69 = (v67 + 32);
            while (2)
            {
              v53 = v68-- != 0;
              if (v53)
              {
                switch(*v69)
                {
                  case 2:
                  case 4:
                    OUTLINED_FUNCTION_61_1();
                    goto LABEL_51;
                  case 3:
                    OUTLINED_FUNCTION_4_7();
                    goto LABEL_51;
                  case 6:

                    break;
                  case 7:
                    OUTLINED_FUNCTION_6_59();
                    goto LABEL_51;
                  case 8:
                    OUTLINED_FUNCTION_9_52();
                    goto LABEL_51;
                  case 9:
                    OUTLINED_FUNCTION_5_64();
                    goto LABEL_51;
                  case 0xC:
                    OUTLINED_FUNCTION_8_9();
                    goto LABEL_51;
                  default:
LABEL_51:
                    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    ++v69;
                    if (v70)
                    {
                      break;
                    }

                    continue;
                }
              }

              break;
            }
          }

          __swift_project_boxed_opaque_existential_1(v76, v77);
          OUTLINED_FUNCTION_41_4();
          PhoneCallNLIntent.isPlayVoiceMail()();
          outlined init with copy of SignalProviding(v12, v75);
          outlined init with copy of SearchCallHistorySharedGlobals(v72 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals, &v73);
          type metadata accessor for SearchCallHistoryCATsSimple(0);
          static CATOption.defaultMode.getter();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedSearchParametersFlowStrategy();
          swift_allocObject();
          UnsupportedSearchParametersFlowStrategy.init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:)();

          __swift_destroy_boxed_opaque_existential_1(v76);
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          __swift_project_value_buffer(v55, static Logger.siriPhone);
          OUTLINED_FUNCTION_5();

          v56 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();

          if (OUTLINED_FUNCTION_126())
          {
            OUTLINED_FUNCTION_42();
            v57 = OUTLINED_FUNCTION_24_37();
            v75[0] = v57;
            *v12 = 136315138;
            v58 = OUTLINED_FUNCTION_5_5(v72 + v18[11]);
            *&v73 = 0;
            *(&v73 + 1) = v59;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v58, v60, v61, v62);
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, *(&v73 + 1), v75);
            OUTLINED_FUNCTION_17_21();

            *(v12 + 4) = v72;
            OUTLINED_FUNCTION_12_58(&dword_0, v63, v64, "%s can't find unsupported search parameters skip offering unsupported search parameters flow");
            __swift_destroy_boxed_opaque_existential_1(v57);
            OUTLINED_FUNCTION_26_0(v57);
            OUTLINED_FUNCTION_5_7();
          }

          __swift_destroy_boxed_opaque_existential_1(v76);
        }

        goto LABEL_54;
      }
    }

    v2 = 0;
    goto LABEL_19;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v73, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);

  v38 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v39 = OUTLINED_FUNCTION_14_2();
    v76[0] = v39;
    dword_54B000 = 136315138;
    v40 = OUTLINED_FUNCTION_5_5(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
    *&v73 = 0;
    *(&v73 + 1) = v41;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v42, v43, v44);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, *(&v73 + 1), v76);
    OUTLINED_FUNCTION_17_21();

    *algn_54B004 = v0;
    OUTLINED_FUNCTION_11_58(&dword_0, v45, v46, "%s can't transform nlIntent, skip offering unsupported search parameters flow");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

LABEL_54:
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.deinit()
{
  outlined destroy of SearchCallHistoryFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals);

  return v0;
}

uint64_t SearchCallHistoryFlow.__deallocating_deinit()
{
  SearchCallHistoryFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance SearchCallHistoryFlow(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SearchCallHistoryFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchCallHistoryFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

void *SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(__int128 *a1, uint64_t a2)
{
  v2[8] = type metadata accessor for SearchCallHistoryHandleFlowStrategy();
  v2[9] = &outlined read-only object #0 of SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:);
  v2[10] = 0;
  v2[11] = 0;
  outlined init with take of SPHConversation(a1, (v2 + 2));
  v2[7] = a2;
  return v2;
}

uint64_t outlined init with copy of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchCallHistoryHandleFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_14_2();
    v16[0] = 0;
    *v5 = 136315138;
    v10 = *(v4 + 64);
    v9 = *(v4 + 72);
    v16[1] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v9, 0xD000000000000037, 0x8000000000461130);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16[0], 0xE000000000000000, &v15);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_11_58(&dword_0, v12, v13, "%s This should not provide any output.");
    OUTLINED_FUNCTION_15_50();
    OUTLINED_FUNCTION_14_0();
  }

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v17 = 0;
  a4(v16);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

void SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v40 = v0;
  if (v18)
  {
    OUTLINED_FUNCTION_42();
    v39 = v4;
    v19 = OUTLINED_FUNCTION_14_2();
    v37 = v19;
    v38 = v8;
    *v4 = 136315138;
    v20 = v6;
    v21 = v14;
    v22 = v10;
    v23 = v2;
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v41 = 0;
    v42 = 0xE000000000000000;
    v43 = v19;

    v26 = v25;
    v2 = v23;
    v10 = v22;
    v14 = v21;
    v6 = v20;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v26, v24, 0xD00000000000003FLL, 0x8000000000461170);

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);

    *(v4 + 4) = v27;
    _os_log_impl(&dword_0, v16, v17, "%s This should not provide output.", v4, 0xCu);
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v8 = v38;
    OUTLINED_FUNCTION_26_0(v28);
    v29 = v4;
    v4 = v39;
    OUTLINED_FUNCTION_26_0(v29);
  }

  v30 = [v6 code];
  if ((v30 - 3) < 2)
  {
    v31 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_67_14(v31);
    OUTLINED_FUNCTION_36_4();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v40;
    v32[5] = v4;
    v32[6] = v2;

    v33 = &async function pointer to partial apply for closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
LABEL_9:
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v14, v33, v32);

    goto LABEL_10;
  }

  if (v30 == &dword_4 + 1)
  {
    v34 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_67_14(v34);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v40;
    v32[5] = v10;
    v32[6] = v8;
    v32[7] = v4;
    v32[8] = v2;

    v35 = v8;

    v33 = &async function pointer to partial apply for closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[28] = a4;
  v9 = type metadata accessor for Locale();
  v8[33] = v9;
  v8[34] = *(v9 - 8);
  v8[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8[36] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();

  return _swift_task_switch(closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:), 0, 0);
}

uint64_t closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[34];
  v3 = v1[35];
  v15 = v1[33];
  v16 = v1[30];
  v5 = v1[28];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_68_12();
  v7 = v5[6];
  v6 = v5[7];
  v8 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
  (*(v7 + 8))(v8, v7);
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v9 = type metadata accessor for AppInfoBuilder();
  v10 = swift_allocObject();
  v1[16] = v9;
  v1[17] = &protocol witness table for AppInfoBuilder;
  v1[13] = v10;
  App.toSpeakableStringAppName(forLocale:appInfoBuilder:)(v3, v1 + 13, v2);
  (*(v4 + 8))(v3, v15);
  __swift_destroy_boxed_opaque_existential_1(v1 + 13);
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v11 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v16);
  v1[41] = v11;
  v17 = (*(*v6 + class metadata base offset for SearchCallHistoryCATsSimple + 112) + **(*v6 + class metadata base offset for SearchCallHistoryCATsSimple + 112));
  v12 = swift_task_alloc();
  v1[42] = v12;
  *v12 = v1;
  v12[1] = closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  v13 = v1[36];

  return v17(v13, v11);
}

uint64_t closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 344) = v0;

  v7 = *(v4 + 288);
  if (!v0)
  {
    *(v5 + 352) = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[44];
  __swift_project_boxed_opaque_existential_1((v0[28] + 16), *(v0[28] + 40));
  v2 = OUTLINED_FUNCTION_55();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v0[45] = v4;
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[46] = v6;
  *v6 = v7;
  v6[1] = closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  OUTLINED_FUNCTION_7_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  outlined init with copy of SignalProviding(v0 + 144, v0 + 16);
  *(v0 + 56) = 0;
  v2(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  (*(v0[39] + 8))(v0[40], v0[38]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  type metadata accessor for DialogPhase();
  v6[21] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();

  return _swift_task_switch(closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:), 0, 0);
}

uint64_t closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 144);
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_68_12();
  v4 = (**(v1 + 56) + class metadata base offset for SearchCallHistoryCATsSimple + 96);
  v5 = (*v4 + **v4);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[27];
  __swift_project_boxed_opaque_existential_1((v0[18] + 16), *(v0[18] + 40));
  v2 = OUTLINED_FUNCTION_55();
  v3(v2);
  OUTLINED_FUNCTION_7_0(v0 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v6;
  *v6 = v7;
  v6[1] = closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  OUTLINED_FUNCTION_7_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  outlined init with copy of SignalProviding(v0 + 64, v0 + 16);
  *(v0 + 56) = 0;
  v2(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[23] + 8))(v0[24], v0[22]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t SearchCallHistoryHandleFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t SearchCallHistoryHandleFlowStrategy.__deallocating_deinit()
{
  SearchCallHistoryHandleFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t outlined init with take of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SearchCallHistoryFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_42_24();
  v2 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_76(v3);

  return closure #1 in SearchCallHistoryFlow.execute(completion:)(v5, v6, v7, v8, v9, v2);
}

uint64_t outlined assign with take of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_42_24();
  v2 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_76(v3);

  return closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v5, v6, v7, v8, v9, v2);
}

uint64_t partial apply for closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_42_24();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_76(v5);

  return closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v7, v8, v9, v10, v11, v2, v3, v4);
}

uint64_t type metadata completion function for SearchCallHistoryFlow(uint64_t a1)
{
  result = type metadata accessor for SearchCallHistoryFlow.State(319);
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

void type metadata completion function for SearchCallHistoryFlow.State(uint64_t a1)
{
  type metadata accessor for (Input, App)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Error();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (Input, App)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Input, App))
  {
    type metadata accessor for Input();
    type metadata accessor for App();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Input, App));
    }
  }
}

void type metadata accessor for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGGMR);
    type metadata accessor for UnsupportedSearchParametersFlowStrategy();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy));
    }
  }
}

void type metadata accessor for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)()
{
  if (!lazy cache variable for type metadata for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>))
  {
    type metadata accessor for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>));
    }
  }
}

void type metadata accessor for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
    v1 = type metadata accessor for AnyValueFlow();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>);
    }
  }
}

void type metadata accessor for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App))
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSearchCallHistoryIntentResponse, INSearchCallHistoryIntentResponse_ptr);
    type metadata accessor for App();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App));
    }
  }
}

uint64_t lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_29_30(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_36_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, ...)
{
  va_start(va, a18);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a17, a18, va);
}

unint64_t OUTLINED_FUNCTION_39_25()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_50_25()
{
}

void OUTLINED_FUNCTION_72_11(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 96) = a5;

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

void *static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  result = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
  if (result)
  {
    INSearchCallHistoryIntentResponse.newRecordsCount.getter();
    if (v5)
    {
      return 0;
    }

    else
    {
      return (([a3 callTypes] & 8) == 0);
    }
  }

  return result;
}

uint64_t specialized PhoneCallRecordProperties<>.isVideo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, &v20 - v3);
  v5 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = SpeakableString.print.getter();
    v7 = v8;
    OUTLINED_FUNCTION_40();
    (*(v9 + 8))(v4, v5);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v11 = @"VIDEO_CALL";
    goto LABEL_8;
  }

  if (BackingType == 1)
  {
    v11 = @"AUDIO_CALL";
LABEL_8:
    v12 = v11;
    goto LABEL_10;
  }

  v11 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
LABEL_10:
  v13 = v11;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v7)
  {
    if (v6 == v14 && v7 == v16)
    {
      v18 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 537) = v1;
  *(v0 + 536) = v2;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 256) = v5;
  *(v0 + 264) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  *(v0 + 288) = OUTLINED_FUNCTION_62_4();
  *(v0 + 296) = swift_task_alloc();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_5();
  *(v0 + 328) = v8;
  *(v0 + 336) = swift_task_alloc();
  v9 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_21(v9);
  *(v0 + 344) = OUTLINED_FUNCTION_62_4();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v10 = type metadata accessor for CommonDirectAction(0);
  *(v0 + 368) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v0 + 376) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[47];
  v3 = v0[34];
  v2 = v0[35];
  swift_storeEnumTagMultiPayload();
  v4 = v2[3];
  v0[48] = v4;
  v5 = v2[4];
  v0[49] = v5;
  v0[50] = __swift_project_boxed_opaque_existential_1(v2, v4);
  v0[51] = *(v5 + 8);
  v0[52] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0xD386000000000000;
  v6 = OUTLINED_FUNCTION_7_1();
  v7(v6);
  v0[53] = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v1, v8);
  v0[54] = *(v3 + 192);
  OUTLINED_FUNCTION_24_5();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[55] = v10;
  *v10 = v0;
  v10[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);

  return v12();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 448) = v0;

  if (v0)
  {
    v9 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    *(v5 + 456) = v3;
    v9 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 537);
  v2 = *(v0 + 536);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;
  *(v0 + 240) = v3;
  *(v0 + 248) = v4;

  *(v0 + 464) = v5;
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 384);
  if (v1 != 1 || (v2 & 1) != 0)
  {
    v6(v8, v7);
    v14 = swift_task_alloc();
    *(v0 + 488) = v14;
    *v14 = v0;
    v14[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);
    v17 = *(v0 + 344);

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v17, v15, v16, v0 + 56);
  }

  else
  {
    v6(v8, v7);
    v9 = swift_task_alloc();
    *(v0 + 472) = v9;
    *v9 = v0;
    v9[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v12 = *(v0 + 352);

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v12, v10, v11, v0 + 176);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 480) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 176));
  if (v0)
  {

    v7 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    v7 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_19_36(*(v1 + 352), *(v1 + 360));
  if (*(*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds) + 16))
  {
    OUTLINED_FUNCTION_23_32();
    v2 = _swiftEmptyArrayStorage;
    do
    {
      v3 = OUTLINED_FUNCTION_37_26();
      v4(v3);
      SpeakableString.print.getter();
      v5 = OUTLINED_FUNCTION_11_59();
      v6(v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v9;
      }

      v7 = v2[3];
      if (v2[2] >= v7 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v7);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v10;
      }

      OUTLINED_FUNCTION_35_25();
    }

    while (!v8);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  *(v1 + 504) = v2;
  v11 = *(v1 + 312);
  specialized Collection.first.getter(*(*(v1 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames));
  OUTLINED_FUNCTION_18_33();
  if (v8)
  {
    outlined destroy of SpeakableString?(*(v1 + 312), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = *(v1 + 312);
    SpeakableString.print.getter();
    v13 = OUTLINED_FUNCTION_50_26();
    v14(v13);
  }

  *(v1 + 520) = v11;
  *(v1 + 512) = v12;
  __swift_project_boxed_opaque_existential_1(*(v1 + 280), *(*(v1 + 280) + 24));
  v15 = OUTLINED_FUNCTION_33_22();
  v16(v15);
  v17 = swift_task_alloc();
  *(v1 + 528) = v17;
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_9_66(v17);

  return static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 496) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  if (v0)
  {

    v7 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    v7 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_19_36(*(v1 + 344), *(v1 + 360));
  if (*(*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds) + 16))
  {
    OUTLINED_FUNCTION_23_32();
    v2 = _swiftEmptyArrayStorage;
    do
    {
      v3 = OUTLINED_FUNCTION_37_26();
      v4(v3);
      SpeakableString.print.getter();
      v5 = OUTLINED_FUNCTION_11_59();
      v6(v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v9;
      }

      v7 = v2[3];
      if (v2[2] >= v7 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v7);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v10;
      }

      OUTLINED_FUNCTION_35_25();
    }

    while (!v8);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  *(v1 + 504) = v2;
  v11 = *(v1 + 312);
  specialized Collection.first.getter(*(*(v1 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames));
  OUTLINED_FUNCTION_18_33();
  if (v8)
  {
    outlined destroy of SpeakableString?(*(v1 + 312), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = *(v1 + 312);
    SpeakableString.print.getter();
    v13 = OUTLINED_FUNCTION_50_26();
    v14(v13);
  }

  *(v1 + 520) = v11;
  *(v1 + 512) = v12;
  __swift_project_boxed_opaque_existential_1(*(v1 + 280), *(*(v1 + 280) + 24));
  v15 = OUTLINED_FUNCTION_33_22();
  v16(v15);
  v17 = swift_task_alloc();
  *(v1 + 528) = v17;
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_9_66(v17);

  return static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  v1[27] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  outlined init with copy of SpeakableString?(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, *(v0 + 304));
  OUTLINED_FUNCTION_18_33();
  if (v1)
  {
    outlined destroy of SpeakableString?(*(v0 + 304), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v39 = 0xE000000000000000;
    v40 = 0;
  }

  else
  {
    v2 = SpeakableString.print.getter();
    v39 = v3;
    v40 = v2;
    v4 = OUTLINED_FUNCTION_0();
    v5(v4);
  }

  if (!*(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated))
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 296);
  dispatch thunk of DialogCalendar.dateTimeDescriptive.getter();
  if (OUTLINED_FUNCTION_60_16(v6) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 296), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_7:
    v37 = 0xE000000000000000;
    v38 = 0;
    goto LABEL_9;
  }

  v7 = SpeakableString.print.getter();
  v37 = v8;
  v38 = v7;
  v9 = OUTLINED_FUNCTION_0();
  v10(v9);
LABEL_9:
  outlined init with copy of SpeakableString?(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration, *(v0 + 288));
  OUTLINED_FUNCTION_18_33();
  if (v1)
  {
    outlined destroy of SpeakableString?(*(v0 + 288), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v34 = 0xE000000000000000;
    v35 = 0;
  }

  else
  {
    v11 = SpeakableString.print.getter();
    v34 = v12;
    v35 = v11;
    v13 = OUTLINED_FUNCTION_0();
    v14(v13);
  }

  v33 = *(v0 + 224);
  v15 = *(v0 + 512);
  v32 = *(v0 + 464);
  v30 = *(v0 + 520);
  v31 = *(v0 + 240);
  v36 = *(v0 + 504);
  v16 = *(v0 + 408);
  v18 = *(v0 + 384);
  v17 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 360);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
  if (*(v22 + 8))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *v22;
  }

  swift_storeEnumTagMultiPayload();
  v16(v18, v17);
  v24 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v19, v25);
  v26 = type metadata accessor for SingleResultVoicemailModel(0);
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v20, v21 + *(v26 + 60));
  *v21 = 0xD000000000000015;
  *(v21 + 8) = 0x8000000000456D30;
  *(v21 + 16) = v15;
  *(v21 + 24) = v30;
  *(v21 + 32) = v40;
  *(v21 + 40) = v39;
  *(v21 + 48) = v38;
  *(v21 + 56) = v37;
  *(v21 + 64) = v35;
  *(v21 + 72) = v34;
  *(v21 + 80) = v23;
  *(v21 + 96) = v33;
  *(v21 + 112) = v31;
  *(v21 + 120) = v32;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v27 = v24;
  CodableAceObject.init(wrappedValue:)();
  *(v21 + 88) = v36;
  CodableAceObject.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v20, type metadata accessor for SearchCallHistoryBinaryButtonModel);

  OUTLINED_FUNCTION_8_1();

  return v28();
}

uint64_t static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(unint64_t a1)
{
  type metadata accessor for SingleCallRecordModel(0);
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v19;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = a1 & 0xC000000000000001;
    v10 = a1;
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v17)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 8 * v8 + 32);
      }

      v18 = v12;
      closure #1 in static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(&v18, v6);

      v19 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
        v9 = v19;
      }

      v9[2] = v14 + 1;
      outlined init with take of SearchCallHistoryBinaryButtonModel(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for SingleCallRecordModel);
      ++v8;
      a1 = v10;
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

id @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData:isa];

  return v5;
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  v4[199] = type metadata accessor for CommonDirectAction(0);
  v4[205] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_33_7(v0 + 16, v1, v2, &async function pointer to partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v3, v0 + 1336);

  OUTLINED_FUNCTION_33_7(v0 + 656, v4, v5, &async function pointer to partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v6, v0 + 1352);
  v7 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_get_throwing(v7, v8, v9, v0 + 1296);
}

{
  OUTLINED_FUNCTION_15();
  v1[211] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 176);
  }

  else
  {
    v1[217] = v1[169];
    v1[218] = v1[170];

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 167, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 188);
  }
}

{
  *(v1 + 1752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_25_34();
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v1);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v2, v4);
  v5 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_28_27((v0 + *(v5 + 32)));
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, SABaseClientBoundCommand_ptr);
  v6 = v3;
  CodableAceObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_46_25();
  OUTLINED_FUNCTION_57_23();
  OUTLINED_FUNCTION_7_40();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v7, v8, v9, v10);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1552);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_16_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_15_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_14_54(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  v4[199] = type metadata accessor for CommonDirectAction(0);
  v4[205] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_33_7(v0 + 16, v1, v2, &async function pointer to partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v3, v0 + 1336);

  OUTLINED_FUNCTION_33_7(v0 + 656, v4, v5, &async function pointer to partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v6, v0 + 1352);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1336, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v0 + 1296);
}

{
  OUTLINED_FUNCTION_15();
  v1[211] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 176);
  }

  else
  {
    v1[217] = v1[167];
    v1[218] = v1[168];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 188);
  }
}

{
  *(v1 + 1752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_25_34();
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v1);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v2, v4);
  v5 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_28_27((v0 + *(v5 + 32)));
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, SABaseClientBoundCommand_ptr);
  v6 = v3;
  CodableAceObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_46_25();
  OUTLINED_FUNCTION_57_23();
  OUTLINED_FUNCTION_7_40();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v7, v8, v9, v10);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_8_1();

  return v0();
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1552);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_16_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_15_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_14_54(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_77_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[9];
  v28 = v24[2];
  v29 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier;
  outlined init with copy of SpeakableString?(&v28[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier], v27);
  v30 = type metadata accessor for SpeakableString();
  v31 = OUTLINED_FUNCTION_60_16(v27);
  v32 = v24[9];
  if (v31 == 1)
  {
    outlined destroy of SpeakableString?(v24[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v33 = SpeakableString.print.getter();
    v34 = v35;
    OUTLINED_FUNCTION_40();
    (*(v36 + 8))(v32, v30);
  }

  v24[10] = v33;
  v24[11] = v34;
  v38 = v24[4];
  v37 = v24[5];
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v38, 1, v37) == 1)
  {
    v39 = v24[4];

    outlined destroy of SpeakableString?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.siriPhone);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      a10 = v28;
      v44 = swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_16_13();
      a11 = a9;
      *v44 = 136315394;
      if (one-time initialization token for logPrefix != -1)
      {
        OUTLINED_FUNCTION_2_103(&one-time initialization token for logPrefix);
      }

      v45 = v24[8];
      OUTLINED_FUNCTION_114();
      a12 = 0;
      a13 = v46;

      OUTLINED_FUNCTION_55_23(v47, v48, v49, v41 | 0x8000000000000000);

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, &a11);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      outlined init with copy of SpeakableString?(&a10[v29], v45);
      v51 = OUTLINED_FUNCTION_60_16(v45);
      v52 = v24[8];
      if (v51 == 1)
      {
        outlined destroy of SpeakableString?(v24[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v53 = 0;
        v54 = 0xE000000000000000;
      }

      else
      {
        v53 = SpeakableString.print.getter();
        v54 = v75;
        OUTLINED_FUNCTION_40();
        (*(v76 + 8))(v52, v30);
      }

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &a11);

      *(v44 + 14) = v77;
      _os_log_impl(&dword_0, v42, v43, "%s Expected UUID vmIdentifier: %s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_26_0(v44);
    }

    OUTLINED_FUNCTION_52_20();
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v56 = v24[6];
    v55 = v24[7];
    v57 = v24[5];
    v58 = v24[3];
    (*(v56 + 32))(v55, v24[4], v57);
    v59 = *(v58 + 32);
    v60 = OUTLINED_FUNCTION_0();
    __swift_project_boxed_opaque_existential_1(v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v62 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v63 = swift_allocObject();
    v24[12] = v63;
    *(v63 + 16) = xmmword_424FD0;
    (*(v56 + 16))(v63 + v62, v55, v57);
    a9 = v59 + 8;
    OUTLINED_FUNCTION_24_5();
    a10 = v64 + *v64;
    v65 = swift_task_alloc();
    v24[13] = v65;
    *v65 = v24;
    v65[1] = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
    OUTLINED_FUNCTION_31_0();
  }

  return v69(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
  }

  else
  {

    v6 = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v44 = v0;
  v1 = specialized Array.count.getter(v0[14]);
  v2 = v0[14];
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if (v3)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v0[14] + 32);
    }

    Message.getTranscriptString()();
    if (!v5)
    {
      v33 = OUTLINED_FUNCTION_41_32();
      v34(v33);

      goto LABEL_22;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    v7 = __swift_project_value_buffer(v6, static Logger.siriPhone);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_21;
    }

    v10 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_16_13();
    *v10 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103(&one-time initialization token for logPrefix);
    }

    v12 = v0[10];
    v11 = v0[11];
    OUTLINED_FUNCTION_114();
    v42 = 0;
    v43 = v13;

    OUTLINED_FUNCTION_56_14(v14, v15, v16, v7 | 0x8000000000000000);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v43, &v41);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v41);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v40 = v19;
    _os_log_impl(&dword_0, v8, v9, "%s Error fetching voicemail transcript for: %s, error: %@", v10, 0x20u);
    outlined destroy of SpeakableString?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_1_8();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0(v10);
  }

  else
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    v21 = __swift_project_value_buffer(v20, static Logger.siriPhone);

    v8 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v22))
    {

      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_16_13();
    v41 = v24;
    *v23 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103(&one-time initialization token for logPrefix);
    }

    v26 = v0[10];
    v25 = v0[11];
    OUTLINED_FUNCTION_114();
    v42 = 0;
    v43 = v27;

    OUTLINED_FUNCTION_55_23(v28, v29, v30, v21 | 0x8000000000000000);

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v43, &v41);

    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v41);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_0, v8, v22, "%s MessageStore can't find any message for: %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v24);
    OUTLINED_FUNCTION_26_0(v23);
  }

LABEL_21:
  v35 = OUTLINED_FUNCTION_41_32();
  v36(v35);
LABEL_22:

  v37 = OUTLINED_FUNCTION_0();

  return v38(v37);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_77_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.siriPhone);

  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_16_13();
    a11 = a10;
    *v31 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103(&one-time initialization token for logPrefix);
    }

    v33 = v24[10];
    v32 = v24[11];
    OUTLINED_FUNCTION_114();
    a12 = 0;
    a13 = v34;

    OUTLINED_FUNCTION_56_14(v35, v36, v37, v28 | 0x8000000000000000);

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, &a11);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &a11);

    *(v31 + 14) = v39;
    *(v31 + 22) = 2112;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v40;
    *a9 = v40;
    _os_log_impl(&dword_0, v29, v30, "%s Error fetching voicemail transcript for: %s, error: %@", v31, 0x20u);
    outlined destroy of SpeakableString?(a9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_1_8();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0(v31);
  }

  else
  {
  }

  v41 = OUTLINED_FUNCTION_41_32();
  v42(v41);

  OUTLINED_FUNCTION_52_20();
  OUTLINED_FUNCTION_31_0();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

void closure #1 in static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v88 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v75 - v10;
  __chkstk_darwin(v11);
  v80 = &v75 - v12;
  __chkstk_darwin(v13);
  v79 = &v75 - v14;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = *a1;
  v84 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of SpeakableString?(v21 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v22 = v21;
    SpeakableString.print.getter();
    (*(v4 + 8))(v20, v3);
    v23 = Data.init(base64Encoded:options:)();
    if (v24 >> 60 == 15)
    {
    }

    else
    {
      v25 = v23;
      v26 = v24;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      outlined copy of Data._Representation(v25, v26);
      v27 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v25, v26);
      if (!v27)
      {
        __break(1u);
        goto LABEL_38;
      }

      v28 = v27;

      outlined consume of Data?(v25, v26);

      v84 = v28;
    }

    v21 = v22;
  }

  v29 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of SpeakableString?(v21 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v3);
  v78 = v8;
  v83 = v29;
  if (EnumTagSinglePayload != 1)
  {
    v31 = v21;
    SpeakableString.print.getter();
    (*(v4 + 8))(v17, v3);
    v32 = Data.init(base64Encoded:options:)();
    if (v33 >> 60 == 15)
    {

LABEL_14:
      v21 = v31;
      goto LABEL_15;
    }

    v34 = v32;
    v35 = v33;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
    outlined copy of Data._Representation(v34, v35);
    v36 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v34, v35);
    if (v36)
    {
      v37 = v36;

      outlined consume of Data?(v34, v35);

      v83 = v37;
      goto LABEL_14;
    }

LABEL_38:
    __break(1u);
    return;
  }

  outlined destroy of SpeakableString?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_15:
  v76 = v21;
  v77 = v4;
  v38 = *(v21 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = *(v4 + 16);
    v41 = v38 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v85 = *(v4 + 72);
    v86 = v40;
    v42 = (v4 + 8);
    v43 = _swiftEmptyArrayStorage;
    v87 = v3;
    do
    {
      v44 = v88;
      v86(v88, v41, v3);
      v45 = SpeakableString.print.getter();
      v47 = v46;
      (*v42)(v44, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v50;
      }

      v48 = v43[2];
      if (v48 >= v43[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v51;
      }

      v43[2] = v48 + 1;
      v49 = &v43[2 * v48];
      v49[4] = v45;
      v49[5] = v47;
      v41 += v85;
      --v39;
      v3 = v87;
    }

    while (v39);
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v52 = v76;
  v53 = v79;
  outlined init with copy of SpeakableString?(v76 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName, v79);
  if (__swift_getEnumTagSinglePayload(v53, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v53, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v88 = 0;
    v87 = 0xE000000000000000;
    v54 = v77;
  }

  else
  {
    v88 = SpeakableString.print.getter();
    v87 = v55;
    v54 = v77;
    (*(v77 + 8))(v53, v3);
  }

  v56 = v78;
  v57 = v80;
  outlined init with copy of SpeakableString?(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, v80);
  if (__swift_getEnumTagSinglePayload(v57, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v57, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v85 = 0xE000000000000000;
    v86 = 0;
  }

  else
  {
    v58 = SpeakableString.print.getter();
    v85 = v59;
    v86 = v58;
    (*(v54 + 8))(v57, v3);
  }

  v60 = v81;
  outlined init with copy of SpeakableString?(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime, v81);
  if (__swift_getEnumTagSinglePayload(v60, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v61 = 0;
    v62 = 0xE000000000000000;
  }

  else
  {
    v63 = v60;
    v61 = SpeakableString.print.getter();
    v62 = v64;
    (*(v54 + 8))(v63, v3);
  }

  outlined init with copy of SpeakableString?(v52 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType, v56);
  if (__swift_getEnumTagSinglePayload(v56, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v65 = SpeakableString.print.getter();
    v67 = v3;
    v66 = v68;
    (*(v54 + 8))(v56, v67);
  }

  v69 = specialized PhoneCallRecordProperties<>.isVideo.getter();
  v70 = v82;
  *v82 = 0xD000000000000010;
  v70[1] = 0x8000000000456CF0;
  v72 = v86;
  v71 = v87;
  v70[2] = v88;
  v70[3] = v71;
  v73 = v85;
  v70[4] = v72;
  v70[5] = v73;
  v70[6] = v61;
  v70[7] = v62;
  type metadata accessor for SingleCallRecordModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v74 = v84;
  CodableAceObject.init(wrappedValue:)();
  v70[9] = v66;
  v70[10] = v43;
  v70[8] = v65;
  CodableAceObject.init(wrappedValue:)();

  *(v70 + 88) = v69 & 1;
}

uint64_t static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[10] = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_5();
  v0[11] = v5;
  v0[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v0[13] = OUTLINED_FUNCTION_62_4();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v0[16] = OUTLINED_FUNCTION_62_4();
  v0[17] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  else
  {
    v7 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  outlined init with take of SearchCallHistoryBinaryButtonModel?(v2, v1);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_12_59(v4);

  return static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 176) = v0;

  if (v0)
  {
    v9 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  else
  {
    v9 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();
  outlined destroy of SpeakableString?(*(v0 + 136), &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);

  OUTLINED_FUNCTION_11();

  return v1();
}

id static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    v2 = v0[15];
    outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction, v2);
    v3 = OUTLINED_FUNCTION_60_16(v2);
    v4 = v0[15];
    if (v3 == 1)
    {
      outlined destroy of SpeakableString?(v0[15], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v10 = v0[10];
      v11 = v0[11];
      SpeakableString.print.getter();
      (*(v11 + 8))(v4, v10);
      v12 = Data.init(base64Encoded:options:)();
      if (v13 >> 60 != 15)
      {
        v14 = v12;
        v15 = v13;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
        v16 = OUTLINED_FUNCTION_7_1();
        outlined copy of Data._Representation(v16, v17);
        result = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v14, v15);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v18 = OUTLINED_FUNCTION_7_1();
        outlined consume of Data?(v18, v19);

        goto LABEL_12;
      }
    }

    v4 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
LABEL_12:
    v0[18] = v4;
    v20 = *(v0[8] + 192);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
    v22 = v0[16];
    v23 = v0[9];

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v22, v20, v4, v23);
  }

  v5 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  OUTLINED_FUNCTION_31_27(v5);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_12_59(v6);

  return static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(v7, v8);
}

uint64_t static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  v18 = v16[7];
  v19 = *(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v16[11];
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v67 = *(v21 + 56);
    v69 = v22;
    v24 = _swiftEmptyArrayStorage;
    do
    {
      v25 = v16[12];
      v69(v25, v23, v16[10]);
      SpeakableString.print.getter();
      v26 = OUTLINED_FUNCTION_11_59();
      v27(v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v31;
      }

      v29 = v24[2];
      v28 = v24[3];
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v28);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v32;
      }

      v24[2] = v29 + 1;
      v30 = &v24[2 * v29];
      v30[4] = v25;
      v30[5] = v17;
      v23 += v67;
      --v20;
    }

    while (v20);
    v18 = v16[7];
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v33 = v16[14];
  v34 = v16[10];
  outlined init with copy of SpeakableString?(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, v33);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  v36 = v16[14];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v16[14], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v68 = 0xE000000000000000;
    v70 = 0;
  }

  else
  {
    v38 = v16[10];
    v37 = v16[11];
    v39 = SpeakableString.print.getter();
    v68 = v40;
    v70 = v39;
    (*(v37 + 8))(v36, v38);
  }

  if (!*(v16[7] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated))
  {
    goto LABEL_16;
  }

  v41 = v16[13];
  v42 = v16[10];
  dispatch thunk of DialogCalendar.dateTimeDescriptive.getter();
  v43 = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v44 = v16[13];
  if (v43 == 1)
  {
    outlined destroy of SpeakableString?(v16[13], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_16:
    v65 = 0xE000000000000000;
    v66 = 0;
    goto LABEL_18;
  }

  v46 = v16[10];
  v45 = v16[11];
  v47 = SpeakableString.print.getter();
  v65 = v48;
  v66 = v47;
  (*(v45 + 8))(v44, v46);
LABEL_18:
  v49 = v16[4];
  v50 = v16[17];
  v64 = v16[12];
  v51 = v16[6];
  if (v49)
  {
    v52 = v16[4];
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  if (v49)
  {
    v53 = v16[3];
  }

  else
  {
    v53 = 0;
  }

  v54 = type metadata accessor for SingleResultCallHistoryModel(0);
  outlined init with take of SearchCallHistoryBinaryButtonModel?(v50, v51 + *(v54 + 36));
  *v51 = 0xD000000000000017;
  v51[1] = 0x8000000000456D10;
  v51[2] = v53;
  v51[3] = v52;
  v51[4] = v70;
  v51[5] = v68;
  v51[6] = v66;
  v51[7] = v65;
  v51[8] = v24;

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_0();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, v64, v65, v66, v68, v70, a14, a15, a16);
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_31_27(v1);
  OUTLINED_FUNCTION_24_5();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_49_26(v2);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 48) = v0;

  v7 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;

  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56) + **(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);

  return v5();
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 232) + **(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 232));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);

  return v5();
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_31_27(v1);
  OUTLINED_FUNCTION_24_5();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_49_26(v2);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 48) = v0;

  v7 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_40();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_40();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t OUTLINED_FUNCTION_31_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_55_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, 0xD00000000000002ALL, a4);
}

void OUTLINED_FUNCTION_56_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, 0xD00000000000002ALL, a4);
}

uint64_t OUTLINED_FUNCTION_60_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id static SearchCallHistoryIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, char *a2, void *a3, void *a4)
{
  v7 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(a1, a2, a3);
  v8 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06Searchb7HistorygH0O_Tt3g5(v7, a3, a2, a4);

  return v8;
}

uint64_t static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(void *a1, char *a2, void *a3)
{
  v147 = a3;
  v141 = a2;
  v4 = type metadata accessor for ContactGroupResolver();
  v5 = OUTLINED_FUNCTION_0_7(v4, &v157);
  v139 = v6;
  __chkstk_darwin(v5);
  v145 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v146 = &v137 - v9;
  v10 = type metadata accessor for Locale();
  v11 = OUTLINED_FUNCTION_0_7(v10, &v158);
  v143 = v12;
  __chkstk_darwin(v11);
  v142 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v14;
  v16 = PhoneCallNLIntent.isPlayVoiceMail()();
  v17 = &selRef_setTriggerReason_;
  v18 = &unk_426000;
  v149 = a1;
  v150 = v15;
  if (!v16)
  {
    OUTLINED_FUNCTION_6_77();
    v39 = OUTLINED_FUNCTION_4_3();
    v41 = v40(v39);
    if (!v41)
    {
      goto LABEL_61;
    }

    v42 = v41;
    v17 = 0;
    v148 = 0;
    v15 = *(v41 + 16);
    OUTLINED_FUNCTION_11_60();
    *&v43 = 136315138;
    v151 = v43;
    v18 = &dword_54B000;
    while (1)
    {
      if (v15 == v17)
      {

        if (*(v18 + 369) != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.siriPhone);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v150;
        v60 = v148;
        if (v58)
        {
          v61 = OUTLINED_FUNCTION_42();
          v62 = swift_slowAlloc();
          v156[0] = v62;
          *v61 = v151;
          v63 = swift_allocObject();
          *(v63 + 16) = _swiftEmptyArrayStorage;
          v154 = partial apply for closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter;
          v155 = v63;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
          v153 = &block_descriptor_9;
          v64 = _Block_copy(aBlock);

          INCallRecordTypeOptionsEnumerateBackingTypes();
          _Block_release(v64);
          swift_beginAccess();

          v65 = Array.description.getter();
          v67 = v66;

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v156);

          *(v61 + 4) = v68;
          _os_log_impl(&dword_0, v56, v57, "#PhoneCallNLIntent->INSearchCallHistoryIntent Creating INSearchCallHistoryIntent to return the latest call record: %s.", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_26_0(v61);
        }

        [v59 setCallTypes:v60];
        goto LABEL_61;
      }

      if (v17 >= *(v42 + 16))
      {
        goto LABEL_90;
      }

      v44 = *(v17 + v42 + 32);
      if (!*(v17 + v42 + 32))
      {
        break;
      }

      if (v44 == 6)
      {
        v54 = 8;
LABEL_54:
        v148 |= v54;
        goto LABEL_51;
      }

      if (*(v18 + 369) != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_42();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = v151;
        v50 = 0xE300000000000000;
        v51 = v49;
        v52 = 7824750;
        switch(v44)
        {
          case 2:
            v50 = 0xE600000000000000;
            v52 = OUTLINED_FUNCTION_61_1() & 0xFFFF0000FFFFFFFFLL | 0x746E00000000;
            break;
          case 3:
            v50 = 0xE700000000000000;
            v52 = OUTLINED_FUNCTION_4_7();
            break;
          case 4:
            v50 = 0xE800000000000000;
            v52 = OUTLINED_FUNCTION_61_1() | 0x6465766900000000;
            break;
          case 5:
            v50 = 0xE800000000000000;
            v52 = OUTLINED_FUNCTION_18_34();
            break;
          case 6:
            v50 = 0xE400000000000000;
            v52 = 1953718636;
            break;
          case 7:
            v50 = 0xE800000000000000;
            v52 = OUTLINED_FUNCTION_6_59();
            break;
          case 8:
            v50 = 0xE700000000000000;
            v52 = OUTLINED_FUNCTION_9_52();
            break;
          case 9:
            v50 = 0xE700000000000000;
            v52 = OUTLINED_FUNCTION_5_64();
            break;
          case 10:
            v50 = 0xE600000000000000;
            v52 = 0x646C6F486E6FLL;
            break;
          case 11:
            v52 = OUTLINED_FUNCTION_9_67();
            v50 = 0xE900000000000065;
            break;
          case 12:
            v52 = OUTLINED_FUNCTION_8_9();
            v50 = 0xEC0000006C69616DLL;
            break;
          case 13:
            v52 = 0xD000000000000014;
            v50 = v138;
            break;
          default:
            break;
        }

        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v50, aBlock);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_0, v46, v47, "#PhoneCallNLIntent->INSearchCallHistoryIntent attribute: %s is not supported and will be ignored", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_26_0(v51);
        OUTLINED_FUNCTION_26_0(v48);

        v18 = &dword_54B000;
      }

      else
      {
      }

LABEL_51:
      v17 = (v17 + 1);
    }

    v54 = 2;
    goto LABEL_54;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      OUTLINED_FUNCTION_26_0(v22);
    }

    [v15 v17[156]];
    OUTLINED_FUNCTION_6_77();
    v27 = OUTLINED_FUNCTION_4_3();
    v29 = v28(v27);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v31 = 0;
    v148 = 0;
    v17 = *(v29 + 16);
    OUTLINED_FUNCTION_11_60();
    *&v32 = *(v18 + 70);
    v151 = v32;
    while (1)
    {
      if (v17 == v31)
      {

        v69 = v150;
        v70 = [v150 callTypes];
        [v69 setCallTypes:v70 | v148];
        goto LABEL_61;
      }

      if (v31 >= *(v30 + 16))
      {
        break;
      }

      v33 = *(v31 + v30 + 32);
      if (v33 == 6)
      {
        v31 = (v31 + 1);
        v148 = 8;
      }

      else
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v15 = OUTLINED_FUNCTION_42();
          v18 = swift_slowAlloc();
          aBlock[0] = v18;
          *v15 = v151;
          v36 = 0xE600000000000000;
          result = 0x64657373696DLL;
          switch(v33)
          {
            case 1:
              v36 = 0xE300000000000000;
              result = 7824750;
              goto LABEL_24;
            case 2:
              result = OUTLINED_FUNCTION_61_1() & 0xFFFF0000FFFFFFFFLL | 0x746E00000000;
              goto LABEL_24;
            case 3:
              v36 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_4_7();
              goto LABEL_24;
            case 4:
              v36 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_61_1() | 0x6465766900000000;
              goto LABEL_24;
            case 5:
              v36 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_18_34();
              goto LABEL_24;
            case 6:
              __break(1u);
              return result;
            case 7:
              v36 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_6_59();
              goto LABEL_24;
            case 8:
              v36 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_9_52();
              goto LABEL_24;
            case 9:
              v36 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_5_64();
              goto LABEL_24;
            case 10:
              result = 0x646C6F486E6FLL;
              goto LABEL_24;
            case 11:
              result = OUTLINED_FUNCTION_9_67();
              v36 = 0xE900000000000065;
              goto LABEL_24;
            case 12:
              result = OUTLINED_FUNCTION_8_9();
              v36 = 0xEC0000006C69616DLL;
              goto LABEL_24;
            case 13:
              result = 0xD000000000000014;
              v36 = v138;
              goto LABEL_24;
            default:
LABEL_24:
              v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(result, v36, aBlock);

              *(v15 + 4) = v38;
              _os_log_impl(&dword_0, v34, v35, "#PhoneCallNLIntent->INSearchCallHistoryIntent attribute: %s is not supported for play voicemail and will be ignored", v15, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v18);
              OUTLINED_FUNCTION_26_0(v18);
              OUTLINED_FUNCTION_35();
              break;
          }
        }

        v31 = (v31 + 1);
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

LABEL_61:
  v71 = v149;
  OUTLINED_FUNCTION_6_77();
  v72 = OUTLINED_FUNCTION_4_3();
  v74 = *(v73(v72) + 16);

  if (v74)
  {
    v75 = v147;
    __swift_project_boxed_opaque_existential_1(v147, v147[3]);
    v76 = OUTLINED_FUNCTION_4_3();
    v78 = v77(v76);
    v79 = (*(*v78 + 232))(v78);

    v80 = v71[3];
    v81 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v80);
    v82 = *(v81 + 128);
    v83 = v150;
    v82(v80, v81);
    if ((v79 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v75, v75[3]);
      v108 = OUTLINED_FUNCTION_4_3();
      v109(v108);
      __swift_project_boxed_opaque_existential_1(aBlock, v153);
      v110 = v142;
      OUTLINED_FUNCTION_4_3();
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v135 = swift_allocObject();
      v111 = OUTLINED_FUNCTION_5_83();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(v111, v112, v113, 0, v110, v71, v75, 0, v134, v156, v135);

      __swift_destroy_boxed_opaque_existential_1(v156);
      (*(v143 + 8))(v110, v144);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      return v150;
    }

    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    *&v151 = swift_allocObject();
    v84 = v146;
    ContactGroupResolver.init()();
    v85 = v75;
    v86 = v139;
    v87 = v140;
    (*(v139 + 16))(v145, v84, v140);
    v88 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo08INSearchb7HistoryW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(v83, v141, v71, v85);
    v90 = v89;
    if (specialized Array.count.getter(v88))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static Logger.siriPhone);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v95, v96, v97, v98, v94, 2u);
        OUTLINED_FUNCTION_35();
      }

      INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v88);
    }

    if (specialized Array.count.getter(v90))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, static Logger.siriPhone);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v103, v104, v105, v106, v102, 2u);
        OUTLINED_FUNCTION_35();
      }
    }

    if (specialized Array.count.getter(v90))
    {
    }

    else
    {
      v114 = specialized Array.count.getter(v88);

      if (!v114)
      {
        v127 = v147;
        __swift_project_boxed_opaque_existential_1(v147, v147[3]);
        v128 = OUTLINED_FUNCTION_4_3();
        v129(v128);
        __swift_project_boxed_opaque_existential_1(v156, v156[3]);
        v130 = v142;
        OUTLINED_FUNCTION_4_3();
        dispatch thunk of DeviceState.siriLocale.getter();
        v136 = v151;
        v131 = OUTLINED_FUNCTION_5_83();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(v131, v132, v133, v141, v130, v149, v127, 0, v134, aBlock, v136);
        (*(v143 + 8))(v130, v144);
        __swift_destroy_boxed_opaque_existential_1(v156);
LABEL_85:
        v126 = *(v86 + 8);
        v126(v145, v87);

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v126(v146, v87);
        return v150;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    __swift_project_value_buffer(v115, static Logger.siriPhone);
    v116 = v83;
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = OUTLINED_FUNCTION_42();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      *(v119 + 4) = v116;
      *v120 = v116;
      v121 = v116;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v122, v123, v124, v125, v119, 0xCu);
      outlined destroy of PhoneCallNLIntent?(v120, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_26_0(v119);
    }

    goto LABEL_85;
  }

  v107 = v150;

  return v107;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
    v15 = &type metadata for PhoneCallFeatureFlags;
    v16 = &protocol witness table for PhoneCallFeatureFlags;
    *&v14 = swift_allocObject();
    memcpy((v14 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
    outlined init with take of SPHConversation(&v14, v17);
    outlined init with copy of PhoneCallFeatureFlags(__dst, v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = OUTLINED_FUNCTION_25_0();
    v7(v6);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_25_0();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        swift_once();
      }

      v8 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      OUTLINED_FUNCTION_25_0();
      if (dispatch thunk of DeviceState.isWatch.getter())
      {
        if (one-time initialization token for siriPhoneWatchExtension != -1)
        {
          swift_once();
        }

        v8 = &static DefaultPhoneApps.siriPhoneWatchExtension;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v12, v13);
        OUTLINED_FUNCTION_25_0();
        if (dispatch thunk of DeviceState.isXRDevice.getter())
        {
          if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
          {
            swift_once();
          }

          v8 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
        }

        else
        {
          if (one-time initialization token for siriPhoneExtension != -1)
          {
            swift_once();
          }

          v8 = &static DefaultPhoneApps.siriPhoneExtension;
        }
      }
    }

    v5 = *v8;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  outlined init with copy of SignalProviding(a1, __dst);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  outlined init with take of SPHConversation(__dst, v9 + 24);
  *(v9 + 64) = a3;
  v10 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(a1, a2, a3);
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a2, a4, a3);
  *a5 = v9;
}

unint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v168 = a8;
  v191 = a7;
  v172 = a5;
  v16 = type metadata accessor for ResolvedSiriKitContact();
  v170 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v167);
  v20 = (&v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v166 = &v155 - v22;
  v186 = type metadata accessor for RecommenderType();
  v184 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SearchSuggestedContacts();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v182 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v25 - 8);
  v178 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for ContactActionType();
  v181 = *(v183 - 8);
  __chkstk_darwin(v183);
  v177 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v174 = &v155 - v29;
  __chkstk_darwin(v30);
  v176 = &v155 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v32 - 8);
  v175 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v193 = &v155 - v35;
  v194 = type metadata accessor for Locale();
  v190 = *(v194 - 1);
  __chkstk_darwin(v194);
  v173 = &v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v192 = &v155 - v38;
  v188 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v188);
  v189 = (&v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40);
  v42 = &v155 - v41;
  v169 = type metadata accessor for ContactResolution();
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v187 = a2;
  v171 = a6;
  ObjectType = swift_getObjectType();
  v44 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for CallingIntent);
  v46 = one-time initialization token for siriPhone;
  if (!v44)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.siriPhone);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "#ContactResolution NL intent has an emergency contact but is not a CallingIntent!", v60, 2u);
    }

    a6 = v171;
    a2 = v187;
LABEL_13:
    result = _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo08INSearchb7HistoryT0C_Tt2g5(a6, a1, a2);
    if (result)
    {
      return result;
    }

    v61 = _swiftEmptyArrayStorage;
    v155 = v20;
    v171 = a6;
    v157 = v18;
    if (a4)
    {
      v62 = v16;
      v63 = App.appIdentifier.getter();
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        v67 = v62;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v68[2];
        v70 = v68;
        if (v69 >= v68[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v154;
        }

        v70[2] = v69 + 1;
        v71 = &v70[2 * v69];
        v61 = v70;
        v71[4] = v65;
        v71[5] = v66;
        v16 = v67;
      }

      else
      {
        v61 = _swiftEmptyArrayStorage;
      }
    }

    v172 = v61;
    v158 = a4;
    v164 = v42;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v187 = a2;
    v72 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = v191[3];
    v77 = v191[4];
    __swift_project_boxed_opaque_existential_1(v191, v76);
    (*(v77 + 8))(&v196, v76, v77);
    __swift_project_boxed_opaque_existential_1(&v196, v197);
    v78 = v192;
    DeviceState.siriInputLocale.getter();
    v79 = a1;
    v80 = v172;

    v81 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v79);
    if (v82)
    {
      v83 = v81;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0xE000000000000000;
    }

    v85 = v189;
    v161 = v83;
    *v189 = v83;
    v85[1] = v84;
    v163 = v73;
    v85[2] = v73;
    v85[3] = v75;
    v86 = v188;
    v87 = v85 + *(v188 + 24);
    v159 = *(v190 + 16);
    v159(v87, v78, v194);
    *(v85 + *(v86 + 28)) = v80;

    v160 = v84;

    v162 = v75;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INSearchCallHistoryIntent, v193);
    v88 = [v79 preferredCallProvider];
    v165 = v79;
    v156 = v16;
    if (v88 == &dword_0 + 2)
    {
      v89 = swift_getObjectType();
      v91 = &enum case for ContactActionType.facetimeVideo(_:);
      if (dynamic_cast_existential_1_conditional(v79, v89, &protocol descriptor for CallingIntent))
      {
        v92 = v90;
        v93 = swift_getObjectType();
        v94 = v79;
        v95 = *(v92 + 24);
        v96 = v94;
        v97 = v95(v93, v92);

        if (v97 == 1)
        {
          v91 = &enum case for ContactActionType.facetimeAudio(_:);
        }
      }
    }

    else
    {
      v91 = &enum case for ContactActionType.phoneCall(_:);
    }

    v98 = v159;
    v99 = *v91;
    v100 = v181;
    v101 = v174;
    v102 = v183;
    (*(v181 + 104))(v174, v99, v183);
    v103 = v176;
    (*(v100 + 32))(v176, v101, v102);
    v98(v173, v192, v194);
    static ContactResolverDomain.phone.getter();
    outlined init with copy of ContactHandleTypePreference?(v193, v175);
    (*(v179 + 104))(v182, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v180);
    (*(v184 + 104))(v185, enum case for RecommenderType.mlRecommender(_:), v186);
    v104 = v189;
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v100 + 16))(v177, v103, v102);
    ContactResolverConfig.actionType.setter();
    (*(v100 + 8))(v103, v102);
    outlined destroy of PhoneCallNLIntent?(v193, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v190 + 8))(v192, v194);
    v105 = v164;
    outlined init with take of ContactResolverConfigHashable(v104, v164);
    __swift_destroy_boxed_opaque_existential_1(&v196);
    v106 = v191[3];
    v107 = v191[4];
    __swift_project_boxed_opaque_existential_1(v191, v106);
    (*(v107 + 96))(&v196, v106, v107);
    v108 = v197;
    v109 = v198;
    __swift_project_boxed_opaque_existential_1(&v196, v197);
    v110 = (v109[2])(v187, v105, v108, v109);
    __swift_destroy_boxed_opaque_existential_1(&v196);
    __swift_project_boxed_opaque_existential_1(a10, a10[3]);
    type metadata accessor for SiriKitEvent();
    v111 = [v165 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of SignalProviding(v171, &v196);
    v112 = swift_allocObject();
    *(v112 + 16) = v158;
    outlined init with take of SPHConversation(&v196, v112 + 24);
    *(v112 + 64) = v110;

    LOBYTE(v195) = 0;
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v113 = *(v110 + 16);
    if (v113)
    {
      *&v196 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v114 = v157;
      v115 = v156;
      v116 = *(v170 + 16);
      v193 = v110;
      v194 = v116;
      v117 = v110 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v118 = *(v170 + 72);
      v119 = (v170 + 8);
      do
      {
        v194(v114, v117, v115);
        ResolvedSiriKitContact.person.getter();
        (*v119)(v114, v115);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v117 += v118;
        --v113;
      }

      while (v113);

      v120 = v196;
    }

    else
    {

      v120 = _swiftEmptyArrayStorage;
    }

    v121 = specialized Array.count.getter(v120);
    v122 = v164;
    if (v121)
    {
      v123 = static ContactResolution.dedupeContacts(contacts:)(v120);

      v120 = v123;
    }

    if (a9)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      __swift_project_value_buffer(v124, static Logger.siriPhone);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v125, v126))
      {
        goto LABEL_65;
      }

      v127 = swift_slowAlloc();
      *v127 = 0;
      v128 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_64:
      _os_log_impl(&dword_0, v125, v126, v128, v127, 2u);

LABEL_65:

      INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v120);

      return _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v122, type metadata accessor for ContactResolverConfigHashable);
    }

    INSearchCallHistoryIntent.contacts.getter();
    if (!v129)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v139 = type metadata accessor for Logger();
      __swift_project_value_buffer(v139, static Logger.siriPhone);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v125, v126))
      {
        goto LABEL_65;
      }

      v127 = swift_slowAlloc();
      *v127 = 0;
      v128 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
      goto LABEL_64;
    }

    v130 = v129;
    if (specialized Array.count.getter(v120))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v120 & 0xC000000000000001) == 0, v120);
      if ((v120 & 0xC000000000000001) != 0)
      {
        v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v131 = *(v120 + 32);
      }

      v132 = v131;
      v133 = v168;
      if ((v168 & 0x8000000000000000) == 0 && specialized Array.count.getter(v130) > v133)
      {
        v134 = specialized Array.count.getter(v120);
        if (specialized Array.count.getter(v130) >= v134)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v140 = type metadata accessor for Logger();
          __swift_project_value_buffer(v140, static Logger.siriPhone);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            *v143 = 134217984;
            *(v143 + 4) = v168;
            _os_log_impl(&dword_0, v141, v142, "#ContactResolution updating person at index %ld", v143, 0xCu);
          }

          v144 = specialized Array.count.getter(v130);
          v145 = v168;
          if (v144 <= v168)
          {
            v149 = v155;
            *v155 = v168;
            swift_storeEnumTagMultiPayload();
            v150 = v166;
            PhoneError.logged()(v166);
            _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v149, type metadata accessor for PhoneError);
            _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v150, type metadata accessor for PhoneError);
            v151 = Logger.logObject.getter();
            v152 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              *v153 = 134218240;
              *(v153 + 4) = v145;
              *(v153 + 12) = 2048;
              *(v153 + 14) = specialized Array.count.getter(v130);
              _os_log_impl(&dword_0, v151, v152, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v153, 0x16u);
            }

            INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v120);
          }

          else
          {

            v146 = v132;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (v130 >> 62 || (result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()();
              v130 = result;
            }

            if (*(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8)) <= v168)
            {
              __break(1u);
              return result;
            }

            v147 = *(&stru_20.cmd + 8 * v168 + (v130 & 0xFFFFFFFFFFFFFF8));
            *(&stru_20.cmd + 8 * v168 + (v130 & 0xFFFFFFFFFFFFFF8)) = v146;

            INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v148);
          }

LABEL_59:

          _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v122, type metadata accessor for ContactResolverConfigHashable);
        }
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v135 = type metadata accessor for Logger();
    __swift_project_value_buffer(v135, static Logger.siriPhone);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_0, v136, v137, "#ContactResolution: overwriting contacts slot", v138, 2u);
    }

    INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v120);
    goto LABEL_59;
  }

  v47 = v44;
  v48 = v45;
  v49 = a1;
  if (v46 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.siriPhone);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v53, 2u);
  }

  v54 = [objc_allocWithZone(HKHealthStore) init];
  v55 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v54];

  v197 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v198 = &protocol witness table for HKMedicalIDStore;
  *&v196 = v55;
  (*(*a11 + 80))(v47, v48, v172, &v196);

  return __swift_destroy_boxed_opaque_existential_1(&v196);
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo08INSearchb7HistoryT0C_Tt2g5(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for CallingIntent))
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = a2;
    if (v10(v9, v8) == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_85:
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriPhone);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "#ContactResolution intent is emergency call. bypassing contact resolution", v15, 2u);
      }

      return 1;
    }
  }

  if (a3)
  {
    if (*(a3 + 16))
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_35;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_34;
  }

  INSearchCallHistoryIntent.contacts.getter();
  if (v17)
  {
    v11 = v17;
    v18 = specialized Array.count.getter(v17);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = v11 & 0xC000000000000001;
      while (v19 != v20)
      {
        if (v21)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_82;
          }

          v22 = *(v11 + 8 * v20 + 32);
        }

        v23 = v22;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v24 = INPerson.hasHandleValue.getter();

        ++v20;
        if (!v24)
        {
          v68 = a1;
          v32 = 0;
          while (1)
          {
            if (v21)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v32 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_84;
              }

              v33 = *(v11 + 8 * v32 + 32);
            }

            v34 = v33;
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_83;
            }

            v36 = [v33 personHandle];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 emergencyType];

              if (v38)
              {

                if (one-time initialization token for siriPhone != -1)
                {
LABEL_89:
                  swift_once();
                }

                v59 = type metadata accessor for Logger();
                __swift_project_value_buffer(v59, static Logger.siriPhone);
                v60 = Logger.logObject.getter();
                v61 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v60, v61))
                {
                  v62 = swift_slowAlloc();
                  v63 = swift_slowAlloc();
                  v71[0] = v63;
                  *v62 = 136315138;
                  *&v70[0] = v38;
                  type metadata accessor for INPersonHandleEmergencyType(0);
                  v64 = String.init<A>(describing:)();
                  v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v71);

                  *(v62 + 4) = v66;
                  _os_log_impl(&dword_0, v60, v61, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v62, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v63);
                }

                return 1;
              }
            }

            ++v32;
            if (v35 == v19)
            {
              v39 = v68[3];
              v40 = v68[4];
              __swift_project_boxed_opaque_existential_1(v68, v39);
              v38 = (v40 + 24);
              v41 = *(v40 + 24);
              v42 = *(v41(v39, v40) + 16);

              if (!v42)
              {
LABEL_74:

                return 0;
              }

              v43 = v41(v39, v40);
              v34 = 0;
              v44 = v43 + 32;
              v69 = *(v43 + 16);
              while (1)
              {
                if (v69 == v34)
                {

                  goto LABEL_77;
                }

                if (v34 >= *(v43 + 16))
                {
                  __break(1u);
                  goto LABEL_87;
                }

                outlined init with copy of SignalProviding(v44, v70);
                v45 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
                if (v34 == v45)
                {
                  break;
                }

                if (v21)
                {
                  v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v34 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_89;
                  }

                  v46 = *(v11 + 8 * v34 + 32);
                }

                v47 = v46;
                outlined init with take of SPHConversation(v70, v71);
                v74 = v47;
                v48 = v72;
                v38 = v73;
                __swift_project_boxed_opaque_existential_1(v71, v72);
                v49 = v38[4](v48, v38);
                if (!v50)
                {
                  goto LABEL_72;
                }

                v51 = v49;
                v52 = v50;

                v53 = HIBYTE(v52) & 0xF;
                if ((v52 & 0x2000000000000000) == 0)
                {
                  v53 = v51 & 0xFFFFFFFFFFFFLL;
                }

                if (!v53 || (v54 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v47), !v55))
                {
LABEL_72:
                  outlined destroy of PhoneCallNLIntent?(v71, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

                  goto LABEL_74;
                }

                v56 = v54;
                v57 = v55;

                if ((v57 & 0x2000000000000000) != 0)
                {
                  v58 = HIBYTE(v57) & 0xF;
                }

                else
                {
                  v58 = v56 & 0xFFFFFFFFFFFFLL;
                }

                outlined destroy of PhoneCallNLIntent?(v71, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
                v44 += 40;
                ++v34;
                if (!v58)
                {
                  goto LABEL_73;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_77:
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v67 = type metadata accessor for Logger();
              __swift_project_value_buffer(v67, static Logger.siriPhone);
              v26 = Logger.logObject.getter();
              v27 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                *v28 = 0;
                v29 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
                goto LABEL_34;
              }

              goto LABEL_35;
            }
          }
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_87:
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_34:
    _os_log_impl(&dword_0, v26, v27, v29, v28, 2u);
  }

LABEL_35:

  return 1;
}

void *_s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo08INSearchb7HistoryW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, char *a2, void *a3, void *a4)
{
  v210 = a4;
  v204 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  __chkstk_darwin(v6 - 8);
  v184 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v189 = (&v181 - v9);
  v203 = type metadata accessor for RREntity();
  v185 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v182 = &v181 - v12;
  __chkstk_darwin(v13);
  v183 = &v181 - v14;
  __chkstk_darwin(v15);
  v186 = &v181 - v16;
  __chkstk_darwin(v17);
  v187 = &v181 - v18;
  v209 = type metadata accessor for RRCandidate();
  v207 = *(v209 - 8);
  __chkstk_darwin(v209);
  v201 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v188 = &v181 - v21;
  __chkstk_darwin(v22);
  v197 = &v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  __chkstk_darwin(v24 - 8);
  v208 = &v181 - v25;
  v193 = type metadata accessor for RRResult();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v194 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v190 = (&v181 - v28);
  __chkstk_darwin(v29);
  v191 = &v181 - v30;
  v31 = type metadata accessor for MatchedResultsSetting();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v181 - v36;
  v38 = type metadata accessor for ContactGroupResolver();
  v39 = __chkstk_darwin(v38);
  v195 = v41;
  v42 = *(v41 + 16);
  v198 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v43;
  v42(v39);
  v44 = a3[3];
  v45 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v44);
  v46 = (*(v45 + 144))(v44, v45);
  v212 = v46;
  v199 = v32;
  v200 = v31;
  v47 = *(v32 + 104);
  v206 = v37;
  v47(v37, enum case for MatchedResultsSetting.defaultMatching(_:), v31);
  v48 = a3[3];
  v205 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v48);
  if (PhoneCallNLIntent.hasOnlyCallVerb()())
  {
    v49 = a2;
    if (App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v212 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v212 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v212;
      v50 = v200;
      v51 = v206;
      (*(v199 + 8))(v206, v200);
      v47(v51, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v50);
    }
  }

  else
  {
    v49 = a2;
  }

  if (!specialized Array.count.getter(v46))
  {
    v67 = v206;
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_16;
  }

  v52 = v206;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_88:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = __swift_project_value_buffer(v53, static Logger.siriPhone);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v211 = v58;
    *v57 = 136315138;
    swift_beginAccess();
    (*(v199 + 16))(v34, v52, v200);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v211);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v62 = v208;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v64);
  *(&v181 - 4) = &v212;
  *(&v181 - 3) = v52;
  *(&v181 - 2) = v210;
  static SiriKitEventSender.current.getter();
  v65 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(&v211);
  specialized Collection.first.getter(v65);

  v66 = v193;
  if (__swift_getEnumTagSinglePayload(v62, 1, v193) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v62, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    v49 = v198;
    goto LABEL_14;
  }

  v208 = v54;
  v75 = v192;
  v76 = v191;
  (*(v192 + 32))(v191, v62, v66);
  v77 = *(v75 + 16);
  v78 = v190;
  v77(v190, v76, v66);
  v79 = (*(v75 + 88))(v78, v66);
  if (v79 == enum case for RRResult.foundMatch(_:))
  {
    v194 = v49;
    (*(v75 + 96))(v78, v66);
    v80 = v207;
    v81 = v197;
    v82 = v209;
    (*(v207 + 32))(v197, v78, v209);
    v83 = *(v80 + 16);
    v84 = v188;
    v83(v188, v81, v82);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v84;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v211 = v89;
      *v88 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = v87;
      v94 = *(v80 + 8);
      v94(v93, v209);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v211);
      v66 = v193;

      *(v88 + 4) = v95;
      _os_log_impl(&dword_0, v85, v86, "#ReferenceContactResolutionWrapper .foundMatch %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      v82 = v209;
    }

    else
    {

      v94 = *(v80 + 8);
      v94(v84, v82);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v129 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_424FD0;
    v83((v130 + v129), v197, v82);
    v131 = v189;
    specialized Collection.first.getter(v130);

    if (__swift_getEnumTagSinglePayload(v131, 1, v82) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v131, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      v134 = os_log_type_enabled(v132, v133);
      v135 = v206;
      v136 = v192;
      v137 = v191;
      if (v134)
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_0, v132, v133, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v138, 2u);
      }

      v73 = _swiftEmptyArrayStorage;
      v49 = v198;
      v139 = v209;
    }

    else
    {
      v139 = v82;
      v149 = v186;
      RRCandidate.entity.getter();
      v94(v131, v82);
      v150 = v185;
      v151 = v187;
      v152 = v203;
      (*(v185 + 32))(v187, v149, v203);
      v153 = v198;
      v73 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v151, v204, v194, v205, v210, v198);
      (*(v150 + 8))(v151, v152);
      v49 = v153;
      v135 = v206;
      v136 = v192;
      v137 = v191;
    }

    v94(v197, v139);
    (*(v136 + 8))(v137, v66);
    (*(v199 + 8))(v135, v200);
    goto LABEL_20;
  }

  if (v79 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v79 == enum case for RRResult.foundMatchPlural(_:))
    {
      v194 = v49;
      (*(v192 + 96))(v78, v66);
      v140 = *v78;

      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v211 = v144;
        *v143 = 136315138;
        v145 = v209;
        v146 = Array.description.getter();
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, &v211);
        v66 = v193;

        *(v143 + 4) = v148;
        _os_log_impl(&dword_0, v141, v142, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v143, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v144);
      }

      else
      {

        v145 = v209;
      }

      v160 = v207;
      v161 = v184;
      specialized Collection.first.getter(v140);

      if (__swift_getEnumTagSinglePayload(v161, 1, v145) == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v161, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_0, v162, v163, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v164, 2u);
        }

        (*(v192 + 8))(v191, v66);
        (*(v199 + 8))(v52, v200);
        v73 = _swiftEmptyArrayStorage;
        v49 = v198;
      }

      else
      {
        v177 = v182;
        RRCandidate.entity.getter();
        (*(v160 + 8))(v161, v145);
        v178 = v185;
        v179 = v183;
        v180 = v203;
        (*(v185 + 32))(v183, v177, v203);
        v49 = v198;
        v73 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v179, v204, v194, v205, v210, v198);
        (*(v178 + 8))(v179, v180);
        (*(v192 + 8))(v191, v66);
        (*(v199 + 8))(v52, v200);
      }

      goto LABEL_20;
    }

    if (v79 == enum case for RRResult.noMatch(_:))
    {
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.debug.getter();
      v156 = os_log_type_enabled(v154, v155);
      v49 = v198;
      if (v156)
      {
        v157 = swift_slowAlloc();
        *v157 = 0;
        _os_log_impl(&dword_0, v154, v155, "#ReferenceContactResolutionWrapper found a .nomatch", v157, 2u);
      }

      (*(v192 + 8))(v191, v66);
    }

    else
    {
      v165 = v194;
      v166 = v191;
      v77(v194, v191, v66);
      v167 = Logger.logObject.getter();
      v168 = v66;
      v169 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v167, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v211 = v171;
        *v170 = 136315138;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult, &protocol conformance descriptor for RRResult);
        v172 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v173;
        v175 = *(v192 + 8);
        v175(v165, v168);
        v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, &v211);

        *(v170 + 4) = v176;
        _os_log_impl(&dword_0, v167, v169, "#ReferenceContactResolutionWrapper dropping result of type %s!", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);

        v175(v191, v168);
        v78 = v190;
      }

      else
      {

        v175 = *(v192 + 8);
        v175(v165, v168);
        v175(v166, v168);
      }

      v175(v78, v168);
      v49 = v198;
      v52 = v206;
    }

LABEL_14:
    (*(v199 + 8))(v52, v200);
    goto LABEL_19;
  }

  (*(v192 + 96))(v78, v66);
  v96 = *v78;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v211 = v100;
    *v99 = 136315138;
    v101 = Array.description.getter();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v211);

    *(v99 + 4) = v103;
    v66 = v193;
    _os_log_impl(&dword_0, v97, v98, "#ReferenceContactResolutionWrapper found a .needsDisambiguation match %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  v190 = *(v96 + 16);
  if (!v190)
  {

    v105 = _swiftEmptyArrayStorage;
    v49 = v198;
LABEL_75:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v105, v210);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v159 = v158;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v73 = swift_allocObject();
    *(v73 + 1) = xmmword_426260;
    v73[4] = v159;
    (*(v192 + 8))(v191, v66);
    (*(v199 + 8))(v52, v200);
    goto LABEL_20;
  }

  v194 = v49;
  v34 = 0;
  v189 = *(v207 + 16);
  v104 = (*(v207 + 80) + 32) & ~*(v207 + 80);
  v181 = v96;
  v188 = (v96 + v104);
  v105 = _swiftEmptyArrayStorage;
  v187 = (v207 + 8);
  v186 = *(v207 + 72);
  v185 += 8;
  v49 = v198;
  v106 = v209;
  v207 += 16;
  while (1)
  {
    v107 = v201;
    v189(v201, &v188[v186 * v34], v106);
    v108 = v202;
    RRCandidate.entity.getter();
    (*v187)(v107, v106);
    v109 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v108, v204, v194, v205, v210, v49);
    (*v185)(v108, v203);

    if (v109 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
    }

    v110 = v105 >> 62;
    if (v105 >> 62)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v111 = *(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8));
    }

    v112 = v111 + v67;
    if (__OFADD__(v111, v67))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v110)
      {
        v113 = v105 & 0xFFFFFFFFFFFFFF8;
        if (v112 <= *(&dword_18 + (v105 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_39:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_40;
    }

    if (v110)
    {
      goto LABEL_39;
    }

LABEL_40:
    v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v113 = v105 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
    v208 = v105;
    v114 = *(v113 + 16);
    v115 = (*(v113 + 24) >> 1) - v114;
    v116 = v113 + 8 * v114;
    v197 = v113;
    if (v109 >> 62)
    {
      break;
    }

    v117 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
    if (v117)
    {
      if (v115 < v117)
      {
        goto LABEL_91;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_51;
    }

LABEL_55:

    v105 = v208;
    v106 = v209;
    if (v67 > 0)
    {
      goto LABEL_87;
    }

LABEL_56:
    if (++v34 == v190)
    {

      v66 = v193;
      goto LABEL_75;
    }
  }

  v118 = _CocoaArrayWrapper.endIndex.getter();
  if (!v118)
  {
    goto LABEL_55;
  }

  v119 = v118;
  v120 = _CocoaArrayWrapper.endIndex.getter();
  if (v115 < v120)
  {
    goto LABEL_90;
  }

  if (v119 < 1)
  {
    goto LABEL_92;
  }

  v182 = v120;
  v183 = v67;
  v184 = v34;
  v121 = v116 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v119; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v123 = specialized protocol witness for Collection.subscript.read in conformance [A](&v211, i, v109);
    v125 = *v124;
    v123(&v211, 0);
    *(v121 + 8 * i) = v125;
  }

  v49 = v198;
  v52 = v206;
  v34 = v184;
  v67 = v183;
  v117 = v182;
LABEL_51:

  v105 = v208;
  v106 = v209;
  if (v117 < v67)
  {
    goto LABEL_87;
  }

  if (v117 < 1)
  {
    goto LABEL_56;
  }

  v126 = *(v197 + 2);
  v127 = __OFADD__(v126, v117);
  v128 = v126 + v117;
  if (!v127)
  {
    *(v197 + 2) = v128;
    goto LABEL_56;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  swift_once();
LABEL_16:
  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.siriPhone);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v71 = os_log_type_enabled(v69, v70);
  v49 = v198;
  if (v71)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_0, v69, v70, "#ReferenceContactResolutionWrapper - No references found", v72, 2u);
  }

  (*(v199 + 8))(v67, v200);
LABEL_19:
  v73 = _swiftEmptyArrayStorage;
LABEL_20:

  (*(v195 + 8))(v49, v196);
  return v73;
}

uint64_t _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v8 = type metadata accessor for ContactGroupResolver();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a6, v8, v10);
  static Signpost.begin(_:)();
  v54 = v13;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v14 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v14)
  {
    v15 = one-time initialization token for siriPhone;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#ReferenceContactResolutionWrapper resolved to an INPerson", v20, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = xmmword_426260;
    *(v21 + 32) = v16;
    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v55)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#ReferenceContactResolutionWrapper resolved to a common_Person", v26, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    type metadata accessor for ContactQuery();
    *(swift_allocObject() + 16) = xmmword_424FD0;
    UsoEntity_common_Person.toContactQuery()();
LABEL_13:
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo08INSearchb7HistoryM0C_Tt4g5();
    v22 = v27;

    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Group();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v31 = v55;
  if (v55)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper resolved to a common_Group", v35, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(v31, v50, v51, v52, v53, v12);
    v22 = v36;
  }

  else
  {
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Agent();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v55)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriPhone);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "#ReferenceContactResolutionWrapper resolved to a common_Agent", v40, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      type metadata accessor for ContactQuery();
      *(swift_allocObject() + 16) = xmmword_424FD0;
      UsoEntity_common_Agent.toContactQuery()();
      goto LABEL_13;
    }

    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_App();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v55)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriPhone);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "#ReferenceContactResolutionWrapper resolved to a common_app - Not convertible to INPerson", v44, 2u);
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v48, 2u);
      }
    }

    v22 = _swiftEmptyArrayStorage;
  }

LABEL_14:
  __chkstk_darwin(v21);
  *(&v49 - 2) = a1;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), (&v49 - 4), v22);
  v29 = v28;

  (*(v9 + 8))(v12, v8);
  return v29;
}