uint64_t OUTLINED_FUNCTION_1_136()
{

  return swift_beginAccess();
}

BOOL OSFeatureFlag.wrappedValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  v3 = v1 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 40;
    outlined init with copy of SignalProviding(v2, v7);
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 == 0;
}

uint64_t DeviceState.requiresAppForFaceTime.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPod.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
    OUTLINED_FUNCTION_20_0();
    v0 = dispatch thunk of DeviceState.isXRDevice.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  *(v0 + 16) = 0;
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_125()
{
}

void OUTLINED_FUNCTION_24_24()
{
}

void *OUTLINED_FUNCTION_24_29()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1)
{
  *(v1 + 208) = a1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;

  return outlined init with copy of SignalProviding(v2, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 272, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_36(uint64_t a1)
{
  v2[18] = v1;
  v2[21] = a1;
  v2[22] = 0x746E65746E69;
  v2[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_24_37()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_38(float a1)
{
  *v1 = a1;
  *(v2 + 280) = v3;

  return swift_getMetatypeMetadata();
}

void OUTLINED_FUNCTION_24_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(0x73746361746E6F63, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1, ...)
{
  v6 = *(v1 + 16);
  *(v6 + 16) = v4 + 1;
  v7 = v6 + 16 * v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v1 + 16) = v6;

  return swift_endAccess();
}

unint64_t OUTLINED_FUNCTION_23_16()
{
  v3 = *(v1 - 224);
  v4 = *(v1 - 216);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, (v0 + 240));
}

void OUTLINED_FUNCTION_23_24(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

__n128 OUTLINED_FUNCTION_23_25()
{
  v1 = *(v0 + 160);
  *(v0 + 80) = *(v0 + 144);
  *(v0 + 96) = v1;
  result = *(v0 + 176);
  v3 = *(v0 + 192);
  *(v0 + 112) = result;
  *(v0 + 128) = v3;
  return result;
}

void OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 98) = a7;
  *(v9 + 32) = a5;
  *(v9 + 40) = a6;
  *(v9 + 97) = a4;
}

uint64_t OUTLINED_FUNCTION_23_33()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_23_34()
{
}

void OUTLINED_FUNCTION_23_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t outlined init with copy of AnnotatedApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AnnotatedApp(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t outlined copy of AnnotatedApp?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AnnotatedApp(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t outlined consume of AnnotatedApp?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

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

uint64_t AnnotatedApp.description.getter()
{
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(102);
  v15 = v16;
  v1._object = 0x8000000000457570;
  v1._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v1);
  *&v16 = *v0;
  type metadata accessor for App();
  OUTLINED_FUNCTION_2_18();
  lazy protocol witness table accessor for type App and conformance App(v2, v3, &protocol conformance descriptor for App);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x8000000000457590;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x68636E75616C202CLL;
  v7._object = 0xEC000000203A6449;
  String.append(_:)(v7);
  v16 = *(v0 + 16);
  v14[1] = *(v0 + 16);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v16, v14, &_sSSSgMd, &_sSSSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x656372756F73202CLL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = AppResolutionSource.description.getter(*(v0 + 32));
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x80000000004575B0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v12);

  return v15;
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  v1 = *(v0 + 240);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

void OUTLINED_FUNCTION_2_20(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x69616D6563696F76;
  v1[17] = 0xE90000000000006CLL;
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, uint64_t a2)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_2_33()
{
}

uint64_t OUTLINED_FUNCTION_2_37()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_2_38()
{
  v1 = 46;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t OUTLINED_FUNCTION_2_40(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_2_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return ConfirmationViewTemplate.Button.asConfirmationOption.getter();
}

uint64_t OUTLINED_FUNCTION_2_51()
{
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{
  *v2 = a1;

  return outlined init with copy of SignalProviding(v1, a1 + 40);
}

uint64_t OUTLINED_FUNCTION_2_53(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_2_59()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_67(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2_69@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x6143746567726174;
  v2[11] = 0xEA00000000006C6CLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v2 - 128));
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  return outlined init with copy of SignalProviding(v1 + 160, (v0 + 26));
}

uint64_t OUTLINED_FUNCTION_2_80(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_82()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_2_84(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_2_90()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_91(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_2_94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
}

void OUTLINED_FUNCTION_2_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_99()
{
}

id OUTLINED_FUNCTION_2_100(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_2_102(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_103(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_111(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_115(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2, &protocol conformance descriptor for CodableAceObject<A>);
}

uint64_t OUTLINED_FUNCTION_2_116()
{

  return specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_2_117(uint64_t a1)
{

  return SpeakableString.init(print:speak:)();
}

__n128 OUTLINED_FUNCTION_2_119(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a18)
{
  a1[1] = a15;
  a1[2] = a16;
  result = a18;
  a1[3] = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_120(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_124()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_2_125()
{

  return outlined destroy of UnsupportedFlowSearchCallHistoryParameters();
}

uint64_t lazy protocol witness table accessor for type App and conformance App(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SharedGlobalsProviding.appResolutionProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static AppResolutionProvider.instance;
  a1[3] = type metadata accessor for AppResolutionProvider();
  a1[4] = &protocol witness table for AppResolutionProvider;
  *a1 = v2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin12AnnotatedAppVGMd, &_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin12AnnotatedAppVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (*(v20 + 56) + 48 * v16);
    v22 = a1[1];
    *v21 = *a1;
    v21[1] = v22;
    v21[2] = a1[2];
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_0_16();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{

  return static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v2 + v1), a1);
}

void OUTLINED_FUNCTION_43_10()
{
  v2 = *(v0 + 864);
}

uint64_t OUTLINED_FUNCTION_43_16(void *a1)
{
  a1[2] = v4;
  a1[3] = v1;
  a1[4] = v3;
  a1[5] = v2;

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_43_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_20(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_43_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_43_29()
{

  return specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_35_7()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 2, v0);
}

uint64_t OUTLINED_FUNCTION_35_18(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_35_19(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_35_25()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

__n128 *OUTLINED_FUNCTION_35_26(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x74616E6974736564;
  result[2].n128_u64[1] = 0xEF657079546E6F69;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_27()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_35_28()
{
}

uint64_t *OUTLINED_FUNCTION_35_31()
{
  v1 = v0[5];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[11] = v1;
  v0[12] = v2;

  return __swift_allocate_boxed_opaque_existential_1(v0 + 8);
}

NSString StartAudioCallDirectAction.startCallIntent.getter()
{
  if (*(v0 + 24))
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 40) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v3 = INIntentCreate();

  if (v3 && (v4 = v3, v1 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartCallIntent_ptr), v4, v1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_65_0();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#StartAudioCallDirectAction Received INStartCallIntent from directAction", v8, 2u);
      OUTLINED_FUNCTION_26_0(v8);
    }

    v3 = v4;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v11))
    {
      v12 = OUTLINED_FUNCTION_65_0();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v1, "#StartAudioCallDirectAction Didn't receive initial siriKitIntent, using default INStartCallIntent", v12, 2u);
      OUTLINED_FUNCTION_26_0(v12);
    }

    v13 = objc_allocWithZone(INStartCallIntent);
    v1 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(0, 0, 0, 1, 1, 0, 0, 1);
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return outlined consume of HintInstance?(v1, v0);
}

void OUTLINED_FUNCTION_48_8()
{

  SKTransformer.convertToSKIntent<A>(ofType:input:rchFlowContext:)(v1, v2, v0, 0, 0, v1);
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void OUTLINED_FUNCTION_48_14(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000037;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

id OUTLINED_FUNCTION_48_21(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_48_22()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_48_23()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_48_24(uint64_t a1)
{

  return String.init<A>(describing:)();
}

id @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  return v18;
}

void INIntent.setMetaData(app:previousIntent:sharedGlobals:)(uint64_t a1, id a2, void *a3)
{
  v4 = v3;
  v7 = [a2 _metadata];
  if (!v7)
  {
    v7 = [v3 _metadata];
    if (!v7)
    {
      v7 = [objc_allocWithZone(_INPBIntentMetadata) init];
    }
  }

  v8 = v7;
  [v4 _setMetadata:v7];

  v9 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v4, &selRef_intentId);
  v11 = specialized Optional<A>.isNilOrEmpty.getter(v9, v10);

  if (v11)
  {
    v12 = [v4 _metadata];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for SiriEnvironment();
      v14 = static SiriEnvironment.forCurrentTask.getter();
      v15 = v14;
      if (v14)
      {
        SiriEnvironment.flowTask.getter();

        dispatch thunk of FlowTaskProvider.id.getter();
        v17 = v16;

        if (v17)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }
      }

      OUTLINED_FUNCTION_59_6(v14, "setIntentId:");
    }
  }

  INIntent.setPeerInfoMetadata(sharedGlobals:)(a3);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  (*(v19 + 8))(v42, v18, v19);
  INIntent.setDeviceMetadata(from:)(v42);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  (*(v21 + 152))(v39, v20, v21);
  v22 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (a1)
  {
    v24 = App.appIdentifier.getter();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  (*(v23 + 16))(v42, v24, v26, v22, v23);

  __swift_destroy_boxed_opaque_existential_1(v39);
  INIntent.setAppMetadata(from:cachedApp:)(a1, v42);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000000045C1E0, v39);
    *(v31 + 12) = 2080;
    v33 = [v28 _metadata];
    if (v33 && (v34 = v33, v35 = [v33 dictionaryRepresentation], v34, v35))
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    Dictionary._bridgeToObjectiveC()();

    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v39);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_0, v29, v30, "#INIntent %s: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v32);
    OUTLINED_FUNCTION_26_0(v31);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
}

uint64_t outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_70_1();
  }

  return OUTLINED_FUNCTION_19_0();
}

BOOL specialized Optional<A>.isNilOrEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t OUTLINED_FUNCTION_61_7()
{
}

uint64_t OUTLINED_FUNCTION_61_12(uint64_t a1)
{
  *(v1 + 144) = v2;

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_61_15(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_61_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_61_20()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0 + 16;
}

uint64_t OUTLINED_FUNCTION_61_21()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

void OUTLINED_FUNCTION_61_22(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 16);
  *(v2 - 160) = v1;
  *(v2 - 152) = v3;
}

uint64_t INIntent.setPeerInfoMetadata(sharedGlobals:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 24))(v23, v3, v4);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  dispatch thunk of AceServiceInvoker.peerInfo()();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  if (v5 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceIDSIdentifier), v6))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v1 _setOriginatingDeviceIdsIdentifier:v7];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  if (v8 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceRapportEffectiveIdentifier), v9))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v1 _setOriginatingDeviceRapportEffectiveIdentifier:v10];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  if (v11 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceRapportMediaSystemIdentifier), v12))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v1 _setOriginatingDeviceRapportMediaSystemIdentifier:v13];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v14 = [objc_allocWithZone(NSNumber) initWithBool:dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()() & 1];
  [v2 _setIsOwnedByCurrentUser:v14];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = outlined bridged method (pb) of @objc INIntent.airPlayRouteIds.getter(v2);
    if (v19 && (v20 = *(v19 + 16), , v20))
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_424FD0;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      outlined bridged method (mbnn) of @objc INIntent.airPlayRouteIds.setter(v21, v2);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void INIntent.setDeviceMetadata(from:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  [v2 _setPrimaryDisplayDisabled:{DeviceState.isPrimaryDisplayDisabled.getter(v4, v5) & 1}];
  v6 = [v2 _metadata];
  if (v6)
  {
    v7 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    [v7 setIdiom:DeviceState.idiom.getter()];
  }

  v8 = [v2 _metadata];
  if (v8 && (v9 = v8, v10 = [v8 triggerMethod], v9, v10))
  {
    v13 = [v2 _metadata];
    [v13 setTriggerMethod:v10];
  }

  else
  {
    v13 = [v2 _metadata];
    if (!v13)
    {
      return;
    }

    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    [v13 setTriggerMethod:{DeviceState.triggerMethod.getter(v11, v12)}];
  }
}

uint64_t DeviceState.isAnyCar.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_24_3();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_20_0();

  return a5(v9);
}

uint64_t DeviceState.idiom.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 7;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isPad.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 4;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 5;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t DeviceState.triggerMethod.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  dispatch thunk of DeviceState.inputOrigin.getter();
  v3 = OUTLINED_FUNCTION_20_0();
  v5 = v4(v3);
  if (v5 == enum case for InputOrigin.homeButton(_:))
  {
    return 10;
  }

  if (v5 == enum case for InputOrigin.remoteButton(_:))
  {
    return 20;
  }

  if (v5 == enum case for InputOrigin.voiceTrigger(_:))
  {
    return 30;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  v8(v7);
  return 0;
}

double protocol witness for AppResolutionProviding.get(appId:) in conformance AppResolutionProvider@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 192))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

void AppResolutionProvider.get(appId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v7 = (*(*v3 + 104))();
    specialized Dictionary.subscript.getter(a1, a2, v7, v18);
    v16 = v18[1];
    v17 = v18[0];
    v15 = v18[2];

    v9 = v15;
    v8 = v16;
    v10 = v17;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#AppResolution could not retrieve annotated app with an app identifier nil", v14, 2u);
    }

    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a3 = v10;
  a3[1] = v8;
  a3[2] = v9;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 48 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v11;
  a4[3] = v10;
  a4[4] = v12;
  a4[5] = v13;
  return result;
}

void outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

void INIntent.setAppMetadata(from:cachedApp:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[3];
    if (v6)
    {
      v7 = a2[2];

LABEL_6:
      outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v7, v6, v3, &selRef__setLaunchId_);
      goto LABEL_7;
    }
  }

  if (!a1)
  {

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = App.appIdentifier.getter();
  v6 = v8;

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = App.systemExtensionBundleId.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
LABEL_13:
    outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v11, v12, v3, &selRef__setExtensionBundleId_);
    goto LABEL_14;
  }

LABEL_11:
  if (!a1)
  {

    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v11 = App.systemExtensionBundleId.getter();
  v12 = v13;

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_15:
  v14 = App.systemUIExtensionBundleId.getter();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
LABEL_20:
    outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v16, v17, v3, &selRef__setUiExtensionBundleId_);
    return;
  }

LABEL_18:
  if (a1)
  {
    v16 = App.systemUIExtensionBundleId.getter();
    v17 = v18;

    if (!v17)
    {
      return;
    }

    goto LABEL_20;
  }
}

void *specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(_OWORD *a1)
{
  v2 = v1;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v12, v11, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMR);
  swift_allocObject();
  v4 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v11);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v2[2] = v4;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v5 = swift_allocObject();
  v2[3] = v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5 + 16, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v6 = swift_allocObject();
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v12[2];
  v2[7] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v2[8] = v6;
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v8;
  return v2;
}

{
  v2 = v1;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v12, v11, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMR);
  swift_allocObject();
  v4 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v11);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v2[2] = v4;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v5 = swift_allocObject();
  v2[3] = v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5 + 16, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v6 = swift_allocObject();
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v12[2];
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v6;
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v8;
  return v2;
}

void *specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(_OWORD *a1)
{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v8, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v3[3] = v8[2];
  v1[2] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[3] = v3;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v5[3] = a1[2];
  v1[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[5] = v5;
  return v1;
}

{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v8, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v3[3] = v8[2];
  v1[2] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[3] = v3;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v5[3] = a1[2];
  v1[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[5] = v5;
  return v1;
}

uint64_t specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_65_0();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v15, 2u);
    OUTLINED_FUNCTION_26_0(v15);
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v6 + 40);
  *(v6 + 80) = a5 & 1;
  return v6;
}

uint64_t lazy protocol witness table accessor for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t protocol witness for Flow.execute() in conformance CarPlayDirectInvocationFlow<A>(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t CarPlayDirectInvocationFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(CarPlayDirectInvocationFlow.execute(), 0, 0);
}

uint64_t CarPlayDirectInvocationFlow.execute()()
{
  v1 = v0[8];
  if (*(v1 + 80) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#CarPlayDirectInvocationFlow set preferPrintingDialogOnDisplayMode in the sharedGlobals to true", v5, 2u);
    }

    v6 = v0[8];

    v7 = v6[8];
    v8 = v6[9];
    __swift_project_boxed_opaque_existential_1(v6 + 5, v7);
    v9 = (*(v8 + 248))(v7, v8);
    (*(*v9 + 112))(v9);

    v1 = v0[8];
  }

  v10 = v0[9];
  v11 = *(v1 + 32);
  v12 = *(v1 + 16);
  (*(*v11 + 136))(v12);
  v13 = type metadata accessor for NLContextUpdate();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v13);
  v15 = v0[9];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NLContextUpdate?(v0[9]);
  }

  else
  {
    v16 = v0[8];
    v17 = NLContextUpdate.toAceContextUpdate()();
    (*(*(v13 - 8) + 8))(v15, v13);
    v18 = v16[8];
    v19 = v16[9];
    __swift_project_boxed_opaque_existential_1(v16 + 5, v18);
    (*(v19 + 32))(v18, v19);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    AceServiceInvokerAsync.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  (*(*v11 + 128))(v12, *(v0[8] + 24));
  static ExecuteResponse.complete(next:)();

  v20 = v0[1];

  return v20();
}

uint64_t specialized DefaultCarPlayDirectActionFlowStrategy.makeNLContextUpdate(app:)()
{
  if (App.isFirstParty()())
  {
    type metadata accessor for MachineUtteranceBuilder();
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_7_22();

    type metadata accessor for AppOntologyNode();
    static AppOntologyNode.applicationIdNode.getter();
    TerminalOntologyNode.name.getter();

    dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  }

  else
  {
    App.appIdentifier.getter();
    type metadata accessor for MachineUtteranceBuilder();
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_7_22();

    type metadata accessor for AppOntologyNode();
    static AppOntologyNode.applicationIdNode.getter();
    TerminalOntologyNode.name.getter();

    dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  }

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();

  type metadata accessor for NLContextUpdate();
  v0 = OUTLINED_FUNCTION_10_28();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t specialized CarPlayRCHFlowProvider.makeRCHFlow(app:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_8_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v11)
  {
    v12 = v11;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_65_0();
      *v16 = 0;
      OUTLINED_FUNCTION_33(&dword_0, v17, v18, "#CarPlayRCHFlowProvider makeRCHFlow(app, intent): RCHFlow found");
      OUTLINED_FUNCTION_26_0(v16);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_65_0();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#CarPlayRCHFlowProvider: makeRCHFlow(app, intent): no RCHFlow found", v22, 2u);
      OUTLINED_FUNCTION_26_0(v22);
    }

    v23 = type metadata accessor for Parse();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
    type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    v24 = CATWrapperSimple.__allocating_init(options:globals:)();
    v25 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)((v4 + 8), v10, v24);

    v26 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(*v25 + 112))(v26);
    OUTLINED_FUNCTION_15_23();
    v28[1] = v3;
    type metadata accessor for SimpleOutputFlowAsync();
    v12 = Flow.eraseToAnyFlow()();
  }

  return v12;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized CarPlayRCHFlowProvider.makeRCHFlow(app:intent:)(a1, a2);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
}

void static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v193 = v2;
  v194 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_3();
  v174 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_27_3();
  v184 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v177 = v12;
  v178 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_27_3();
  v183 = v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v182 = v15;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_27_3();
  v175 = v17;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_94_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v180 = v20;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v21);
  v23 = &v171 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v179 = v25;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  v28 = &v171 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v30);
  v32 = &v171 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v188 = v34;
  v189 = v33;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_3();
  v190 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v186 = v38;
  v187 = v37;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v39);
  v41 = &v171 - v40;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_27_3();
  v191 = v43;
  OUTLINED_FUNCTION_15_0();
  v44 = type metadata accessor for CATOption();
  v45 = OUTLINED_FUNCTION_21(v44);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_4();
  v192 = v47 - v46;
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v184 = v48;
    v49 = v193;
    outlined init with copy of SignalProviding(v193, &v198);
    v50 = one-time initialization token for instance;
    v51 = v194;

    if (v50 != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for instance);
    }

    v52 = static BiomeEventSender.instance;
    type metadata accessor for StartAudioCallRCHFlowDelegate(0);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_109();

    v183 = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v198, v51, v52, v50, &direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, &direct field offset for StartAudioCallRCHFlowDelegate.appResolved, &direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender);
    outlined init with copy of SignalProviding(v49, &v198);
    type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    v53 = OUTLINED_FUNCTION_47_4();
    type metadata accessor for StartCallCATsSimple(v53);
    static CATOption.defaultMode.getter();
    v54 = CATWrapperSimple.__allocating_init(options:globals:)();
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v55 = swift_allocObject();
    outlined init with take of SPHConversation(&v198, (v55 + 2));
    v55[7] = v51;
    v55[8] = v52;
    v55[9] = v54;
    v56 = v191;
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5AudiobmD0C_Tt2g5();
    v57 = v49[3];
    v58 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v57);
    OUTLINED_FUNCTION_33_16();
    v59(v57, v58);
    v60 = v199;
    v61 = v200;
    __swift_project_boxed_opaque_existential_1(&v198, v199);
    v197[0] = v55;
    (*(v186 + 16))(v41, v56 + *(v185 + 36), v187);
    (*(v188 + 16))(v190, v56, v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_19_7();
    v62 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v63 = v51;
    v64 = v61[1];
    OUTLINED_FUNCTION_4_54();
    v66 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v65, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    v67 = v64(v197, v62, v63, v184, v192, v66, v60, v61);

    v197[0] = v67;
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v68, v69, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartAudioCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_5();

    v70 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd;
    v71 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR;
    v72 = v56;
    goto LABEL_9;
  }

  v187 = v29;
  v188 = v24;
  v189 = v28;
  v190 = v19;
  v191 = v23;
  v74 = v181;
  v73 = v182;
  v173 = v32;
  v75 = v183;
  v76 = v184;
  v77 = v0;
  v78 = v193;
  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (v79)
  {
    v186 = v79;
    v80 = v78;
    outlined init with copy of SignalProviding(v78, &v198);
    v81 = one-time initialization token for instance;
    v82 = v194;

    if (v81 != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for instance);
    }

    v83 = static BiomeEventSender.instance;
    type metadata accessor for StartVideoCallRCHFlowDelegate(0);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_19_7();

    v185 = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v198, v82, v83, v81, &direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, &direct field offset for StartVideoCallRCHFlowDelegate.appResolved, &direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender);
    outlined init with copy of SignalProviding(v80, &v198);
    type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_38_2();
    v84 = CATWrapperSimple.__allocating_init(options:globals:)();
    v85 = type metadata accessor for StartCallCATsSimple(0);
    OUTLINED_FUNCTION_47_5(v85);
    OUTLINED_FUNCTION_38_2();
    v86 = CATWrapperSimple.__allocating_init(options:globals:)();
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v87 = swift_allocObject();
    outlined init with take of SPHConversation(&v198, (v87 + 2));
    v87[7] = v82;
    v87[8] = v84;
    v87[9] = v86;
    v88 = v173;
    OUTLINED_FUNCTION_69();
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5VideobmD0C_Tt2g5();
    v89 = *(v80 + 24);
    v90 = *(v80 + 32);
    v91 = OUTLINED_FUNCTION_93_5();
    __swift_project_boxed_opaque_existential_1(v91, v92);
    OUTLINED_FUNCTION_33_16();
    v93(v89, v90);
    v94 = v199;
    v95 = v200;
    __swift_project_boxed_opaque_existential_1(&v198, v199);
    v197[0] = v87;
    (*(v179 + 16))(v189, &v88[*(v187 + 36)], v188);
    (*(v180 + 16))(v191, v88, v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_61();
    v96 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v97 = v95[1];
    OUTLINED_FUNCTION_4_54();
    v99 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v98, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
    v100 = v97(v197, v96, v82, v186, v192, v99, v94, v95);

    v197[0] = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v101, v102, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_5();

    v70 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd;
    v71 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR;
    v72 = v173;
    goto LABEL_9;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    v103 = v78;
    v104 = v78[3];
    v105 = v78[4];
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v106 = OUTLINED_FUNCTION_61();
    v107(v106, v105);
    v108 = type metadata accessor for AnswerCallCATsSimple(0);
    OUTLINED_FUNCTION_85_3(v108);
    v109 = OUTLINED_FUNCTION_88_4();
    v203 = &type metadata for AudioSessionManager;
    v204 = &protocol witness table for AudioSessionManager;
    v205 = &type metadata for EntitlementChecker;
    v206 = &protocol witness table for EntitlementChecker;
    v199 = v4;
    *&v198 = v109;
    v200 = &protocol witness table for AnswerCallCATsSimple;
    v201 = 0;
    v202 = 0;
    outlined init with copy of AnswerCallOutputStrategy(&v198, v197);
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5();
    outlined init with copy of SignalProviding(v103, &v196);
    outlined init with copy of AnswerCallOutputStrategy(v197, v195);

    OUTLINED_FUNCTION_43_3();
    _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5();
    v111 = v110;
    outlined destroy of AnswerCallOutputStrategy(v197);
    v197[0] = v111;
    OUTLINED_FUNCTION_107_2();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    outlined destroy of AnswerCallOutputStrategy(&v198);
LABEL_18:

    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
    *&v198 = v112;
    v113 = &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd;
    v114 = &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR;
    OUTLINED_FUNCTION_107_2();
    v115 = &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>;
LABEL_17:
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v115, v113, v114);
    Flow.eraseToAnyFlow()();
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    v116 = OUTLINED_FUNCTION_47_4();
    v117 = type metadata accessor for IdentifyIncomingCallerCATsSimple(v116);
    OUTLINED_FUNCTION_85_3(v117);
    v118 = OUTLINED_FUNCTION_88_4();
    v199 = v4;
    *&v198 = v118;
    v200 = &protocol witness table for IdentifyIncomingCallerCATsSimple;
    v201 = 0;
    v202 = 0;
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo010INIdentifyH12CallerIntentC_So010INIdentifyH20CallerIntentResponseCTt3g5Tf4ennn_nAA08Identifyh6CallertU0V_Tg5(&v198, v0, v194, v78);
    outlined init with copy of SignalProviding(v78, v195);
    outlined init with copy of IdentifyIncomingCallerOutputStrategy(&v198, v197);

    v119 = OUTLINED_FUNCTION_43_3();
    v123 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0xfyZ8ResponseCTt3g5Tf4nnen_nAA08IdentifyfytU0V_Tg5(v119, v120, v121, v122);
    outlined destroy of IdentifyIncomingCallerOutputStrategy(&v198);
    *&v198 = v123;
    v113 = &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd;
    v114 = &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR;
    OUTLINED_FUNCTION_107_2();
    v115 = &lazy protocol witness table cache variable for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>;
    goto LABEL_17;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v124 = swift_dynamicCastObjCClass();
  if (v124)
  {
    v191 = v124;
    type metadata accessor for StartCallRCHFlowDelegate(0);
    outlined init with copy of SignalProviding(v78, &v198);
    v125 = v194;
    swift_retain_n();
    v190 = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v198, v125);
    outlined init with copy of SignalProviding(v78, &v198);
    type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_67_9();
    v189 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_67_9();
    v126 = CATWrapperSimple.__allocating_init(options:globals:)();
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v127 = swift_allocObject();
    outlined init with take of SPHConversation(&v198, (v127 + 2));
    v128 = v189;
    v127[7] = v194;
    v127[8] = v128;
    v127[9] = v126;
    static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    OUTLINED_FUNCTION_33_16();
    v129 = OUTLINED_FUNCTION_14_6();
    v130(v129);
    v131 = v199;
    v189 = v200;
    v193 = __swift_project_boxed_opaque_existential_1(&v198, v199);
    v197[0] = v127;
    v132 = *(v74 + 36);
    v133 = *(v73 + 16);
    v172 = v77;
    v133(v175, v77 + v132, v176);
    (*(v177 + 16))(v75, v77, v178);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_11_0();
    v134 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v135 = v189;
    v136 = *(v189 + 8);
    OUTLINED_FUNCTION_4_54();
    v138 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v137, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
    v139 = v136(v197, v134, v194, v191, v192, v138, v131, v135);

    v197[0] = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v140, v141, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_61();

    v70 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd;
    v71 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR;
    v72 = v172;
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, v70, v71);
    __swift_destroy_boxed_opaque_existential_1(&v198);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v142 = swift_dynamicCastObjCClass();
  if (v142)
  {
    v191 = v142;
    v143 = v78;
    outlined init with copy of SignalProviding(v78, &v198);
    type metadata accessor for SearchCallHistoryRCHFlowDelegate(0);
    OUTLINED_FUNCTION_12_8();
    v190 = v144;
    swift_allocObject();
    v145 = SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(&v198);
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA06Searchb7HistoryqD0C_Tt2g5(v145, v194, v76);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v146 = type metadata accessor for Logger();
    __swift_project_value_buffer(v146, static Logger.siriPhone);
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = OUTLINED_FUNCTION_65_0();
      *v149 = 0;
      _os_log_impl(&dword_0, v147, v148, "#PhoneCallFlowFactory using Response Framework for INSearchCallHistoryIntent", v149, 2u);
      v150 = v149;
      v143 = v78;
      OUTLINED_FUNCTION_26_0(v150);
    }

    v151 = v143;
    outlined init with copy of SignalProviding(v143, &v198);
    v152 = type metadata accessor for SearchCallHistoryCATsSimple(0);
    OUTLINED_FUNCTION_85_3(v152);
    v153 = OUTLINED_FUNCTION_88_4();
    type metadata accessor for SearchCallHistoryHandleFlowStrategy();
    swift_allocObject();
    v193 = SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(&v198, v153);
    *&v198 = v193;
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy, type metadata accessor for SearchCallHistoryHandleFlowStrategy);
    static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
    RCHChildFlowProducers.handleIntentFlowCompletion.setter();
    v155 = *(v151 + 24);
    v156 = *(v151 + 32);
    v157 = OUTLINED_FUNCTION_69_8();
    __swift_project_boxed_opaque_existential_1(v157, v158);
    OUTLINED_FUNCTION_33_16();
    v159(v155, v156);
    v160 = v199;
    v161 = v200;
    OUTLINED_FUNCTION_28_0(&v198, v199);
    v162 = v174;
    (*(*(v154 - 8) + 16))(v174, v76, v154);
    __swift_storeEnumTagSinglePayload(v162, 0, 1, v154);
    v163 = v161[5];
    v164 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for SearchCallHistoryRCHFlowDelegate);
    v163(v145, v194, v191, v162, v190, v164, v160, v161);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v162, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v198);
    type metadata accessor for SearchCallHistoryFlow(0);

    v165 = OUTLINED_FUNCTION_72();
    *&v198 = SearchCallHistoryFlow.__allocating_init(delegate:rchFlow:)(v165, v166);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryFlow and conformance SearchCallHistoryFlow, type metadata accessor for SearchCallHistoryFlow);
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_33_3();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v76, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMR);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v167 = type metadata accessor for Logger();
    __swift_project_value_buffer(v167, static Logger.siriPhone);
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = OUTLINED_FUNCTION_65_0();
      *v170 = 0;
      _os_log_impl(&dword_0, v168, v169, "#PhoneCallFlowFactory Failed to retrieve a recognized phone domain SiriKitIntent", v170, 2u);
      OUTLINED_FUNCTION_26_0(v170);
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

uint64_t type metadata accessor for StartCallRCHFlowDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallRCHFlowDelegate;
  if (!type metadata singleton initialization cache for StartCallRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(void *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v9);
  outlined init with copy of SignalProviding(a1, v8);
  v5 = swift_allocObject();
  outlined init with take of SPHConversation(v8, v5 + 16);
  v6 = (*(v2 + class metadata base offset for StartCallRCHFlowDelegate + 24))(v9, partial apply for implicit closure #1 in StartCallRCHFlowDelegate.init(sharedGlobals:appResolved:), v5, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_20E8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t StartCallRCHFlowDelegate.init(sharedGlobals:templatingService:appResolved:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of SignalProviding(a1, v5 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13LazyContainerCyAA05StartB20CatTemplatingServiceCGMd, &_s27PhoneCallFlowDelegatePlugin13LazyContainerCyAA05StartB20CatTemplatingServiceCGMR);
  swift_allocObject();

  *(v5 + direct field offset for StartCallRCHFlowDelegate.dialogTemplatingContainer) = specialized LazyContainer.init(load:)(partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow), v10);
  *(v5 + direct field offset for StartCallRCHFlowDelegate.appResolved) = a4;

  v11 = BaseRCHFlowDelegate.init()();

  StartCallRCHFlowDelegate.prewarm()();
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v11 selector:"reloadSiriLanguage" name:AFLanguageCodeDidChangeNotification object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_21084()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t specialized LazyContainer.init(load:)(uint64_t a1, uint64_t a2)
{
  v13[0] = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9 - 8);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v13[2] = 0x5F797A614CLL;
  v13[3] = 0xE500000000000000;
  v13[1] = type metadata accessor for StartCallCatTemplatingService(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin05StartB20CatTemplatingServiceCmMd, &_s27PhoneCallFlowDelegatePlugin05StartB20CatTemplatingServiceCmMR);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = v11;
  *(v2 + 24) = a1;
  *(v2 + 32) = v13[0];
  return v2;
}

uint64_t type metadata accessor for CNContactStore(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t type metadata accessor for StartCallCatTemplatingService(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallCatTemplatingService;
  if (!type metadata singleton initialization cache for StartCallCatTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartCallRCHFlowDelegate.prewarm()()
{
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v24 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  static Signpost.event(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v20 = static OS_dispatch_queue.global(qos:)();
  v21 = OUTLINED_FUNCTION_63();
  v22(v21);
  v25[4] = closure #1 in StartCallRCHFlowDelegate.prewarm();
  v25[5] = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v25[3] = &block_descriptor_10;
  v23 = _Block_copy(v25);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v2 + 8))(v6, v0);
  (*(v8 + 8))(v12, v24);
  OUTLINED_FUNCTION_65();
}

void static Signpost.event(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v11, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    if (v3)
    {
LABEL_11:
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = StaticString.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v15 + 4) = v19;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v20, v3, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();

LABEL_12:

      (*(v6 + 8))(v10, v4);
      OUTLINED_FUNCTION_65();
      return;
    }

    __break(1u);
  }

  if (v3 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v14)
  {
    if (v3 >> 16 <= 0x10)
    {
      v3 = &v22;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void OUTLINED_FUNCTION_69_1(uint64_t a1@<X8>)
{
  *v4 = a1;
  v4[1] = v1;
  v4[2] = v5 + 12;
  v4[3] = v2 | 0x8000000000000000;
  v4[4] = v5;
  v4[5] = (v3 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_69_6()
{
}

uint64_t *OUTLINED_FUNCTION_55_2()
{
  *(v0 + 72) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 48));
}

uint64_t OUTLINED_FUNCTION_69_11()
{
}

uint64_t OUTLINED_FUNCTION_69_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_69_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_69_14()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_69_15()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
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

uint64_t lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallDisplayTextCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallDisplayTextCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallDisplayTextCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallDisplayTextCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t PhoneCallDisplayTextCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in StartCallRCHFlowDelegate.prewarm()()
{
  static Signpost.begin(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  Signpost.OpenSignpost.end()();
}

uint64_t type metadata accessor for StartCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallCATsSimple;
  if (!type metadata singleton initialization cache for StartCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartCallCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return StartCallCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t StartCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  outlined init with copy of SpeakableString?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

void static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v78 = v6;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v73 = v10;
  v74 = v9;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_27_3();
  v75 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v71 = v14;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_27_3();
  v72 = v16;
  OUTLINED_FUNCTION_15_0();
  v70 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v68 - v23;
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0ibmD0C_Tt2g5(v5, v3, v8);
  outlined init with copy of SignalProviding(v1, &v80);
  v25 = swift_allocObject();
  outlined init with take of SPHConversation(&v80, v25 + 16);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v1, &v80);
  OUTLINED_FUNCTION_102_0();
  v27 = swift_allocObject();
  outlined init with take of SPHConversation(&v80, v27 + 16);
  *(v27 + 56) = v5;
  v69 = v5;

  v76 = v13;
  v77 = v26;
  v28 = v8;
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v29 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v30 = OUTLINED_FUNCTION_64();
  v31(v30, v29);
  OUTLINED_FUNCTION_40_9();
  LOBYTE(v29) = (*(v32 + 136))();

  if (v29 & 1) != 0 || (v33 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v1[3]), v34 = OUTLINED_FUNCTION_33_3(), v35(v34, v33), __swift_project_boxed_opaque_existential_1(&v80, v81), OUTLINED_FUNCTION_33_3(), dispatch thunk of DeviceState.inputOrigin.getter(), v36 = v70, (*(v18 + 104))(v21, enum case for InputOrigin.assistantTextInput(_:), v70), v37 = specialized == infix<A>(_:_:)(v24, v21), v38 = *(v18 + 8), v38(v21, v36), v38(v24, v36), __swift_destroy_boxed_opaque_existential_1(&v80), (v37))
  {
    v39 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v40 = OUTLINED_FUNCTION_11_0();
    v41(v40, v39);
    v42 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, v81);
    v43 = OUTLINED_FUNCTION_11_0();
    v44(v43, v42);
    v45 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v46 = OUTLINED_FUNCTION_11_0();
    v48 = v47(v46, v45);
    __swift_destroy_boxed_opaque_existential_1(v79);
    __swift_destroy_boxed_opaque_existential_1(&v80);
    if (v48)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.siriPhone);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_65_0();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "#PhoneCallFlowFactory: detected ongoing call, adding RCHChildFlowProducers for ongoing call", v52, 2u);
        OUTLINED_FUNCTION_26_0(v52);
      }

      static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(v8 + v77, v69, v1);
    }
  }

  v53 = v78;
  if ([v78 preferredCallProvider] == &dword_0 + 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.siriPhone);
    v55 = v53;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      _os_log_impl(&dword_0, v56, v57, "#PhoneCallFlowFactory Received FaceTime request for intent: %@", v58, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v59);
      OUTLINED_FUNCTION_26_0(v58);
    }

    v61 = v76;
    v62 = v77;
    v64 = RCHChildFlowProducersAsync.confirmIntentFlowProducer.getter();
    if (v64)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    (*(v71 + 16))(v72, v28 + v62, v61);
    (*(v73 + 16))(v75, v28, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    OUTLINED_FUNCTION_64();
    v66 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    outlined init with copy of SignalProviding(v1, &v80);
    OUTLINED_FUNCTION_70();
    v67 = swift_allocObject();
    outlined init with take of SPHConversation(&v80, (v67 + 2));
    v67[7] = v64;
    v67[8] = v65;
    v67[9] = v66;
    RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t sub_22804()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (*(v0 + 56))
  {
  }

  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_22850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0ibmD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v6 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v6 - 8);
  v78 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  v80 = a3;
  v81 = a1;
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA05StartbqD0C_Tt2g5(a1, a2, a3);
  v79 = direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, v102);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  outlined init with take of SPHConversation(v102, v9 + 24);
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter();
  v76 = type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v62 = CATWrapper.__allocating_init(options:globals:)();
  v10 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v11 = v10;
  v66 = v10;
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v75 = type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v61 = CATWrapperSimple.__allocating_init(options:globals:)();
  v74 = type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  v73 = type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  v59 = CATWrapperSimple.__allocating_init(options:globals:)();
  v13 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v67 = v13;
  v64 = CATWrapper.__allocating_init(options:globals:)();
  v72 = type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v58 = CATWrapperSimple.__allocating_init(options:globals:)();
  v14 = type metadata accessor for ResponseFactory();
  v77 = v14;
  swift_allocObject();
  v65 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v15 = type metadata accessor for AppInfoBuilder();
  v68 = v15;
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v17 = swift_allocObject();
  v100 = v11;
  v101 = &protocol witness table for StartCallCATPatternsExecutor;
  v57 = v12;
  v99[0] = v12;
  v98 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v97 = v13;
  v96[0] = v64;
  *(v17 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = _swiftEmptyArrayStorage;
  v95 = &protocol witness table for AppInfoBuilder;
  v94 = v15;
  v93[0] = v16;
  *(v17 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v17 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v17 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  outlined init with copy of SignalProviding(v99, v92);
  outlined init with copy of SignalProviding(v96, v91);
  outlined init with copy of SignalProviding(v102, v90);
  outlined init with copy of SignalProviding(v93, v89);
  v87 = v14;
  v88 = &protocol witness table for ResponseFactory;
  v86[0] = v65;

  static DialogPhase.completion.getter();
  v69 = closure #1 in AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  OutputGenerationManifest.init(dialogPhase:_:)();
  v18 = v81;
  v17[2] = v81;
  outlined init with copy of SignalProviding(v18 + v79, (v17 + 3));
  v17[8] = v62;
  outlined init with copy of SignalProviding(v92, (v17 + 9));
  v19 = v60;
  v17[14] = v61;
  v17[15] = v19;
  v17[16] = v59;
  outlined init with copy of SignalProviding(v91, (v17 + 17));
  v17[22] = v58;
  outlined init with copy of SignalProviding(v86, (v17 + 23));
  outlined init with copy of SignalProviding(v90, (v17 + 28));
  outlined init with copy of SignalProviding((v17 + 3), v83);
  v20 = v84;
  v21 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v22 = *(v21 + 72);

  v23 = v22(v20, v21);

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v86);
  outlined init with copy of SignalProviding(v23 + 160, v82);

  outlined init with take of SPHConversation(v82, (v17 + 33));
  __swift_destroy_boxed_opaque_existential_1(v83);
  outlined init with take of SPHConversation(v89, (v17 + 38));
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  *&v102[0] = v17;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentContactNeedsDisambiguationFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  static CATOption.defaultMode.getter();
  v62 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v24 = v66;
  v65 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v61 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v59 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v25 = v67;
  v26 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v58 = CATWrapperSimple.__allocating_init(options:globals:)();
  v27 = v77;
  swift_allocObject();
  v28 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v29 = v68;
  v30 = swift_allocObject();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v31 = swift_allocObject();
  v100 = v24;
  v101 = &protocol witness table for StartCallCATPatternsExecutor;
  v99[0] = v65;
  v97 = v25;
  v98 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v57 = v26;
  v96[0] = v26;
  v94 = v29;
  v95 = &protocol witness table for AppInfoBuilder;
  v93[0] = v30;
  v32 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
  v33 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v31 + v32, 1, 1, v33);
  *(v31 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  outlined init with copy of SignalProviding(v99, v92);
  outlined init with copy of SignalProviding(v96, v91);
  outlined init with copy of SignalProviding(v102, v90);
  outlined init with copy of SignalProviding(v93, v89);
  v87 = v27;
  v88 = &protocol witness table for ResponseFactory;
  v86[0] = v28;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v34 = v81;
  v31[2] = v81;
  outlined init with copy of SignalProviding(v34 + v79, (v31 + 3));
  v31[8] = v62;
  outlined init with copy of SignalProviding(v92, (v31 + 9));
  v35 = v60;
  v31[14] = v61;
  v31[15] = v35;
  v31[16] = v59;
  outlined init with copy of SignalProviding(v91, (v31 + 17));
  v31[22] = v58;
  outlined init with copy of SignalProviding(v86, (v31 + 23));
  outlined init with copy of SignalProviding(v90, (v31 + 28));
  outlined init with copy of SignalProviding((v31 + 3), v83);
  v37 = v84;
  v36 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v38 = *(v36 + 72);

  v39 = v38(v37, v36);

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v86);
  outlined init with copy of SignalProviding(v39 + 160, v82);

  outlined init with take of SPHConversation(v82, (v31 + 33));
  __swift_destroy_boxed_opaque_existential_1(v83);
  outlined init with take of SPHConversation(v89, (v31 + 38));
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  *&v102[0] = v31;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentConfirmationFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentConfirmationFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v40 = swift_allocObject();
  *(v40 + 16) = v81;
  *(v40 + 24) = v63;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  static CATOption.defaultMode.getter();
  v76 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v41 = v66;
  v42 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v75 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v74 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v73 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v43 = v67;
  v44 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v72 = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_allocObject();
  v45 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v46 = v68;
  v47 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v48 = swift_allocObject();
  v100 = v41;
  v101 = &protocol witness table for StartCallCATPatternsExecutor;
  v71 = v42;
  v99[0] = v42;
  v97 = v43;
  v98 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v70 = v44;
  v96[0] = v44;
  v94 = v46;
  v95 = &protocol witness table for AppInfoBuilder;
  v93[0] = v47;
  *(v48 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  outlined init with copy of SignalProviding(v99, v92);
  outlined init with copy of SignalProviding(v96, v91);
  outlined init with copy of SignalProviding(v102, v90);
  outlined init with copy of SignalProviding(v93, v89);
  v87 = v77;
  v88 = &protocol witness table for ResponseFactory;
  v86[0] = v45;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v49 = v81;
  v48[2] = v81;
  outlined init with copy of SignalProviding(v49 + v79, (v48 + 3));
  v48[8] = v76;
  outlined init with copy of SignalProviding(v92, (v48 + 9));
  v50 = v74;
  v48[14] = v75;
  v48[15] = v50;
  v48[16] = v73;
  outlined init with copy of SignalProviding(v91, (v48 + 17));
  v48[22] = v72;
  outlined init with copy of SignalProviding(v86, (v48 + 23));
  outlined init with copy of SignalProviding(v90, (v48 + 28));
  outlined init with copy of SignalProviding((v48 + 3), v83);
  v51 = v84;
  v52 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v53 = *(v52 + 72);

  v54 = v53(v51, v52);

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v86);
  outlined init with copy of SignalProviding(v54 + 160, v82);

  outlined init with take of SPHConversation(v82, (v48 + 33));
  __swift_destroy_boxed_opaque_existential_1(v83);
  outlined init with take of SPHConversation(v89, (v48 + 38));
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  *&v102[0] = v48;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentHandleIntentFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentHandleIntentFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  return RCHChildFlowProducers.handleIntentFlowCompletion.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D74441LL8delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA05StartbqD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = type metadata accessor for CATOption();
  __chkstk_darwin(v5 - 8);
  v6 = a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  v7 = *(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 24);
  v8 = *(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals), v7);
  (*(v8 + 104))(v50, v7, v8);
  v9 = v51;
  v10 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v11 = *(v10 + 56);
  v12 = type metadata accessor for StartCallRCHFlowDelegate(0);
  v13 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartCallRCHFlowDelegate);
  v11(a1, v12, v13, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v41 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  v39 = a3;
  v40 = v14;
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v6, v50);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v37 = CATWrapper.__allocating_init(options:globals:)();
  v15 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  v17 = type metadata accessor for AppInfoBuilder();
  v18 = swift_allocObject();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMR);
  v19 = swift_allocObject();
  v48 = v18;
  v49 = v16;
  v47[3] = &type metadata for LabelTemplatesProvider;
  v47[4] = &protocol witness table for LabelTemplatesProvider;
  v20 = swift_allocObject();
  v47[0] = v20;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  v46[3] = &type metadata for TCCTemplatesProvider;
  v46[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(v50, v19 + 272);
  outlined init with copy of SignalProviding(v47, v19 + 192);
  outlined init with copy of SignalProviding(v46, v19 + 232);
  v22 = v51;
  v21 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v23 = *(v21 + 136);

  v23(v43, v22, v21);
  v25 = v44;
  v24 = v45;
  v26 = __swift_project_boxed_opaque_existential_1(v43, v44);
  v27 = v51;
  v28 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v29 = (*(v28 + 8))(v42, v27, v28);
  v30 = __chkstk_darwin(v29);
  v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v26, v25, v30);
  v34 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v37, &v49, v32, &v48, v42, v19, v25, v15, v17, *(v24 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder);

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v50[0] = v34;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  return RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t sub_23BD8()
{

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlowProducers<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  v7 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);

  return static RCHChildFlowProducers.withRCHFlowDelegate<A>(delegate:)(a1, v6, v7, a2, a3);
}

uint64_t type metadata accessor for PhoneCallCommonCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATs;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATs.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallCommonCATs.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t PhoneCallCommonCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t type metadata accessor for PhoneCallCommonCATPatternsExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATPatternsExecutor;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t specialized SharedGlobalsProviding.responseGenerator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23[3] = a8;
  v23[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_40();
  (*(v15 + 32))();
  v22[3] = a7;
  v22[4] = a10;
  __swift_allocate_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_40();
  (*(v16 + 32))();
  v21[3] = a9;
  v21[4] = a12;
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_40();
  (*(v17 + 32))();
  *(a6 + 56) = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v23, a6 + 64);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v22, a6 + 104);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v21, a6 + 144);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, a6 + 16);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6 + 16, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  LOBYTE(a1) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  *(a6 + 184) = a1 & 1;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a6;
}

uint64_t type metadata accessor for StartCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallCATs;
  if (!type metadata singleton initialization cache for StartCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v25, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v29, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t OUTLINED_FUNCTION_55_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void StartCallCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_2_4();
  v25 = type metadata accessor for CATOption();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v27);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v28);
  outlined init with copy of SpeakableString?(v20, &a9 - v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_80_8();
  v30();
  OUTLINED_FUNCTION_121_2();
  CATWrapper.init(templateDir:options:globals:)();
  (*(v26 + 8))(v24, v25);
  outlined destroy of SpeakableString?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

void OUTLINED_FUNCTION_139_0(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  strcpy((v2 + 128), "isMyriadCall");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 120) = a13;
  result = v14 + 120;
  *(v14 + 128) = v13;
  return result;
}

void OUTLINED_FUNCTION_121_3()
{
  *(v3 + 240) = v2 & 1;
  *(v3 + 264) = v0;
  strcpy((v3 + 272), "isWalkieTalkie");
  *(v3 + 287) = -18;
  *(v3 + 288) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_110_0(float a1)
{
  *v2 = a1;
  *(v3 - 184) = v1;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1)
{
  *(v1 + 152) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_79_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = a2 & 0xFFFFFFFFFFFFLL | 0x664F000000000000;
  v2[11] = 0xED000070756F7247;
  return result;
}

void OUTLINED_FUNCTION_92_2(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 128) = 0;
  *(v5 - 120) = a5;

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0xD000000000000014;
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1)
{

  return type metadata accessor for ParameterResolutionRecord();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return ContactHandleQuery.init(type:label:value:)();
}

uint64_t PhoneCallFeatureManager.shouldEnableSiriPhoneInCall.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v4);
  OUTLINED_FUNCTION_1_6(v4);
  v1 = OUTLINED_FUNCTION_4_3();
  v2(v1);
  return OUTLINED_FUNCTION_3_67(v4);
}

void *OUTLINED_FUNCTION_32_4()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

unint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void *OUTLINED_FUNCTION_32_7()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_32_8()
{
  v2 = *(v0 + 296);
  v3 = *(v0 + 288);

  return outlined init with copy of ButtonConfigurationModel(v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_10()
{
  v1 = *(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 - 168));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return type metadata accessor for SiriKitEvent();
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  *(v1 + 176) = *(v0 + 16);

  return outlined init with copy of SignalProviding(v0 + 288, v1 + 184);
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return ContactHandleQuery.init(type:label:value:)();
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_25()
{
}

uint64_t OUTLINED_FUNCTION_98_4()
{
  *(v1 + 64) = *(v0 + 160);

  return outlined init with copy of SignalProviding(v0 + 448, v1 + 72);
}

uint64_t OUTLINED_FUNCTION_98_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[21] = a1;
  v2[22] = a2;
  v2[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_0()
{
}

id OUTLINED_FUNCTION_87_1(void *a1)
{
  v7 = *(v1 + 144);
  a1[2] = v3;
  a1[3] = v7;
  a1[4] = v4;
  a1[5] = v2;
  a1[6] = *(v1 + 128);
  a1[7] = v5;

  return v2;
}

uint64_t OUTLINED_FUNCTION_87_4()
{

  return outlined init with copy of SignalProviding(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_87_7()
{
  *(v0 + 80) = 0x6574736575716572;
  *(v0 + 88) = 0xEF656C646E614864;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_9()
{
}

uint64_t SiriKitFlowFactory.makeRCHFlow<A>(strategy:childFlowFactory:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a4;
  OUTLINED_FUNCTION_10_69();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = type metadata accessor for RCHFlowFactory();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  OUTLINED_FUNCTION_49_0();
  v18 = __chkstk_darwin(v17);
  v20 = v23 - v19;
  (*(v9 + 16))(v13, a1, a5, v18);

  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v21 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:hasUserBeenAuthorizedForApp:)();
  (*(v16 + 8))(v20, v14);
  return v21;
}

void *INIntent.parameterMetadata.getter()
{
  if (!outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()([v0 _intentInstanceDescription]))
  {
LABEL_19:
    __break(1u);

    __break(1u);
    return result;
  }

  v10 = specialized Array._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(&v10);

  v1 = v10;
  v2 = specialized Array.count.getter(v10);
  if (v2)
  {
    v3 = v2;
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v3 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_5_26();
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v1 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(v1 + 8 * i + 32);
        }

        v7 = v6;
        outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v6, &selRef_name);
        if (!v8)
        {
          goto LABEL_18;
        }

        [v7 resolveSelector];
        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v5 == v3)
        {

          return v10;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()(void *a1)
{
  v2 = [a1 slotDescriptions];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized Array._copyToContiguousArray()()
{
  OUTLINED_FUNCTION_69_0();
  if (v3)
  {
    v6 = v2;
    v7 = v1;
    v8 = OUTLINED_FUNCTION_43_5();
    if (v8)
    {
      v9 = v8;
      v4 = v7(v8, 0);
      v6(v4 + 32, v9, v0);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (v0 & 0xFFFFFFFFFFFFFF8);
}

{
  return specialized Array._copyToContiguousArray()();
}

{
  return specialized Array._copyToContiguousArray()();
}

{
  return specialized Array._copyToContiguousArray()();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  *(v0 + 16) = 2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_34_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3016));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
}

uint64_t OUTLINED_FUNCTION_34_22()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_34_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

__n128 *OUTLINED_FUNCTION_34_24(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "callCapability");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_25()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_34_27(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_29@<X0>(uint64_t a1@<X8>)
{
  v2[21] = v1;
  v2[22] = a1;
  v2[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_30()
{
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13SABaseCommandC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_41_3();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [INIntentSlotDescription] and conformance [A], &_sSaySo23INIntentSlotDescriptionCGMd, &_sSaySo23INIntentSlotDescriptionCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23INIntentSlotDescriptionCGMd, &_sSaySo23INIntentSlotDescriptionCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SANotificationOnDeviceObject, SANotificationOnDeviceObject_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SANotificationOnDeviceObject] and conformance [A], &_sSaySo28SANotificationOnDeviceObjectCGMd, &_sSaySo28SANotificationOnDeviceObjectCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SANotificationOnDeviceObjectCGMd, &_sSaySo28SANotificationOnDeviceObjectCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [INCallRecord] and conformance [A], &_sSaySo12INCallRecordCGMd, &_sSaySo12INCallRecordCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12INCallRecordCGMd, &_sSaySo12INCallRecordCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for App();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [App] and conformance [A], &_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A], &_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SiriKitDisambiguationItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SiriKitDisambiguationItem] and conformance [A], &_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A], &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PhonePerson(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [PhonePerson] and conformance [A], &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [DialogExecutionResult] and conformance [A], &_sSaySo21DialogExecutionResultCGMd, &_sSaySo21DialogExecutionResultCGMR, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo21DialogExecutionResultCGMd, &_sSaySo21DialogExecutionResultCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0(NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0);
    *a1 = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0;
  }

  v4 = *(NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 + 16);
  v6[0] = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    while (2)
    {
      v20 = v4;
      v21 = a3;
      v6 = *(v22 + 8 * a3);
      v19 = v5;
      do
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 rank];
        if (!v10)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v11 = v10;
        v12 = [v10 integerValue];

        v13 = [v9 rank];
        if (!v13)
        {
          goto LABEL_13;
        }

        v14 = v13;
        v15 = [v13 integerValue];

        if (v12 >= v15)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_14;
        }

        v16 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v16;
        v4 -= 8;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v21 + 1;
      v4 = v20 + 8;
      v5 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v38 = type metadata accessor for Date();
  __chkstk_darwin(v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 date];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 date];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = static Date.< infix(_:_:)();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

{
  v38 = type metadata accessor for Date();
  __chkstk_darwin(v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 date];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 date];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = static Date.< infix(_:_:)();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void OUTLINED_FUNCTION_20_14(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

__n128 *OUTLINED_FUNCTION_20_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_20()
{
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_20_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_20_29(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return ContactQuery.handle.setter();
}

uint64_t OUTLINED_FUNCTION_20_33()
{

  return Input.init(parse:)();
}

void OUTLINED_FUNCTION_20_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_20_40(uint64_t result)
{
  v2[24] = v1;
  v2[27] = result;
  v2[28] = 0x5074737269467369;
  v2[29] = 0xEF70704179747261;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{
}

uint64_t OUTLINED_FUNCTION_20_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_20_45(uint64_t result)
{
  *(v1 - 408) = result;
  *(v1 - 272) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_47()
{

  return SPHCallCenter.onQueue<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_asyncLet_begin();
}

void OUTLINED_FUNCTION_33_9()
{
  v2 = *(*(v1 - 376) + 16);
  *(v1 - 200) = v0;
  *(v1 - 192) = v2;
}

void OUTLINED_FUNCTION_33_14(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_33_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_21()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_33_28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 73) = a3;
  *(v5 + 16) = a2;
  *(v5 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_29(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CarPlayDirectInvocationFlow<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CarPlayDirectInvocationFlow(0, *(a1 + 80), a3, a4);

  return Flow<>.exitValue.getter(v5, a2);
}

uint64_t CarPlayDirectInvocationFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t CarPlayDirectInvocationFlow.__deallocating_deinit()
{
  CarPlayDirectInvocationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.__deallocating_deinit()
{
  AnyIntentCarPlayDirectActionFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

void *AnyIntentCarPlayDirectActionFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t AnyIntentCarPlayRCHFlowProvider.__deallocating_deinit()
{
  AnyIntentCarPlayRCHFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyIntentCarPlayRCHFlowProvider.deinit()
{

  return v0;
}

uint64_t objectdestroy_5Tm()
{

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t objectdestroy_5Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_5Tm_1()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentRCHFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6removeyxSgxF27PhoneCallFlowDelegatePlugin0eF6RecordC7OptionsV_Tgq5_0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6update4withxSgx_tF27PhoneCallFlowDelegatePlugin0fG6RecordC7OptionsV_Tgq5_0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t _sSo23INCallRecordTypeOptionsVs10SetAlgebraSCsACP5unionyxxnFTW_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss9OptionSetPsE5unionyxxF27PhoneCallFlowDelegatePlugin0dE6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallRecordTypeOptionsVs10SetAlgebraSCsACP11subtractingyxxFTW_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss10SetAlgebraPsE11subtractingyxxF27PhoneCallFlowDelegatePlugin0dE6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallCapabilityOptionsVs10SetAlgebraSCsACP19symmetricDifferenceyxxnFTW_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss9OptionSetPsE19symmetricDifferenceyxxF27PhoneCallFlowDelegatePlugin0eF6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallRecordTypeOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayH0x0gH7ElementQzd_tcfCTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)(a2);
  *a1 = result;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePerson.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_26B88()
{

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26C24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_26EE4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_26F3C()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26FFC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2703C()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_270E8()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2732C()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_27368()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_273A4()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2746C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_274AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_275A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_275F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_276B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_278D4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 128))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27918()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 152))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2795C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 176))();
  *v0 = result;
  return result;
}

uint64_t sub_279A0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 200))();
  *v0 = result;
  return result;
}

uint64_t sub_279E4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 224))();
  *v0 = result;
  return result;
}

uint64_t sub_27AFC()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_27B3C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_27B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_27BC8()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_27BFC()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_27C30()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_27D50()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_27D88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_27DE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_27E40()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_27F04()
{
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_40();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_2805C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2809C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_281DC@<X0>(uint64_t *a1@<X8>)
{
  result = AppDescription.rskeCommand.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_282EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_28478()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_284B8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_28510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_28568()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_285D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_28680()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_286F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_28788@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 160))();
  *a1 = result;
  return result;
}

__n128 sub_287D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_28868()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_288C4()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_289B0()
{
  v1 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_28ABC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_28B30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_28C10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_28CA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_28CE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28D60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_28D98()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

char *_sSp14moveInitialize4from5countySpyxG_SitF27PhoneCallFlowDelegatePlugin8SmsGroup_p_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_24(result, a3, a2);
  }

  return result;
}

__n128 sub_28E68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28E74()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_28EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

__n128 sub_28F40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28F80@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 320))();
  *a1 = result;
  return result;
}

__n128 sub_28FD8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28FE4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 344))();
  *a1 = result;
  return result;
}

uint64_t sub_29064()
{
  OUTLINED_FUNCTION_22_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_7();

  v1 = OUTLINED_FUNCTION_66_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_29124()
{
  OUTLINED_FUNCTION_22_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = OUTLINED_FUNCTION_66_5();
  v7(v6);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_29250()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_292A8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_29310()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_133();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_133();
  type metadata accessor for DisambiguationResult();
  type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_7();

  v0 = OUTLINED_FUNCTION_66_5();
  v1(v0);
  v2 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_293F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  OUTLINED_FUNCTION_7();

  v0 = OUTLINED_FUNCTION_66_5();
  v1(v0);
  v2 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_294B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_294EC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 152))();
  *a1 = result;
  return result;
}

__n128 sub_29544(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_29558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_295E4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_29640()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_296B4()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_13_2(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v5, v1);

  v10 = type metadata accessor for NLContextUpdate();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
  }

  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_2986C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_298B4()
{
  OUTLINED_FUNCTION_43_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_23_5();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_29960()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_299A0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 304))();
  *a1 = result;
  return result;
}

__n128 sub_29A40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_29A4C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 328))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_29B7C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_29BEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

BOOL _ss9OptionSetPs7ElementQzRszrlE6insertySb8inserted_x17memberAfterInserttxF27PhoneCallFlowDelegatePlugin0iJ6RecordC7OptionsV_Tgq5_0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_29D28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29D60()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_29EA8()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_29F30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29FDC()
{
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2A010()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2A04C()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_2A134(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2A144()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2A178()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 112))();
  *v0 = result;
  return result;
}

uint64_t sub_2A1BC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 136))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2A204()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 120))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2A278()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 168))();
  *v0 = result;
  return result;
}

uint64_t sub_2A2C0()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2A304()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A33C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2A380()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A484()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2A564()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2A614@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_2A6C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2A774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2A86C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 176))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_2A8C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2A8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  OUTLINED_FUNCTION_23_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2A960()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return _swift_deallocObject(v0, 120, 7);
}

__n128 sub_2AA54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2AA9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AAE0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_2ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for ContactResolverConfig();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2AC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for ContactResolverConfig();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2AD80()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2AE10()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2AF84()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2AFC8()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2B128()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2B170()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B1B0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2B274()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2B308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B38C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B3D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2B420()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_2B498()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for TemplatingResult();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v3 + v4 + 87) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  __swift_destroy_boxed_opaque_existential_1((v7 + 32));

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2B600()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2B690()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B6BC()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelButtonText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B6E8()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelledText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B714()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callButtonText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B740()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callingLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B76C()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.emergencyServicesLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B798()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sos.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B7C4()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.dialog.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B7F0()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.localeIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B81C()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.isSmartEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B870()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.isSAEAvailable.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B8C4()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.shouldPlayTTSCountdown.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B918()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2B944()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2B970(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[13];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[16];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2BAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2BC64()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_2BD4C()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.personHandle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BDA0()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.spokenHandle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BDCC()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2BE20()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BE74()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.rskeCommand.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2BEA0()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BEF4()
{
  OUTLINED_FUNCTION_13_4();
  result = LocalEmergencyCallDisambiguationModel.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BF20(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_1_15();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_20_3();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
          OUTLINED_FUNCTION_20_3();
          if (*(v18 + 84) == v3)
          {
            v8 = v17;
            v12 = a3[9];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
            v12 = a3[10];
          }
        }
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_2C0F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_15();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_20_3();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
          OUTLINED_FUNCTION_20_3();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
            v14 = a4[10];
          }
        }
      }
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2C2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_45_7(*(a1 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_2C374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = (v4 - 1);
  }
}

uint64_t sub_2C424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_45_7(*(a1 + 8));
  }

  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 28);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v10 = *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sub_2C4EC()
{
  OUTLINED_FUNCTION_1_15();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_20_3();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = *(v4 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v9 = *(v4 + 32);
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C016UnsupportedValueC7Adapter33_F346112A54832801DC2C781F72BAEE7FLLCfD_0()
{
  ThirdPartyAnnotatedAppStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2C798()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2C824(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C868(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ConfirmationResponse();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2C8CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2C90C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2C974()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2CA4C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2CA90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2CB94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2CC24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF27PhoneCallFlowDelegatePlugin37AnnounceGroupFaceTimeInviteCATsSimpleC28OfferFollowUpIntentDialogIdsO_Tgq5_0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF27PhoneCallFlowDelegatePlugin06SearchG17HistoryCATsSimpleC46ErrorWithCodeAppConfigurationRequiredDialogIdsO_Tgq5_0()
{
  OUTLINED_FUNCTION_64_5();
  String.hash(into:)();
}

uint64_t sub_2D1C4()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D28C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2D3BC()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D484()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2D4BC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2D50C()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D5D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2D66C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 104))();
  *v0 = result;
  return result;
}

uint64_t sub_2D6B0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 128))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2D6F8()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 152))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2D7F4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 152))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2D838()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 176))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2D87C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 200))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2D8C0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 224))();
  *v0 = result;
  return result;
}

uint64_t sub_2D904()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 248))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2D948()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 272))();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2D99C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 296))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2D9EC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 320))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2DA6C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DAAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2DB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2DB94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2DC18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DC50()
{

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_2DCB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2DCC8()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = OUTLINED_FUNCTION_11_33();

  return _swift_deallocObject(v1, v2, v3);
}

id sub_2DD64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = AnnounceCallsContext.incomingCall.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2DD94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.apps.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2DDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

id sub_2DEDC()
{
  v1 = [v0 callRequestMetadata];

  return v1;
}

void sub_2DF18()
{
  OUTLINED_FUNCTION_51_12();
  [v0 setCallRequestMetadata:?];
}

uint64_t sub_2E01C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Parse();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2E148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Parse();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2E1F4@<X0>(uint64_t *a1@<X8>)
{
  result = ContactDisambiguationPromptResponseParser.personsToDisambiguate.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2E224(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2E2AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2E358()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E3DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E41C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_2E47C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 128))();
  *a1 = result;
  return result;
}

id sub_2E54C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) recordTypeForRedialing];
  *v1 = result;
  return result;
}

uint64_t sub_2E590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E5C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v1, v2, v3);
}

id sub_2E688(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) callCapability];
  *v1 = result;
  return result;
}

id sub_2E6CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) ttyType];
  *v1 = result;
  return result;
}

id sub_2E710(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) preferredCallProvider];
  *v1 = result;
  return result;
}

id sub_2E754(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) destinationType];
  *v1 = result;
  return result;
}

id sub_2E7C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) audioRoute];
  *v1 = result;
  return result;
}

uint64_t sub_2E870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2E914()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return _swift_deallocObject(v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2EA74()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2EADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_2EB70()
{
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_2EC30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2EDD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_88();
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_2EE80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_2EEC0()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_50_1();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2EF24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2EF74()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F1BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2F24C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2F28C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2F2DC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F324()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2F374()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2F3B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2F428()
{

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2F4A8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_2F500()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  OUTLINED_FUNCTION_19_26();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2F55C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  OUTLINED_FUNCTION_19_26();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2F618()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F660()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_2F6B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_2F774()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F7AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F804()
{

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

__n128 sub_2F8B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2F8C0()
{
  OUTLINED_FUNCTION_66();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v7 = *(v5 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(v6 + 8);
  }

  else
  {
    v8 = *(v6 + 8);
    v8(v0 + v2, v4);
  }

  v8(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_30048()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);
  __swift_destroy_boxed_opaque_existential_1((v1 + v8));

  return _swift_deallocObject(v1, v9 + 48, v4 | 7);
}

uint64_t sub_30148()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  OUTLINED_FUNCTION_50_15();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_3019C()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);
  __swift_destroy_boxed_opaque_existential_1((v1 + v7));

  return _swift_deallocObject(v1, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_302CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3030C()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  __swift_destroy_boxed_opaque_existential_1((v1 + v7));

  return _swift_deallocObject(v1, v7 + 40, v4 | 7);
}

uint64_t sub_30424()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_30460()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36_18();
  v6 = type metadata accessor for RCHChildFlowProducers();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    v7 = type metadata accessor for RCHChildFlowProducersAsync();
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_30540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_18();
  v8 = type metadata accessor for RCHChildFlowProducers();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    v9 = type metadata accessor for RCHChildFlowProducersAsync();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_305F0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_3062C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_30684()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_30780@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_308B0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_308FC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_30970()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 96))();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_309BC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 120))();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_30A08()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 120))();
  *v0 = result;
  return result;
}

uint64_t sub_30BE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30C20()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_313B8()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 144))();
  *v0 = result;
  return result;
}

uint64_t sub_313FC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 184))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_31440()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 208))();
  *v0 = result;
  return result;
}

uint64_t sub_314C4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 232))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_31508()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 256))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_31554()
{
  OUTLINED_FUNCTION_0_3();
  v1 = (*(v0 + 280))();
  return OUTLINED_FUNCTION_77_10(v1);
}

uint64_t sub_315F0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 328))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_3163C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 352))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_31688()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 376))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_316D4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 400))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_31720()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 424))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_3176C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 448))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_317B8()
{
  OUTLINED_FUNCTION_0_3();
  v1 = (*(v0 + 472))();
  return OUTLINED_FUNCTION_77_10(v1);
}

uint64_t sub_3184C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 496))();
  *v0 = result;
  return result;
}

uint64_t sub_3192C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 560))();
  *v0 = result;
  return result;
}

double _sSlsE5first7ElementQzSgvgSay27PhoneCallFlowDelegatePlugin04SiriC7Contact_pG_Tg5_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of SignalProviding(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_31AB4()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_31C38@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 128))();
  *a1 = result;
  return result;
}

uint64_t sub_31D78()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 296))();
  *v0 = result;
  return result;
}

uint64_t sub_31DC4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 320))();
  *v0 = result;
  return result;
}

uint64_t sub_31E10()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 344))();
  *v0 = result;
  return result;
}

uint64_t sub_31EA4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 392))();
  *v0 = result;
  return result;
}

uint64_t sub_31EF0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 416))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_31FD0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 464))();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_32024()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 488))();
  *v0 = result;
  return result;
}

uint64_t sub_32070()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 512))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_32390()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 752))();
  *v0 = result;
  return result;
}

uint64_t sub_323DC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 776))();
  *v0 = result;
  return result;
}

uint64_t sub_32428()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 800))();
  *v0 = result;
  return result;
}

uint64_t sub_32474()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 824))();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_324C8()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 296))();
  *v0 = result;
  return result;
}

uint64_t sub_32580()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_325D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_32690()
{
  type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_4_60();

  __swift_destroy_boxed_opaque_existential_1(v1 + 9);
  __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  __swift_destroy_boxed_opaque_existential_1(v1 + 19);
  (*(v4 + 8))(v1 + ((v5 + 192) & ~v5), v0);

  return _swift_deallocObject(v1, v2 + 8, v5 | 7);
}

uint64_t sub_32780()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_327B8()
{
  type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_60();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v2 = OUTLINED_FUNCTION_13_43();
  v3(v2);

  v4 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_328A0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_328E8()
{
  type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_60();

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  v2 = OUTLINED_FUNCTION_13_43();
  v3(v2);

  v4 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_329D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32A10()
{
  type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 200) & ~v4;
  v7 = *(v6 + 64);

  OUTLINED_FUNCTION_7_55();
  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_32AEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32B24()
{
  type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_60();

  OUTLINED_FUNCTION_7_55();
  v2 = OUTLINED_FUNCTION_13_43();
  v3(v2);

  v4 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_32C24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32C5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32C94()
{
  v1 = type metadata accessor for OrdinalDisplayHintsBuilder();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_32D6C()
{
  v1 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + 40));

  return _swift_deallocObject(v0, ((((((v7 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_32FA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_33028(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_33088()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 104))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_33110()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 128))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_33198()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 152))();
  *v0 = result;
  return result;
}

uint64_t sub_331DC()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 128))();
  *v0 = result;
  return result;
}

__n128 sub_332A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_332B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_33324@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_339DC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 104))();
  *a1 = result;
  return result;
}

uint64_t sub_33AB0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 128))();
  *a1 = result;
  return result;
}

uint64_t sub_33B24()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 88))();
  *v0 = result;
  return result;
}

uint64_t sub_33B68()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 112))();
  *v0 = result;
  return result;
}

uint64_t sub_33C98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_33CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhoneRRTarget.Target(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 3;
    if (v8 >= 3)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_33D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_88();
  result = type metadata accessor for PhoneRRTarget.Target(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_33EB0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 112))();
  *v0 = result;
  return result;
}

uint64_t sub_33F38()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 160))();
  *v0 = result;
  return result;
}

uint64_t sub_33F7C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 184))();
  *v0 = result;
  return result;
}

uint64_t sub_33FC0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 136))();
  *v0 = result;
  return result;
}

uint64_t sub_34298@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_12_48();
  result = (*(v2 + 224))();
  *a1 = result;
  return result;
}

uint64_t sub_342E0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_12_48();
  result = (*(v2 + 248))();
  *a1 = result;
  return result;
}

uint64_t sub_34328@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_12_48();
  result = (*(v2 + 152))();
  *a1 = result;
  return result;
}

uint64_t sub_34398()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_343D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_34418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_34484()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.callRecords.getter();
  *v0 = result;
  return result;
}

uint64_t sub_344B0()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.voicemailTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_344DC()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.openPhoneText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_34508()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.openPhoneAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_34534(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_34660(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_347B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_347F8()
{
  v1 = type metadata accessor for OutputGenerationManifest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_348C4()
{

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_34900()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_349F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_34A34()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_34A70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_34AFC()
{
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 9, v4 | 7);
}

uint64_t sub_34BD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_34C18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_40();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_34D0C()
{
  v2 = type metadata accessor for PhoneSnippetDataModels(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for SearchCallHistoryModel(0);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 80);
  v153 = *(v9 + 64);

  v10 = v0 + v4;
  OUTLINED_FUNCTION_72();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v52 = OUTLINED_FUNCTION_72();
      v53(v52);
      type metadata accessor for YesNoConfirmationModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_36_3();
      v55(v56);
      v57 = OUTLINED_FUNCTION_29_6();
      v58(v57);
      v59 = OUTLINED_FUNCTION_40_1();
      v55(v59);
      v4 = (v3 + 24) & ~v3;
      goto LABEL_8;
    case 1u:
      goto LABEL_16;
    case 2u:
    case 7u:
    case 8u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v11 = OUTLINED_FUNCTION_72();
      v12(v11);
      type metadata accessor for YesNoConfirmationModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5();
      v141 = v5;
      v14 = *(v13 + 8);
      v15 = OUTLINED_FUNCTION_36_3();
      v14(v15);
      v16 = OUTLINED_FUNCTION_29_6();
      v17(v16);
      v4 = (v3 + 24) & ~v3;
      v18 = OUTLINED_FUNCTION_40_1();
      v14(v18);
      v5 = v141;
LABEL_8:
      v60 = *(v1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v61 + 8))(v10 + v60);
      goto LABEL_17;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v68 = *(v67 + 8);
      v149 = v8;
      v69 = OUTLINED_FUNCTION_92();
      v68(v69);
      v70 = type metadata accessor for EmergencyCountdownModel(0);
      v71 = OUTLINED_FUNCTION_14_10(v70[5]);
      v68(v71);
      v72 = OUTLINED_FUNCTION_14_10(v70[6]);
      v68(v72);
      v73 = OUTLINED_FUNCTION_14_10(v70[7]);
      v68(v73);
      v74 = OUTLINED_FUNCTION_14_10(v70[8]);
      v68(v74);
      v75 = OUTLINED_FUNCTION_14_10(v70[9]);
      v68(v75);
      v76 = OUTLINED_FUNCTION_14_10(v70[10]);
      v68(v76);
      v77 = OUTLINED_FUNCTION_14_10(v70[11]);
      v68(v77);
      v78 = OUTLINED_FUNCTION_14_10(v70[12]);
      v68(v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1();
      v80 = *(v79 + 8);
      v81 = OUTLINED_FUNCTION_58_11();
      v80(v81);
      v82 = OUTLINED_FUNCTION_14_10(v70[14]);
      v80(v82);
      v83 = OUTLINED_FUNCTION_14_10(v70[15]);
      v80(v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_23_1();
      v85 = *(v84 + 8);
      v86 = OUTLINED_FUNCTION_58_11();
      v85(v86);
      v87 = OUTLINED_FUNCTION_14_10(v70[17]);
      v85(v87);
      v4 = (v3 + 24) & ~v3;
      v8 = v149;
      goto LABEL_17;
    case 4u:
      v88 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
      if (!OUTLINED_FUNCTION_59_12(v88))
      {
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5();
        (*(v89 + 8))(v0 + v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_6_71();
        v150 = v8;
        v91 = *(v90 + 8);
        v92 = OUTLINED_FUNCTION_58_11();
        v91(v92);
        v93 = v2[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v94 + 8))(v10 + v93);
        v95 = v2[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v96 + 8))(v10 + v95);
        v97 = OUTLINED_FUNCTION_14_10(v2[8]);
        v91(v97);
        v4 = (v3 + 24) & ~v3;
        v8 = v150;
        v98 = v2[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v99 + 8))(v10 + v98);
        v100 = v2[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v101 + 8))(v10 + v100);
      }

      v102 = v10 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v102, 1, v2))
      {
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5();
        (*(v103 + 8))(v102);
        v151 = v8;
        v104 = v2[5];
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_8_5();
        v145 = v4;
        v106 = *(v105 + 8);
        v106(v102 + v104);
        v107 = v2[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v108 + 8))(v102 + v107);
        v109 = v2[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v110 + 8))(v102 + v109);
        (v106)(v102 + v2[8], v144);
        v4 = v145;
        v111 = v2[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5();
        v113 = v102 + v111;
        v8 = v151;
        (*(v112 + 8))(v113);
        v114 = v2[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v115 + 8))(v102 + v114);
      }

LABEL_16:

      goto LABEL_17;
    case 5u:

      v62 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v63 = *(v62 + 28);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_23_5();
      (*(v64 + 8))(v10 + v63);
      v65 = *(v62 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v66 + 8))(v10 + v65);
      goto LABEL_17;
    case 6u:
      goto LABEL_17;
    case 9u:

      v41 = v6[5];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v44 = *(v43 + 8);
      v44(v10 + v41, v42);
      v45 = v6[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v46 + 8))(v10 + v45);
      v44(v10 + v6[7], v42);
      v44(v10 + v6[8], v42);
      v47 = v6[9];
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1();
      v50 = *(v49 + 8);
      v50(v10 + v47, v48);
      v50(v10 + v6[10], v48);
      v51 = v6[11];
      goto LABEL_22;
    case 0xAu:

      v131 = type metadata accessor for PlayVoicemailModel(0);
      v132 = v131[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v133 + 8))(v10 + v132);
      v146 = v131[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71();
      v152 = v8;
      v135 = *(v134 + 8);
      v136 = OUTLINED_FUNCTION_14_10(v146);
      v135(v136);
      v137 = OUTLINED_FUNCTION_14_10(v131[7]);
      v135(v137);
      v8 = v152;
      v4 = (v3 + 24) & ~v3;
      v51 = v131[8];
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v138 + 8))(v10 + v51);
      goto LABEL_18;
    case 0xBu:

      v19 = type metadata accessor for SingleResultVoicemailModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_6_71();
      v147 = v8;
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_58_11();
      v21(v22);
      v23 = OUTLINED_FUNCTION_14_10(*(v19 + 56));
      v21(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v24 = OUTLINED_FUNCTION_72();
      v25(v24);
      type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5();
      v142 = v5;
      v27 = *(v26 + 8);
      v28 = OUTLINED_FUNCTION_36_3();
      v27(v28);
      v29 = OUTLINED_FUNCTION_29_6();
      v30(v29);
      v4 = (v3 + 24) & ~v3;
      v31 = OUTLINED_FUNCTION_40_1();
      v27(v31);
      v8 = v147;
      v5 = v142;
      goto LABEL_17;
    case 0xCu:

      v32 = v10 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);
      v33 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      if (OUTLINED_FUNCTION_59_12(v33))
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71();
      v148 = v8;
      v35 = *(v34 + 8);
      v36 = OUTLINED_FUNCTION_92();
      v35(v36);
      v140 = v2[5];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5();
      v143 = v5;
      v39 = *(v38 + 8);
      v39(v32 + v140, v37);
      v40 = OUTLINED_FUNCTION_14_10(v2[6]);
      v35(v40);
      v4 = (v3 + 24) & ~v3;
      v8 = v148;
      v39(v32 + v2[7], v37);
      v5 = v143;
LABEL_17:

LABEL_18:
      v116 = v3 | v8;
      v117 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v118 = (v117 + v8 + 8) & ~v8;

      v119 = v6[5];
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v122 = *(v121 + 8);
      v122(v0 + v118 + v119, v120);
      v123 = v6[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v124 + 8))(v0 + v118 + v123);
      v122(v0 + v118 + v6[7], v120);
      v122(v0 + v118 + v6[8], v120);
      v125 = v6[9];
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1();
      v128 = *(v127 + 8);
      v128(v0 + v118 + v125, v126);
      v128(v0 + v118 + v6[10], v126);
      v129 = v6[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v130 + 8))(v0 + v118 + v129);

      return _swift_deallocObject(v0, v118 + v153, v116 | 7);
    default:
      goto LABEL_18;
  }
}