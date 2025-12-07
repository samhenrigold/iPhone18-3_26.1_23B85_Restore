uint64_t RestrictionCheckGuardFlow.__deallocating_deinit()
{
  RestrictionCheckGuardFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t RestrictionCheckGuardFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals));

  return v0;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_14()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21_5()
{
}

BOOL OUTLINED_FUNCTION_10_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_21_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_21_11()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(23);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return Loggable.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_21_14()
{
}

void OUTLINED_FUNCTION_21_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_21_16(void *a1)
{
  v3 = *(v1 + 1520);

  return [a1 v3];
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_22()
{
}

BOOL OUTLINED_FUNCTION_86_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return specialized Sequence.first(where:)(v5, v6, a4, a5, (v7 + 16));
}

uint64_t OUTLINED_FUNCTION_21_33(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

unint64_t OUTLINED_FUNCTION_21_44@<X0>(uint64_t a1@<X8>)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, (a1 - 32) | 0x8000000000000000, (v1 - 272));
}

void OUTLINED_FUNCTION_21_45()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
  *(v1 + 14) = 28;
}

uint64_t OUTLINED_FUNCTION_21_46()
{

  return SPHCallCenter.onQueue<A>(_:)();
}

unint64_t OUTLINED_FUNCTION_21_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  *(v25 + 12) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, va);
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

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.__deallocating_deinit()
{
  CATWrapperSimple.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallingIntentRCHFlowStrategy.__deallocating_deinit()
{
  CallingIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

void *CallingIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ContactNeedsValueGuardFlow.__deallocating_deinit()
{
  ContactNeedsValueGuardFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t ContactNeedsValueGuardFlow.deinit()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_23_5();
  (*(v6 + 8))(v0 + v2);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v7 + 112)));
  OUTLINED_FUNCTION_2_0();

  return v0;
}

uint64_t OUTLINED_FUNCTION_46(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_46_1()
{
}

id OUTLINED_FUNCTION_46_3()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_14_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_146(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

void OUTLINED_FUNCTION_46_13()
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD00000000000002DLL, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_46_17()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_46_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_46_23()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_46_25()
{
  *(v1 + 1384) = v2;
  *(v1 + 1392) = v0;

  return Loggable.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_46_26(uint64_t a1)
{

  static Signpost.begin(_:)();
}

uint64_t OUTLINED_FUNCTION_46_29(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v2, v1);
}

BOOL OUTLINED_FUNCTION_46_30()
{

  return PhoneCallNLIntent.isEmergencyCall()();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_3_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656369766564;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_15_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_8_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  **(v0 + 216) = *(v0 + 168);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_35()
{
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_18_17()
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD000000000000041, v0 | 0x8000000000000000);
}

unint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &a9);
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

__n128 *OUTLINED_FUNCTION_18_22@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = v3 | 6;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

void OUTLINED_FUNCTION_18_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = v11;
  v14 = v10;

  String.append(_:)(*&v13);
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return type metadata accessor for OSSignpostID();
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 - 332) = a4;
}

void OUTLINED_FUNCTION_18_40(uint64_t a1@<X8>)
{
  v2[15] = v1;
  v2[16] = v3;
  v2[17] = (a1 - 32) | 0x8000000000000000;
}

void *OUTLINED_FUNCTION_18_42()
{
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[10] = v1;
  return result;
}

char *CallingIntentBaseFlowStrategy.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 38);
  v1 = direct field offset for CallingIntentBaseFlowStrategy.completionOutputManifest;
  type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(&v0[v1]);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_3()
{
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52()
{
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_slowAlloc();
}

__n128 *OUTLINED_FUNCTION_0_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  *(v9 + 56) = a8;
  *(v9 + 64) = v8;
  *(v9 + 106) = v11;
  *(v9 + 105) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a6;
  *(v9 + 104) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_11@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x69616D6563696F76;
  *(v2 + 136) = 0xE90000000000006CLL;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(char a1@<W8>)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t OUTLINED_FUNCTION_3_42()
{
}

uint64_t OUTLINED_FUNCTION_3_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_5(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_46(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_3_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_50(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_52@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 224) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v2;
  *(v3 - 176) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return outlined init with take of PhoneCallFeatureFlagProviding(&v6, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_3_64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;

  return outlined init with copy of PhoneCallNLIntent?(v3, v2, v4, v5);
}

BOOL OUTLINED_FUNCTION_3_66(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 *OUTLINED_FUNCTION_0_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_70(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_74()
{

  return specialized PhoneContactResolver.init(configCache:queryCache:resolver:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_3_75(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_3_80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_82(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_83()
{

  return static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t OUTLINED_FUNCTION_3_85(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

id OUTLINED_FUNCTION_3_89()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_3_93(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_3_98(uint64_t result)
{
  *(result + 32) = 0x61507473614C7369;
  *(result + 40) = 0xEA00000000006567;
  return result;
}

__n128 *OUTLINED_FUNCTION_12_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E65746E69;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

unint64_t OUTLINED_FUNCTION_3_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = a18;
  v21 = a19;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &a17);
}

uint64_t OUTLINED_FUNCTION_3_102()
{

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_3_106(uint64_t a1)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 OUTLINED_FUNCTION_3_109@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 88) = *(v1 + 208);
  *(v1 + 104) = *(v1 + 224);
  *(v1 + 112) = a1;
  *(v1 + 120) = *(v1 + 152);
  result = *(v1 + 168);
  *(v1 + 136) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 360) = a5;
  *(v5 - 368) = a4;
  *(v5 - 376) = a3;
  *(v5 - 384) = a2;

  return type metadata accessor for PhoneCallNLv3Intent(0);
}

uint64_t OUTLINED_FUNCTION_3_111(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, a2, a3, &protocol conformance descriptor for CodableAceObject<A>);
}

_OWORD *OUTLINED_FUNCTION_3_112@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a12, uint64_t a13)
{
  a13 = v12;
  *&a10 = v11;
  *(&a10 + 1) = a1;

  return outlined init with take of Any(&a10, &a6);
}

unint64_t OUTLINED_FUNCTION_3_116(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, va);
}

id OUTLINED_FUNCTION_3_117()
{
  v2 = *(v0 + 256);
  *(v0 + 392) = v1;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));

  return v1;
}

uint64_t OUTLINED_FUNCTION_3_118()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_3_119(uint64_t a1)
{

  return outlined init with copy of ButtonConfigurationModel(v1, a1, type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_3_120()
{

  return outlined destroy of UnsupportedFlowSearchCallHistoryParameters();
}

uint64_t CallingIntentNeedsValueFlowStrategy.__deallocating_deinit()
{
  CallingIntentBaseFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

char *CallingIntentContactNeedsDisambiguationFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();

  return v0;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  CallingIntentContactNeedsDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

void OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return outlined init with copy of SignalProviding(v1 + 24, v0 + 248);
}

uint64_t OUTLINED_FUNCTION_104_4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return v0 + 16;
}

__n128 *OUTLINED_FUNCTION_42_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "relationship");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

uint64_t PhoneTCCFlowStrategy.__deallocating_deinit()
{
  PhoneTCCFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

void *PhoneCallStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  return v0;
}

uint64_t CallingIntentConfirmationFlowStrategy.__deallocating_deinit()
{
  CallingIntentConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

char *CallingIntentConfirmationFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v0[direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

  return v0;
}

uint64_t outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_9Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t objectdestroy_9Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = type metadata accessor for Transformer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_2Tm_1()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t objectdestroy_2Tm_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_2Tm_3()
{

  return _swift_deallocObject(v0, 72, 7);
}

void *PhoneTCCFlowStrategy.deinit()
{
  v0 = PhoneCallStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  return v0;
}

char *CallingIntentHandleIntentFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();

  return v0;
}

uint64_t StartCallRCHFlowDelegate.__deallocating_deinit()
{
  StartCallRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t StartCallRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals));
  return v0;
}

uint64_t LazyContainer.__deallocating_deinit()
{
  LazyContainer.deinit();

  return swift_deallocClassInstance();
}

id *LazyContainer.deinit()
{

  v1 = *(*v0 + 14);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_40();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

BOOL OUTLINED_FUNCTION_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_41_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &a14);
}

uint64_t OUTLINED_FUNCTION_41_16()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

double OUTLINED_FUNCTION_41_17()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_18()
{
  result = *(v0 + 32);
  *(v1 + 128) = 1701869940;
  *(v1 + 136) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_19()
{

  return type metadata accessor for TypedValue();
}

uint64_t OUTLINED_FUNCTION_41_20(uint64_t a1, uint64_t a2)
{
  *v4 = v2;
  v4[1] = v3;
  v4[2] = a1;
  v4[3] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_41_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_24()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_41_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return outlined init with take of SingleResultCallHistoryModel(a1, v4, a3);
}

uint64_t OUTLINED_FUNCTION_41_27(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_41_29(uint64_t a1)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, 0, v1, v4, v3, v5 & 0x1FF, v2);
}

void *OUTLINED_FUNCTION_41_31@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = a2;
  result[10] = 0x64657373694D7369;
  result[11] = 0xE800000000000000;
  return result;
}

uint64_t specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v52 = a3;
  v47 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v5 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CATOption();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  v10 = type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v41[0] = v10;
  v43 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v41[1] = type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v42 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  v16 = swift_allocObject();
  v69[3] = v8;
  v69[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v41[4] = v9;
  v69[0] = v9;
  v67 = v11;
  v68 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v41[3] = v12;
  v66[0] = v12;
  v64 = v14;
  v65 = &protocol witness table for AppInfoBuilder;
  v63[0] = v15;
  v41[2] = v13;
  *(v16 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v13;
  outlined init with copy of SignalProviding(v69, v62);
  outlined init with copy of SignalProviding(v66, v61);
  outlined init with copy of SignalProviding(v53, v60);
  outlined init with copy of SignalProviding(v63, v59);

  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v20 = ResponseFactory.init()();
  v58[3] = v19;
  v58[4] = &protocol witness table for ResponseFactory;
  v58[0] = v20;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v21 = v52;
  v16[2] = v52;
  v45 = direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v21 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, (v16 + 3));
  v16[8] = v44;
  outlined init with copy of SignalProviding(v62, (v16 + 9));
  v22 = v43;
  v16[14] = v17;
  v16[15] = v22;
  v16[16] = v18;
  outlined init with copy of SignalProviding(v61, (v16 + 17));
  v16[22] = v42;
  outlined init with copy of SignalProviding(v58, (v16 + 23));
  outlined init with copy of SignalProviding(v60, (v16 + 28));
  outlined init with copy of SignalProviding((v16 + 3), v55);
  v23 = v56;
  v24 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v25 = *(v24 + 72);

  v26 = v25(v23, v24);

  v27 = v47;

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v58);
  outlined init with copy of SignalProviding(v26 + 160, v54);

  outlined init with take of SPHConversation(v54, (v16 + 33));
  __swift_destroy_boxed_opaque_existential_1(v55);
  outlined init with take of SPHConversation(v59, (v16 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMR);
  v28 = v48;
  ParameterResolutionRecord.parameter.getter();
  v29 = ParameterIdentifier.name.getter();
  v31 = v30;
  (*(v49 + 8))(v28, v50);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  if ((PhoneCallSlotNames.init(rawValue:)(v32).value & 0xFE) != 4)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v37 = v38;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v45[v52], v69);
  v33 = [objc_allocWithZone(CNContactStore) init];
  v67 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v68 = &protocol witness table for CNContactStore;
  v66[0] = v33;
  v64 = &type metadata for LabelTemplatesProvider;
  v65 = &protocol witness table for LabelTemplatesProvider;
  v34 = swift_allocObject();
  v63[0] = v34;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  v35 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v36 = swift_allocObject();
  v62[3] = v35;
  v62[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v62[0] = v36;
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntentResponse, INStartAudioCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartAudioCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
  v37 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
LABEL_7:

  v39 = v37(v51, v27);

  return v39;
}

{
  v51 = a1;
  v52 = a3;
  v47 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v5 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CATOption();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  v10 = type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v41[0] = v10;
  v43 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v41[1] = type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v42 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  v16 = swift_allocObject();
  v69[3] = v8;
  v69[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v41[4] = v9;
  v69[0] = v9;
  v67 = v11;
  v68 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v41[3] = v12;
  v66[0] = v12;
  v64 = v14;
  v65 = &protocol witness table for AppInfoBuilder;
  v63[0] = v15;
  v41[2] = v13;
  *(v16 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v13;
  outlined init with copy of SignalProviding(v69, v62);
  outlined init with copy of SignalProviding(v66, v61);
  outlined init with copy of SignalProviding(v53, v60);
  outlined init with copy of SignalProviding(v63, v59);

  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v20 = ResponseFactory.init()();
  v58[3] = v19;
  v58[4] = &protocol witness table for ResponseFactory;
  v58[0] = v20;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v21 = v52;
  v16[2] = v52;
  v45 = direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v21 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, (v16 + 3));
  v16[8] = v44;
  outlined init with copy of SignalProviding(v62, (v16 + 9));
  v22 = v43;
  v16[14] = v17;
  v16[15] = v22;
  v16[16] = v18;
  outlined init with copy of SignalProviding(v61, (v16 + 17));
  v16[22] = v42;
  outlined init with copy of SignalProviding(v58, (v16 + 23));
  outlined init with copy of SignalProviding(v60, (v16 + 28));
  outlined init with copy of SignalProviding((v16 + 3), v55);
  v23 = v56;
  v24 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v25 = *(v24 + 72);

  v26 = v25(v23, v24);

  v27 = v47;

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v58);
  outlined init with copy of SignalProviding(v26 + 160, v54);

  outlined init with take of SPHConversation(v54, (v16 + 33));
  __swift_destroy_boxed_opaque_existential_1(v55);
  outlined init with take of SPHConversation(v59, (v16 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMR);
  v28 = v48;
  ParameterResolutionRecord.parameter.getter();
  v29 = ParameterIdentifier.name.getter();
  v31 = v30;
  (*(v49 + 8))(v28, v50);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  if ((PhoneCallSlotNames.init(rawValue:)(v32).value & 0xFE) != 4)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v37 = v38;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v45[v52], v69);
  v33 = [objc_allocWithZone(CNContactStore) init];
  v67 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v68 = &protocol witness table for CNContactStore;
  v66[0] = v33;
  v64 = &type metadata for LabelTemplatesProvider;
  v65 = &protocol witness table for LabelTemplatesProvider;
  v34 = swift_allocObject();
  v63[0] = v34;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  v35 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v36 = swift_allocObject();
  v62[3] = v35;
  v62[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v62[0] = v36;
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntentResponse, INStartVideoCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartVideoCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
  v37 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
LABEL_7:

  v39 = v37(v51, v27);

  return v39;
}

{
  v51 = a1;
  v52 = a3;
  v47 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v5 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CATOption();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  v10 = type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v41[0] = v10;
  v43 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v41[1] = type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v42 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v16 = swift_allocObject();
  v69[3] = v8;
  v69[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v41[4] = v9;
  v69[0] = v9;
  v67 = v11;
  v68 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v41[3] = v12;
  v66[0] = v12;
  v64 = v14;
  v65 = &protocol witness table for AppInfoBuilder;
  v63[0] = v15;
  v41[2] = v13;
  *(v16 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v13;
  outlined init with copy of SignalProviding(v69, v62);
  outlined init with copy of SignalProviding(v66, v61);
  outlined init with copy of SignalProviding(v53, v60);
  outlined init with copy of SignalProviding(v63, v59);

  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v20 = ResponseFactory.init()();
  v58[3] = v19;
  v58[4] = &protocol witness table for ResponseFactory;
  v58[0] = v20;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v21 = v52;
  v16[2] = v52;
  v45 = direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v21 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, (v16 + 3));
  v16[8] = v44;
  outlined init with copy of SignalProviding(v62, (v16 + 9));
  v22 = v43;
  v16[14] = v17;
  v16[15] = v22;
  v16[16] = v18;
  outlined init with copy of SignalProviding(v61, (v16 + 17));
  v16[22] = v42;
  outlined init with copy of SignalProviding(v58, (v16 + 23));
  outlined init with copy of SignalProviding(v60, (v16 + 28));
  outlined init with copy of SignalProviding((v16 + 3), v55);
  v23 = v56;
  v24 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v25 = *(v24 + 72);

  v26 = v25(v23, v24);

  v27 = v47;

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v58);
  outlined init with copy of SignalProviding(v26 + 160, v54);

  outlined init with take of SPHConversation(v54, (v16 + 33));
  __swift_destroy_boxed_opaque_existential_1(v55);
  outlined init with take of SPHConversation(v59, (v16 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  v28 = v48;
  ParameterResolutionRecord.parameter.getter();
  v29 = ParameterIdentifier.name.getter();
  v31 = v30;
  (*(v49 + 8))(v28, v50);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  if ((PhoneCallSlotNames.init(rawValue:)(v32).value & 0xFE) != 4)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v37 = v38;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v53[0] = v16;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v38 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v45[v52], v69);
  v33 = [objc_allocWithZone(CNContactStore) init];
  v67 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v68 = &protocol witness table for CNContactStore;
  v66[0] = v33;
  v64 = &type metadata for LabelTemplatesProvider;
  v65 = &protocol witness table for LabelTemplatesProvider;
  v34 = swift_allocObject();
  v63[0] = v34;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  v35 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v36 = swift_allocObject();
  v62[3] = v35;
  v62[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v62[0] = v36;
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
  v37 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
LABEL_7:

  v39 = v37(v51, v27);

  return v39;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v1 + 24) = v0;

  return type metadata accessor for SimpleOutputFlowAsync();
}

uint64_t OUTLINED_FUNCTION_67_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_10()
{

  return type metadata accessor for NonTerminalIntentNode();
}

void OUTLINED_FUNCTION_105(uint64_t a1@<X8>)
{
  *(v5 + 360) = a1;
  *(v5 + 368) = v6 + 16;
  *(v5 + 376) = v1;
  *(v5 + 384) = v3;
  *(v5 + 408) = v4;
  strcpy((v5 + 416), "isNewVoicemail");
  *(v5 + 431) = -18;
  *(v5 + 456) = v4;
  *(v5 + 432) = v2;
}

uint64_t OUTLINED_FUNCTION_67_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_67_15()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t NLTransformer.__deallocating_deinit()
{
  NLTransformer.deinit();

  return swift_deallocClassInstance();
}

void *NLTransformer.deinit()
{

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 72, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  return v0;
}

uint64_t NLv4Transformer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t HandleIntentSubmitter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

BOOL OUTLINED_FUNCTION_126()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_49_12(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_49_13()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 187);
  __swift_destroy_boxed_opaque_existential_1(v0 + 212);
  __swift_destroy_boxed_opaque_existential_1(v0 + 207);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 202);
}

uint64_t OUTLINED_FUNCTION_49_15()
{

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_49_17(uint64_t a1)
{

  return static PersonIntentNode.getProcessedNameField(person:terminalNode:)(v1, a1);
}

uint64_t OUTLINED_FUNCTION_49_19(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

unint64_t OUTLINED_FUNCTION_49_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a14;
  v17 = a15;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &a13);
}

uint64_t OUTLINED_FUNCTION_49_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

BOOL OUTLINED_FUNCTION_49_27()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t PhoneCallControlNLTransformer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t SingleIntentCacheProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TransformationResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t ThirdPartyAnnotatedAppStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DictionaryBackedCache.__deallocating_deinit()
{
  DictionaryBackedCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t DictionaryBackedCache.deinit()
{

  return v0;
}

void *PhoneContactResolver.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t outlined destroy of AppResolverResult?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneAppSelectionSignalsGatherer.__deallocating_deinit()
{
  PhoneAppSelectionSignalsGatherer.deinit();

  return swift_deallocClassInstance();
}

uint64_t SharedConfirmationRepromptContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CallingIntentHandleIntentFlowStrategy.__deallocating_deinit()
{
  CallingIntentHandleIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SharedGlobalsProviding.featureManager.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v0 = swift_allocObject();
  v3 = &type metadata for PhoneCallFeatureFlags;
  v4 = &protocol witness table for PhoneCallFeatureFlags;
  *&v2 = swift_allocObject();
  memcpy((v2 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v2, v0 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v2);
  return v0;
}

uint64_t PhoneContactResolver.__deallocating_deinit()
{
  PhoneContactResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t AppSelectionState.__deallocating_deinit()
{
  outlined destroy of AppResolverResult?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction);

  return swift_deallocClassInstance();
}

uint64_t PhoneAppSelectionSignalsGatherer.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PhoneCallFlowDelegatePlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64[2] = a2;
  v5 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v64 - v13;
  (*(v2 + 56))(v69, v12);
  v15 = v70;
  v16 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v17 = (*(v16 + 72))(v15, v16);
  v18 = *(v7 + 16);
  v18(v14, a1, v5);
  v19 = (*(v7 + 88))(v14, v5);
  if (v19 != enum case for Parse.NLv4IntentOnly(_:) && v19 != enum case for Parse.uso(_:) && v19 != enum case for Parse.ifClientAction(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#PhoneCallFlowDelegatePlugin expected pass-through as only handles .NLv4IntentOnly and .uso", v26, 2u);
      OUTLINED_FUNCTION_26_0(v26);
    }

    (*(v7 + 8))(v14, v5);
LABEL_18:
    PhoneCallFlowDelegatePlugin.makeFlowForCommon(parse:sharedGlobals:)(a1, v69);
    goto LABEL_19;
  }

  (*(v7 + 8))(v14, v5);
  v22 = static ExecutionPath.choosePath(for:sharedGlobals:app:)(a1, v69, 0);
  if (v22 == 5)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#PhoneCallFlowDelegatePlugin - executing flow locally", v35, 2u);
      OUTLINED_FUNCTION_26_0(v35);
    }

    v36 = v70;
    v37 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v37 + 24))(&v67, v36, v37);
    __swift_project_boxed_opaque_existential_1(&v67, v68);
    started = dispatch thunk of AceServiceInvoker.currentStartRequestId()();
    if (v39)
    {
      v40 = started;
      v41 = v39;
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v42 = v3[12];
      v43 = v3[13];
      __swift_project_boxed_opaque_existential_1(v3 + 9, v42);
      (*(v43 + 8))(v40, v41, v42, v43);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    goto LABEL_46;
  }

  if (v22 == 4)
  {
    if (PhoneCallFlowDelegatePlugin.makeFlowForEmergencyResourceCall(parse:nlTransformer:)(a1, v17))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v30))
      {
        v31 = OUTLINED_FUNCTION_65_0();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "#PhoneCallFlowDelegatePlugin Invoking SiriEmergency flow to handle call to emergency resource", v31, 2u);
        OUTLINED_FUNCTION_26_0(v31);
      }

      static FlowSearchResult.flow(_:)();

      goto LABEL_21;
    }

LABEL_46:
    (*(*v17 + 192))(&v65, a1);
    if (v66)
    {
      outlined init with take of SPHConversation(&v65, &v67);
      type metadata accessor for SiriEnvironment();
      if (static SiriEnvironment.forCurrentTask.getter())
      {
        SiriEnvironment.currentRequest.getter();

        v59 = CurrentRequest.resultCandidateId.getter();
        v61 = v60;

        if (v61)
        {
          v62 = v70;
          v63 = v71;
          __swift_project_boxed_opaque_existential_1(v69, v70);
          (*(v63 + 24))(&v65, v62, v63);
          (*(*v3 + 136))(v59, v61, &v67, &v65);

          __swift_destroy_boxed_opaque_existential_1(&v65);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v65, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    goto LABEL_18;
  }

  if (v22 != 3)
  {
    v44 = v22;
    v64[1] = v17;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v45 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v45, static Logger.siriPhone);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_65_0();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "#PhoneCallFlowDelegatePlugin Encountered unknown common_Person entity to call. Falling back to server for execution.", v48, 2u);
      OUTLINED_FUNCTION_26_0(v48);
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = OUTLINED_FUNCTION_16_4(v50);
    if (v44 != 2)
    {
      if (v51)
      {
        v58 = OUTLINED_FUNCTION_65_0();
        *v58 = 0;
        _os_log_impl(&dword_0, v49, v50, "#PhoneCallFlowDelegatePlugin using RedirectToServerFlow.", v58, 2u);
        OUTLINED_FUNCTION_26_0(v58);
      }

      outlined init with copy of SignalProviding(v69, &v67);
      type metadata accessor for RedirectToServerFlow();
      swift_allocObject();
      *&v67 = RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(v44, &v67, 1);
      lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, 255, type metadata accessor for RedirectToServerFlow, &protocol conformance descriptor for RedirectToServerFlow);
      Flow.eraseToAnyFlow()();
      OUTLINED_FUNCTION_11_0();

      static FlowSearchResult.flow(_:)();
      goto LABEL_20;
    }

    if (v51)
    {
      v52 = OUTLINED_FUNCTION_65_0();
      *v52 = 0;
      OUTLINED_FUNCTION_9_47();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_26_0(v52);
    }

    type metadata accessor for BusinessCompositionFlow(0);
    v18(v10, a1, v5);
    outlined init with copy of SignalProviding(v69, &v67);
    *&v67 = BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:)(v10, &v67);
    lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(&lazy protocol witness table cache variable for type BusinessCompositionFlow and conformance BusinessCompositionFlow, 255, type metadata accessor for BusinessCompositionFlow, &protocol conformance descriptor for BusinessCompositionFlow);
    Flow.eraseToAnyFlow()();

LABEL_19:
    static FlowSearchResult.flow(_:)();
LABEL_20:

    goto LABEL_21;
  }

  static FlowSearchResult.noFlow.getter();
LABEL_21:

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t outlined init with take of SPHConversation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 *OUTLINED_FUNCTION_7_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E6F697461636F6CLL;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x656369766564;
  v2[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_5()
{
}

uint64_t OUTLINED_FUNCTION_8_3()
{
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  result = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 104) = v5;
  v8 = *(a5 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a5, v8);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_8()
{
}

BOOL OUTLINED_FUNCTION_16_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_7()
{
}

void OUTLINED_FUNCTION_7_20()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_45_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t result)
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0xE000000000000000;
  *(v1 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_7_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v13, 0, v14, a12, a13, v15 & 0x1FF, a11);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return outlined init with take of SPHConversation(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_7_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_7_39(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{
}

uint64_t OUTLINED_FUNCTION_7_42(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

void OUTLINED_FUNCTION_7_45(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 - 208));

  specialized Array.append<A>(contentsOf:)(a1);
}

void OUTLINED_FUNCTION_7_48(float a1)
{
  *v1 = a1;
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  *(v3 - 112) = 0;
  *(v3 - 104) = 0xE000000000000000;

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_7_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_50(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_7_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return lazy protocol witness table accessor for type String and conformance String();
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
}

uint64_t OUTLINED_FUNCTION_7_55()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 20);
}

uint64_t OUTLINED_FUNCTION_7_58(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_62()
{
}

uint64_t OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 - 188) = a8;
  *(v8 - 136) = a7;
  *(v8 - 172) = a3;
  *(v8 - 168) = a2;

  return type metadata accessor for Locale();
}

uint64_t OUTLINED_FUNCTION_7_68@<X0>(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x746E65746E69;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_69(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCallHistoryModel(0);
}

uint64_t OUTLINED_FUNCTION_7_70(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_71()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_75()
{
}

void OUTLINED_FUNCTION_7_77()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_7_78()
{

  Signpost.OpenSignpost.end()();
}

unint64_t OUTLINED_FUNCTION_7_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, va);
}

void OUTLINED_FUNCTION_7_80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7_83(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = closure #1 in Signpost.OpenSignpost.end(_:)partial apply;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_87()
{
  v3 = *(v1 + 73);
  *(v2 + 128) = 0x6D6563696F567369;
  *(v2 + 136) = 0xEB000000006C6961;
  *(v2 + 144) = v3;
  *(v2 + 168) = v0;
  *(v2 + 176) = 0x656369766564;
  *(v2 + 184) = 0xE600000000000000;
  return 0;
}

uint64_t SharedGlobals.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for SiriKitContactResolver();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReferenceResolutionClient();
  v9 = ReferenceResolutionClient.__allocating_init()();
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(v37, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v10 = type metadata accessor for PhoneCallFeatureManager();
  v11 = OUTLINED_FUNCTION_67(v10);
  v35 = &type metadata for PhoneCallFeatureFlags;
  v36 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v34 = swift_allocObject();
  memcpy((v34 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v34, v11 + 16);
  type metadata accessor for NLTransformer();
  v12 = swift_allocObject();
  outlined init with copy of PhoneCallFeatureFlags(v37, &v34);
  *a1 = specialized NLTransformer.init(referenceResolver:featureManager:)(v9, v11, v12);
  v13 = type metadata accessor for CallNotificationContextProvider();
  v14 = OUTLINED_FUNCTION_6_82(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  OUTLINED_FUNCTION_67(v15);
  *(v14 + 16) = specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 30.0);
  a1[4] = v13;
  a1[5] = &protocol witness table for CallNotificationContextProvider;
  a1[1] = v14;
  type metadata accessor for ContactResolverConfigHashable(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable, type metadata accessor for ContactResolverConfigHashable, &protocol conformance descriptor for ContactResolverConfigHashable);
  v16 = Dictionary.init(minimumCapacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference08ResolvedA10KitContactVGMd, &_sSay13SiriInference08ResolvedA10KitContactVGMR);
  lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]();
  v17 = Dictionary.init(minimumCapacity:)();
  SiriKitContactResolver.init()();
  v18 = type metadata accessor for PhoneContactResolver();
  v19 = swift_allocObject();
  v35 = v5;
  v36 = &protocol witness table for SiriKitContactResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(v6 + 32))(boxed_opaque_existential_1, v8, v5);
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  outlined init with take of SPHConversation(&v34, v19 + 32);
  a1[9] = v18;
  a1[10] = &protocol witness table for PhoneContactResolver;
  a1[6] = v19;
  v21 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
  v22 = type metadata accessor for AppSelectionState(0);
  v23 = OUTLINED_FUNCTION_41_1(v22);
  v24 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  __swift_storeEnumTagSinglePayload(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction, 1, 1, v21);
  swift_beginAccess();
  outlined assign with take of AppResolverResult?(v4, v23 + v24);
  swift_endAccess();
  a1[11] = v23;
  v25 = [objc_opt_self() sharedAnalytics];
  v26 = [v25 defaultMessageStream];

  v27 = type metadata accessor for PhoneAppSelectionSignalsGatherer(0);
  OUTLINED_FUNCTION_41_1(v27);
  a1[12] = PhoneAppSelectionSignalsGatherer.init(messageStream:)(v26);
  v28 = type metadata accessor for SharedConfirmationRepromptContext();
  v29 = OUTLINED_FUNCTION_6_82(v28);
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v29 + 16) = Dictionary.init(dictionaryLiteral:)();
  a1[13] = v29;
  v30 = type metadata accessor for SharedNeedsValueContext();
  v31 = OUTLINED_FUNCTION_6_82(v30);
  *(v31 + 16) = _swiftEmptySetSingleton;
  a1[14] = v31;
  type metadata accessor for StartCallDisplayModeContext();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[15] = result;
  return result;
}

uint64_t sub_9328()
{

  OUTLINED_FUNCTION_48_3();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t specialized NLTransformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[3] = type metadata accessor for ReferenceResolutionClient();
  v26[4] = &protocol witness table for ReferenceResolutionClient;
  v26[0] = a1;
  *(a3 + 32) = type metadata accessor for NLTransformer();
  *(a3 + 40) = &outlined read-only object #0 of specialized NLTransformer.init(referenceResolver:featureManager:);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = _swiftEmptyArrayStorage;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  v6 = one-time initialization token for siriPhone;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v24 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v12 = *(a3 + 32);
    v13 = *(a3 + 40);
    v23 = a1;
    v14 = *(a3 + 48);
    v15 = *(a3 + 56);
    v25 = v11;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v13, v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v25);

    *(v10 + 4) = v16;
    a1 = v23;
    _os_log_impl(&dword_0, v8, v9, "%s is initialized, this function should be only be called once for each makeFlowFor", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    a2 = v24;
  }

  type metadata accessor for NLv4Transformer(0);
  v17 = swift_allocObject();

  *(a3 + 16) = specialized NLv4Transformer.init(referenceResolver:featureManager:)(a1, a2, v17);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v26, a3 + 160);
  v18 = type metadata accessor for SingleIntentCacheProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_424FE0;
  v20 = type metadata accessor for PhoneCallControlNLTransformer();
  v21 = swift_allocObject();
  v21[5] = v18;
  v21[6] = &protocol witness table for SingleIntentCacheProvider;
  v21[2] = v19;
  v21[7] = v20;
  v21[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  v21[9] = 0;
  v21[10] = 0;

  __swift_destroy_boxed_opaque_existential_1(v26);
  *(a3 + 24) = v21;
  return a3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized NLv4Transformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  v13[3] = type metadata accessor for ReferenceResolutionClient();
  v13[4] = &protocol witness table for ReferenceResolutionClient;
  v13[0] = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v13, v12);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  outlined init with take of SPHConversation(v12, v10 + 24);
  type metadata accessor for TransformerInput(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v7 + 32))(a3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer, v9, v6);
  return a3;
}

uint64_t sub_9A80()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t outlined init with copy of SignalProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of SharedGlobalsProviding()
{
  OUTLINED_FUNCTION_38();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_40();
  (*v3)(a2);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1()
{
  OUTLINED_FUNCTION_38();
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_40();
  (*v2)(v0);
  return v0;
}

uint64_t specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin0B27NotificationContextProviderC0bF0VSg5value_10Foundation4DateV010expirationK0tMd, &_s27PhoneCallFlowDelegatePlugin0B27NotificationContextProviderC0bF0VSg5value_10Foundation4DateV010expirationK0tMR, a4);
}

{
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSg5value_10Foundation4DateV010expirationJ0tMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSg5value_10Foundation4DateV010expirationJ0tMR, a4);
}

uint64_t specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v6 + 16) = Dictionary.init(minimumCapacity:)();
  *(v6 + 24) = a6;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  return v6;
}

uint64_t type metadata accessor for ContactResolverConfigHashable(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactResolverConfigHashable;
  if (!type metadata singleton initialization cache for ContactResolverConfigHashable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery, &protocol conformance descriptor for ContactQuery);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A]);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

double OUTLINED_FUNCTION_42_2@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 128) = 0xD000000000000015;
  return result;
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

id OUTLINED_FUNCTION_42_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

double OUTLINED_FUNCTION_42_15()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_43_2()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_42_20()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, v1, v2);
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_62_0()
{
  v2[21] = v1;
  v2[22] = v3 + 1;
  v2[23] = (v0 - 32) | 0x8000000000000000;
}

uint64_t type metadata accessor for AppSelectionState(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppSelectionState;
  if (!type metadata singleton initialization cache for AppSelectionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of AppResolverResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PhoneAppSelectionSignalsGatherer(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneAppSelectionSignalsGatherer;
  if (!type metadata singleton initialization cache for PhoneAppSelectionSignalsGatherer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneAppSelectionSignalsGatherer.init(messageStream:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_timeout) = 0x4024000000000000;
  UUID.init()();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid, v9, v3);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_messageStream) = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

BOOL OUTLINED_FUNCTION_51_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5_12(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000015;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

void OUTLINED_FUNCTION_6_5()
{
  v1 = 41;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a2@<X8>)
{
  *(v3 + 456) = v2;
  *(v2 + 32) = a2;

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_0_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v2;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

void *OUTLINED_FUNCTION_5_16()
{

  return specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(v3, v2, v1, v6, v0, v4, v5);
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_5_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

BOOL OUTLINED_FUNCTION_5_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
}

uint64_t OUTLINED_FUNCTION_5_33()
{
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return swift_asyncLet_begin();
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_40()
{
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_5_46(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

uint64_t OUTLINED_FUNCTION_5_57()
{
}

void OUTLINED_FUNCTION_5_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 104) = 0;
  *(v4 - 96) = 0xE000000000000000;

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_5_61()
{
  outlined init with take of SPHConversation((v0 + 208), v1 + 264);
  __swift_destroy_boxed_opaque_existential_1((v0 + 248));
  outlined init with take of SPHConversation((v0 + 328), v1 + 304);
  __swift_destroy_boxed_opaque_existential_1((v2 - 248));
  __swift_destroy_boxed_opaque_existential_1((v2 - 208));
  result = __swift_destroy_boxed_opaque_existential_1((v2 - 168));
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_62(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_69()
{
}

void *OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_5_71(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t OUTLINED_FUNCTION_5_74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for PlayVoicemailModel(0);
}

uint64_t OUTLINED_FUNCTION_5_80()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_5_92(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_97(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for YesNoConfirmationModel(0);
}

unint64_t lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType()
{
  result = lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType;
  if (!lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType;
  if (!lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, uint64_t a2)
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_63_1()
{
}

uint64_t OUTLINED_FUNCTION_62_3()
{
}

uint64_t OUTLINED_FUNCTION_62_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
  *(v1 + 1232) = v0;

  return default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
}

uint64_t OUTLINED_FUNCTION_62_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(v11 + 152);
  *v15 = a11;
  v15[1] = v13;
  v15[2] = v12;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_62_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_62_15()
{
}

void OUTLINED_FUNCTION_62_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_62_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a15, a11, a12, a6, a13);
}

uint64_t OUTLINED_FUNCTION_62_21()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[15] = a1;
  v2[16] = v3;
  v2[17] = a2 | 0x8000000000000000;
  return 0;
}

void static Signpost.begin(_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_75();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_42_13();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v6, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_13:
    v16 = OUTLINED_FUNCTION_8_61();
    v17(v16);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OUTLINED_FUNCTION_16_45();
    v18 = OUTLINED_FUNCTION_15_45();
    v19(v18, v3);
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_65();
    return;
  }

  if ((v2 & 1) == 0)
  {
    if (v0)
    {
      v20 = v0;
LABEL_12:
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = StaticString.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

      *(v10 + 4) = v14;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v15, v20, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_6_68();

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v0 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v9)
  {
    if (v0 >> 16 <= 0x10)
    {
      v20 = &v22;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void OUTLINED_FUNCTION_9_7(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x43746E6572727563;
  *(v2 + 136) = 0xEB000000006C6C61;
}

uint64_t OUTLINED_FUNCTION_33_2()
{
}

void OUTLINED_FUNCTION_6_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_9_12(uint64_t a1@<X8>)
{
  v2[33] = a1;
  v2[34] = v3 + 15;
  v2[35] = (v1 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_10_8(uint64_t a1@<X8>)
{
  v2[27] = a1;
  v2[28] = v3 + 3;
  v2[29] = (v1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_9_13()
{
}

void OUTLINED_FUNCTION_9_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = v17;
  v20 = 0xE700000000000000;

  String.append(_:)(*&v19);
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  v1 = (*(v0 + 176) + *(v0 + 368));
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_23()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_9_25()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_9_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_28()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_9_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of SPHConversation(&a14, &a9);
}

uint64_t OUTLINED_FUNCTION_9_31(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_33()
{
  v2 = *(v0 + 48);

  return __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_36()
{
}

void *OUTLINED_FUNCTION_9_46(uint64_t a1, __int128 *a2)
{

  return UnsupportedCallControlIntentOutputProvider.init(intent:sharedGlobals:callControlCats:unsupportedCats:)(v2, a2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_4_5()
{
}

uint64_t OUTLINED_FUNCTION_9_48@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of SpeakableString?(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_9_49()
{
}

uint64_t OUTLINED_FUNCTION_9_53(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_55()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v0, type metadata accessor for PhoneCallNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_9_58(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_60()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_9_61()
{
  v2 = *(v0 + 3864);

  return _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_9_62()
{
}

uint64_t OUTLINED_FUNCTION_9_63()
{
  *(v0 - 216) = *(v0 + 24);
  v1 = *(v0 - 144);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_9_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18)
{
  *(a1 + 32) = v18;
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  *(a1 + 72) = a17;
  *(a1 + 88) = a18;
}

uint64_t OUTLINED_FUNCTION_9_65@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = v2 | 0xEF746E756F430000;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_69(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_9_71()
{
}

uint64_t OUTLINED_FUNCTION_9_73(uint64_t result)
{
  *(v2 - 352) = v1;
  *(v2 - 272) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_9_74(unint64_t a1)
{
  v2[3].n128_u64[0] = a1;
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_9_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &a9);
}

uint64_t OUTLINED_FUNCTION_9_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = v10;
  *(v9 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_9_84()
{
}

uint64_t OUTLINED_FUNCTION_15_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x656369766564;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_13(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, a2, v3, v2);
}

unint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_15_22()
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v1, v3, v2, v0);
}

uint64_t OUTLINED_FUNCTION_15_23()
{
}

unint64_t OUTLINED_FUNCTION_15_25()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_15_29()
{
  result = *(v0 + 96);
  *(v0 + 112) = 0;
  *(v0 + 96) = v1;
  return result;
}

double OUTLINED_FUNCTION_35_2()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_34()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return UsoTask.description.getter();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
}

void OUTLINED_FUNCTION_15_37(uint64_t a1, uint64_t a2)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_15_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneIntentRCHFlow(0, v5, v4, a4);
}

unint64_t OUTLINED_FUNCTION_15_43()
{
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v0 == 1)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void OUTLINED_FUNCTION_15_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_49(uint64_t result)
{
  v2[24] = v1;
  v2[27] = result;
  v2[28] = 0x5074737269467369;
  v2[29] = 0xEF70704179747261;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_50()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

id OUTLINED_FUNCTION_15_55()
{
  *(v1 + 22) = 2112;
  *(v1 + 24) = v0;
  *v2 = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_15_56()
{
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v32 = v2;
  v4 = type metadata accessor for MainFlow(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  v33 = v6;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for CATOption();
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v12 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_68_0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_427BB0;
  v20 = *(v14 + 16);
  v20(v18, v3, v12);
  outlined init with copy of SignalProviding(v1, &v34);
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RestrictionCheckGuardFlow(0);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  *&v34 = RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(v18, &v34, v21);
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow, type metadata accessor for RestrictionCheckGuardFlow);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_109();

  *(v19 + 32) = &v34;
  v22 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v23 = OUTLINED_FUNCTION_109();
  v24(v23, v22);
  v25 = v36;
  __swift_project_boxed_opaque_existential_1(&v34, v35);
  v26 = OUTLINED_FUNCTION_109();
  *(v19 + 40) = v27(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  type metadata accessor for GuardFlow();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  OUTLINED_FUNCTION_64();
  GuardFlow.init(preconditionFlows:)();
  v20(v9, v32, v12);
  outlined init with copy of SignalProviding(v1, &v9[*(v5 + 28)]);
  v28 = v33;
  outlined init with copy of MainFlow(v9, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMd, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_64();

  v30 = specialized SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(v29, v28);
  outlined destroy of MainFlow(v9);
  *&v34 = v30;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type SentinelConditionalFlow<()> and conformance SentinelConditionalFlow<A>, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMd, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMR);
  Flow.eraseToAnyFlow()();

  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

uint64_t type metadata accessor for MainFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for MainFlow;
  if (!type metadata singleton initialization cache for MainFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t implicit closure #1 in PhoneCallFlowDelegatePlugin.init()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SharedGlobals;
  a1[4] = &protocol witness table for SharedGlobals;
  v2 = swift_allocObject();
  *a1 = v2;
  return SharedGlobals.init()((v2 + 16));
}

uint64_t sub_CC34()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return _swift_deallocObject(v0, 144, 7);
}

void *OUTLINED_FUNCTION_75(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = (a1 + 16);

  return memcpy(v11, v9, 0xC0uLL);
}

void OUTLINED_FUNCTION_75_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_75_5(uint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_75_7()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_75_11()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

void DefaultStringInterpolation.appendInterpolation(type:tags:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      v9._countAndFlagsBits = 91;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10 = 0xE200000000000000;
      v11 = 19534;
      switch(v8)
      {
        case 1:
          v10 = 0xE300000000000000;
          v11 = 5916994;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1464814662;
          break;
        case 3:
          v10 = 0xE400000000000000;
          v11 = 1396786515;
          break;
        case 4:
          v10 = 0xE300000000000000;
          v11 = 4735827;
          break;
        case 5:
          v10 = 0xE300000000000000;
          v11 = 5395011;
          break;
        case 6:
          v11 = 5395027;
          v10 = 0xE300000000000000;
          break;
        case 7:
          v10 = 0xE300000000000000;
          v11 = 5263425;
          break;
        case 8:
          v11 = 21574;
          break;
        default:
          break;
      }

      v12 = v10;
      String.append(_:)(*&v11);

      v13._countAndFlagsBits = 93;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      --v6;
    }

    while (v6);
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  v15._countAndFlagsBits = 35;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v16);

  if (a4)
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = a3;
    v19 = a4;

    String.append(_:)(*&v18);
  }
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, v2, v0);
}

void OUTLINED_FUNCTION_6_11()
{

  AnnounceCallFlow.state.setter(0);
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_16()
{
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v7 + 4) = a1;
  *(v7 + 12) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_6_26()
{
}

uint64_t OUTLINED_FUNCTION_6_30(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_47_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_6_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return outlined init with take of SPHConversation(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_40(uint64_t a1)
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_6_42(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

BOOL OUTLINED_FUNCTION_6_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_45(uint64_t a1, uint64_t a2)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void *OUTLINED_FUNCTION_6_46(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_47()
{

  return outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v0, type metadata accessor for MessageFlowDirectInvocation);
}

uint64_t OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return specialized PhoneCallFeatureManager.init(featureFlags:)(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_6_61()
{
  *(v1 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_6_65(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_6_70()
{
}

id OUTLINED_FUNCTION_6_74(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

void OUTLINED_FUNCTION_6_75(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_6_79()
{

  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_6_80@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2 + *(a1 + 40);

  return outlined init with copy of SignalProviding(v4, va);
}

uint64_t OUTLINED_FUNCTION_6_81()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_82(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_87(uint64_t result, uint64_t a2)
{
  *(v2 - 328) = result;
  *(v2 - 320) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_89()
{

  return specialized CallStateProvider.onCallCenterQueue<A>(_:)(closure #1 in TUCall.isSpeakerphoneEnabled.getter, 0);
}

unint64_t OUTLINED_FUNCTION_6_90()
{

  return type metadata accessor for SAAceView();
}

uint64_t OUTLINED_FUNCTION_6_96()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_97()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_10_9(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2, &protocol conformance descriptor for [A]);
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_13(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
}

uint64_t OUTLINED_FUNCTION_10_18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 111);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 131);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 126);
}

BOOL OUTLINED_FUNCTION_10_19()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_10_25(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4, v2, 1, a1);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, v1, v3);
}

uint64_t OUTLINED_FUNCTION_10_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return outlined destroy of PersonNameComponents?(v0);
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return outlined init with copy of SignalProviding(v10, va);
}

uint64_t OUTLINED_FUNCTION_10_33@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  return result;
}

char *OUTLINED_FUNCTION_10_39@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_10_41@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x6143746567726174;
  v2[11] = 0xEA00000000006C6CLL;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_50(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, a2);
  __swift_destroy_boxed_opaque_existential_1((v2 - 248));
  __swift_destroy_boxed_opaque_existential_1((v2 - 208));

  return __swift_destroy_boxed_opaque_existential_1((v2 - 168));
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_10_52()
{
}

uint64_t OUTLINED_FUNCTION_10_56(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_60(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return swift_asyncLet_begin();
}

id OUTLINED_FUNCTION_10_65(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_67(uint64_t result)
{
  v1[9] = result;
  v1[10] = 0x746E65746E69;
  v1[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_70()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_10_71(uint64_t a1, unint64_t a2)
{
  *(v3 - 344) = v2;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v3 - 272));
}

uint64_t OUTLINED_FUNCTION_10_74()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(va, &a9, v14, v15);
}

uint64_t OUTLINED_FUNCTION_10_80()
{

  return ButtonConfigurationModel.init(label:url:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_17_8()
{
}

uint64_t OUTLINED_FUNCTION_17_9()
{
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

void OUTLINED_FUNCTION_17_16()
{
  v2 = *(v0 + 5848);
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_29@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_30()
{
  *(v1 - 184) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_32(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_17_34(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_17_47()
{
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput(), v0);
}

uint64_t OUTLINED_FUNCTION_17_48()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

void OUTLINED_FUNCTION_17_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_17_50()
{

  Signpost.OpenSignpost.end()();
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t result)
{
  *(v2 + 16) = result;
  *(v2 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_17_58()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{
}

id OUTLINED_FUNCTION_28_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2512);

  return [a1 v9];
}

uint64_t OUTLINED_FUNCTION_28_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return Loggable.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_28_17()
{
}

uint64_t OUTLINED_FUNCTION_28_20()
{

  return outlined init with copy of PhoneCallNLIntent?(v0 + 208, v0 + 272, v1, v2);
}

uint64_t OUTLINED_FUNCTION_28_21@<X0>(uint64_t a1@<X8>)
{
  if (v1 == 1)
  {
    return a1 + 1;
  }

  else
  {
    return a1;
  }
}

void OUTLINED_FUNCTION_28_26(uint64_t a1@<X8>)
{
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_28_27(void *a1@<X8>)
{
  *a1 = 0xD000000000000021;
  a1[1] = (v1 - 32) | 0x8000000000000000;
  *(v2 + 1368) = v4;
  *(v2 + 1376) = v3;
}

__n128 *OUTLINED_FUNCTION_28_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x73746361746E6F63;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t PhoneCallFlowDelegatePlugin.makeFlowForCommon(parse:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  static Signpost.begin(_:)();
  (*(v5 + 16))(v9, a1, v3);
  if ((*(v5 + 88))(v9, v3) == enum case for Parse.directInvocation(_:))
  {
    (*(v5 + 96))(v9, v3);
    (*(v12 + 32))(v16, v9, v10);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003CLL && 0x80000000004527B0 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
LABEL_13:
        v26 = OUTLINED_FUNCTION_5_60();
        v27(v26);
        goto LABEL_14;
      }
    }

    v20 = Parse.DirectInvocation.userData.getter();
    if (v20)
    {
      v39 = VoiceCommandsStartCallDirectAction.init(from:)(v20);
      if (v39.value.appId._object)
      {
        isa = v39.value.intent.super.super.isa;
        type metadata accessor for App();

        App.__allocating_init(appIdentifier:)();
        static PhoneCallFlowFactory.makeVoiceCommandsParityFlow(app:intent:sharedGlobals:)();
        v23 = v22;

        v24 = OUTLINED_FUNCTION_5_60();
        v25(v24);
        goto LABEL_19;
      }
    }

    goto LABEL_13;
  }

  (*(v5 + 8))(v9, v3);
LABEL_14:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v28 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v30))
  {
    v31 = OUTLINED_FUNCTION_65_0();
    *v31 = 0;
    OUTLINED_FUNCTION_9_47();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    OUTLINED_FUNCTION_26_0(v31);
  }

  static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
  v23 = v37;
LABEL_19:
  Signpost.OpenSignpost.end()();

  return v23;
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
  v4 = *(v2 + 56);

  return PhoneCallControlAction.description.getter(v4);
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_57_6(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_12(uint64_t result, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_19(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v4, v3, v5);
}

uint64_t OUTLINED_FUNCTION_57_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return outlined init with copy of CallCancelSlotConfirmationButtonsBuilder(v12, va);
}

uint64_t OUTLINED_FUNCTION_57_22(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 128) = v2 | 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_23()
{

  return CodableAceObject.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_57_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  static Signpost.begin(_:string1:)();
}

uint64_t OUTLINED_FUNCTION_90_4(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x656772656D457369;
  v2[11] = 0xEB0000000079636ELL;
  return result;
}

__n128 *OUTLINED_FUNCTION_22_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_5@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + v1;
  *v4 = v2;
  *(v4 + 8) = 1;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

void OUTLINED_FUNCTION_22_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return outlined destroy of TransformerInput(v0, type metadata accessor for TransformerInput);
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t a1, uint64_t a2)
{

  return outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(a1);
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_87()
{
}

uint64_t OUTLINED_FUNCTION_22_24()
{
  *(v1 - 360) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_26(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return OSSignposter.logHandle.getter();
}

uint64_t OUTLINED_FUNCTION_22_29(uint64_t a1)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 *OUTLINED_FUNCTION_22_30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "isFirstWindow");
  result[2].n128_u16[7] = -4864;
  return result;
}

unint64_t OUTLINED_FUNCTION_22_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a14, v16, va);
}

uint64_t OUTLINED_FUNCTION_22_34()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_35()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_22_36()
{
}

uint64_t OUTLINED_FUNCTION_22_38(uint64_t a1)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1, uint64_t a2)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_12_22@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v3 + a1, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_26@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = a1;
  *(v1 + 56) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_28@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of CommonDirectAction(v2, v1 - a1);
}

uint64_t *OUTLINED_FUNCTION_12_30()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0 + 7);
}

BOOL OUTLINED_FUNCTION_108()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_41(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 *OUTLINED_FUNCTION_1_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_44()
{
  v3 = v0[4];
  v1[14] = v0[5];
  v1[15] = v3;
  v1[16] = v0[3];

  return outlined init with copy of SignalProviding((v0 + 51), (v1 + 17));
}

__n128 OUTLINED_FUNCTION_12_45@<Q0>(uint64_t a1@<X8>)
{
  *(v5 - 200) = a1;
  *(v5 - 192) = v1;
  v6 = *(v3 + 32);
  *(v5 - 184) = *(v3 + 16);
  *(v5 - 168) = v6;
  *(v5 - 152) = *(v3 + 48);
  *(v5 - 136) = v4;
  *(v5 - 128) = v2;
  result = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v5 - 120) = result;
  *(v5 - 104) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_12_55()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
}

BOOL OUTLINED_FUNCTION_19_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_12_62()
{
  *(v0 + 152) = *(v0 + 56);
  result = *(v0 + 72);
  *(v0 + 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_63()
{
}

uint64_t OUTLINED_FUNCTION_12_64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_68(uint64_t a1)
{

  return swift_allocObject();
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 2))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return specialized AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

__n128 *OUTLINED_FUNCTION_1_14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x646E497473727562;
  result[2].n128_u64[1] = 0xEA00000000007865;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_28()
{
}

_OWORD *OUTLINED_FUNCTION_8_31()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;

  return outlined init with take of Any((v2 - 80), (v2 - 112));
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_8_37(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for EmergencyCountdownModel(0);
}

uint64_t OUTLINED_FUNCTION_8_40()
{

  return static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_8_48()
{

  return outlined destroy of TransformerInput(v0 - 224, type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult);
}

uint64_t OUTLINED_FUNCTION_8_50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_8_54(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_56(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_8_62(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

void OUTLINED_FUNCTION_8_66(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x746E65746E69;
  v1[17] = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_8_67(uint64_t a1)
{
  v2[6] = v1;
  v2[9] = a1;
  v2[10] = 0x746E65746E69;
  v2[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 4) = v11;
  *(v10 + 12) = 2048;

  return Array.count.getter();
}

__n128 OUTLINED_FUNCTION_8_77(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_78@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_8_79()
{
}

uint64_t OUTLINED_FUNCTION_8_83(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t OUTLINED_FUNCTION_8_84()
{

  return static _SetStorage.resize(original:capacity:move:)();
}

uint64_t OUTLINED_FUNCTION_16_15@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x43746E6572727563;
  *(v2 + 136) = 0xEB000000006C6C61;
  return 0;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_16_20()
{
}

uint64_t OUTLINED_FUNCTION_16_22@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return type metadata accessor for PhoneError(0);
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  v1 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
  return v1;
}

double OUTLINED_FUNCTION_16_31(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

void *OUTLINED_FUNCTION_16_35()
{

  return specialized PhoneCallControlNLTransformer.init(cacheProvider:)(v3, v0, v1, v2);
}

void OUTLINED_FUNCTION_16_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_39(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_16_40(uint64_t a1)
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

uint64_t OUTLINED_FUNCTION_16_43()
{

  return type metadata accessor for Image();
}

uint64_t OUTLINED_FUNCTION_16_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_16_45()
{

  return OSSignpostIntervalState.init(id:isOpen:)(v0, 1);
}

uint64_t OUTLINED_FUNCTION_16_46(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_16_49(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

void OUTLINED_FUNCTION_16_50(char a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X5>, char a4@<W6>, uint64_t a5@<X7>, char a6@<W8>)
{
  *(v7 + 99) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 98) = a4;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 97) = a1;
}

uint64_t OUTLINED_FUNCTION_16_52(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_16_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_54()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_52_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 144) = result;
  *(v3 - 136) = a2;
  *(v3 - 168) = v2;
  return result;
}

unint64_t OUTLINED_FUNCTION_52_8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_52_10()
{

  return Reducer.init(builder:)();
}

uint64_t OUTLINED_FUNCTION_52_13()
{
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_52_16(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_52_18()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

void *OUTLINED_FUNCTION_52_19@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[15] = a2;
  result[16] = 0x74736574614C7369;
  result[17] = v2;
  return result;
}

void OUTLINED_FUNCTION_52_23(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

__n128 *OUTLINED_FUNCTION_2_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x69766E496C6C6163;
  result[2].n128_u64[1] = 0xEA00000000006574;
  return result;
}

__n128 *OUTLINED_FUNCTION_2_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7069636974726170;
  result[2].n128_u64[1] = 0xEB00000000746E61;
  return result;
}

void OUTLINED_FUNCTION_4_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t a1)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_4_25(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 120) = a1;
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, v17 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_4_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return outlined init with take of SPHConversation(&a9, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_4_32(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_4_42()
{
  *(v0 + 80) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_4_49()
{
  result = *(v0 + 32);
  *(v1 + 128) = 0x636E657265666E69;
  *(v1 + 136) = 0xEF656372756F5365;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;

  return outlined init with copy of PhoneCallNLIntent?(v3, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_51(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_4_55(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_58()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_4_67(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_4_69(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return outlined init with copy of SignalProviding(v2, va);
}

id OUTLINED_FUNCTION_4_74(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_4_76(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
}

uint64_t OUTLINED_FUNCTION_4_80(uint64_t a1)
{
  v3 = -1 << *(v1 + 32);
  v4 = a1 & ~v3;

  return _HashTable.nextHole(atOrAfter:)(v4, v1 + 56, ~v3);
}

uint64_t OUTLINED_FUNCTION_4_81@<X0>(char a3@<W8>)
{
  *(v3 - 72) = a3;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

void OUTLINED_FUNCTION_4_82(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000015;

  v2 = a1 | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t *OUTLINED_FUNCTION_4_84@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 344) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v4 - 128));
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, v0, v2);
}

unint64_t OUTLINED_FUNCTION_4_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, va);
}

uint64_t OUTLINED_FUNCTION_4_91()
{

  return outlined init with copy of ButtonConfigurationModel(v1, v0, type metadata accessor for ButtonConfigurationModel);
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_25_2(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E6F697461636F6CLL;
  a1[2].n128_u64[1] = 0xE800000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return specialized AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  result = *(v2 + 168);
  v4[3] = *(v2 + 256);
  v4[4] = v1;
  v4[2] = v3;
  return result;
}

void OUTLINED_FUNCTION_25_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, va);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return type metadata accessor for EmergencyCountdownModel(0);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_17()
{
  result = *(v0 + 32);
  *(v1 - 240) = 0;
  *(v1 - 232) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_20(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_25_22@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + *(a1 + 40));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);

  return DeviceState.isAuthenticatedForPhone.getter(v3, v4);
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of PhoneCallNLIntent?(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return outlined init with copy of SignalProviding(v1, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_25_33@<X0>(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x656369766564;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_25_36(float a1)
{
  *v2 = a1;
  *(v1 + 304) = v3;

  return swift_getMetatypeMetadata();
}

unint64_t OUTLINED_FUNCTION_25_37(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 272));
}

uint64_t OUTLINED_FUNCTION_25_38()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_39()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return static Date.distantPast.getter();
}

uint64_t type metadata accessor for PhoneCallCommonCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallCommonCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t PhoneCallCommonCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of PhoneCallNLIntent?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

void OUTLINED_FUNCTION_14_13(uint64_t a1@<X8>)
{
  v2[9] = a1;
  v2[10] = v3;
  v2[11] = (v1 - 32) | 0x8000000000000000;
}

__n128 *OUTLINED_FUNCTION_14_19(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  result[1] = a2;
  result[2].n128_u64[0] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_14_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

void OUTLINED_FUNCTION_13_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1)
{

  return specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_14_29(uint64_t a1)
{

  return Loggable.wrappedValue.modify();
}

void OUTLINED_FUNCTION_14_31()
{
}

uint64_t OUTLINED_FUNCTION_14_34()
{
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_14_41(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_14_50()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_14_51(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14_52@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x746E65746E69;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_53@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char a9@<W8>)
{
  *(v10 + 99) = a9;
  *(v10 + 48) = a8;
  *(v10 + 56) = v9;
  *(v10 + 98) = a7;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  *(v10 + 97) = a4;
  *(v10 + 96) = a3;
  *(v10 + 16) = result;
  *(v10 + 24) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_14_56@<Q0>(uint64_t a1@<X8>)
{
  *(v5 - 200) = a1;
  *(v5 - 192) = v1;
  v6 = *(v4 + 32);
  *(v5 - 184) = *(v4 + 16);
  *(v5 - 168) = v6;
  *(v5 - 152) = *(v4 + 48);
  *(v5 - 136) = v3;
  *(v5 - 128) = v2;
  result = *(v4 + 80);
  v8 = *(v4 + 96);
  *(v5 - 120) = result;
  *(v5 - 104) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_57()
{

  return Error.localizedDescription.getter();
}

uint64_t OUTLINED_FUNCTION_14_60(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_14_62()
{
}

uint64_t OUTLINED_FUNCTION_14_64()
{

  return Hasher.init(_seed:)();
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_40();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneCallNLIntent?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of PersonNameComponents?()
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1();
  v3 = OUTLINED_FUNCTION_19_0();
  v4(v3);
  return v0;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_40();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of PhoneCallNLIntent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_9()
{
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = 0xE900000000000074;
}

uint64_t OUTLINED_FUNCTION_13_13()
{
  result = *(v1 + 16);
  *(v1 + 16) = v0;
  return result;
}

void OUTLINED_FUNCTION_13_18()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_13_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 56) = a3;
  *(v3 - 80) = a1;
  *(v3 - 72) = a2;

  return outlined init with take of Any((v3 - 80), (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_13_21()
{
}

uint64_t OUTLINED_FUNCTION_13_23()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

BOOL OUTLINED_FUNCTION_13_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_28(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2, &protocol conformance descriptor for AnyValueFlow<A>);
}

void OUTLINED_FUNCTION_13_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_13_36()
{
  v3 = *(v1 - 240);
  v4 = *(v1 - 232);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, (v0 + 216));
}

uint64_t OUTLINED_FUNCTION_13_38()
{
}

uint64_t OUTLINED_FUNCTION_162()
{
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_13_46(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_13_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_13_57()
{

  Signpost.OpenSignpost.end()();
}

uint64_t OUTLINED_FUNCTION_13_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_13_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, &a9, v9, v10);
}

uint64_t OUTLINED_FUNCTION_13_61@<X0>(uint64_t a1@<X8>)
{
  v2[15] = v1;
  v2[16] = v3;
  v2[17] = (a1 - 32) | 0x8000000000000000;
  return 0;
}

__n128 *OUTLINED_FUNCTION_13_63(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  result[1] = a2;
  result[2].n128_u64[0] = a12;
  return result;
}

uint64_t type metadata accessor for RestrictionCheckGuardFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for RestrictionCheckGuardFlow;
  if (!type metadata singleton initialization cache for RestrictionCheckGuardFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue) = 1;
  v7 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 32))(v3 + v7, a1);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals);
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_phoneCallCommonCATsSimple) = a3;
  return v3;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_166(uint64_t result)
{
  *(v2 + 144) = v1;
  *(v2 + 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v8 + 40) = a4;
  *(v8 + 48) = v7;
  *(v8 + 90) = a7;
  *(v8 + 89) = a6;
  *(v8 + 88) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_4(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t specialized SharedGlobalsProviding.flowFinder.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t SiriKitFlowFactory.makeSharingPolicyFlow()()
{
  v0 = type metadata accessor for SharingPolicyCheckFlow();
  SharingPolicyCheckFlow.__allocating_init()();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_7_75();
  return v0;
}

void OUTLINED_FUNCTION_63_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

unint64_t OUTLINED_FUNCTION_63_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v9, &a9);
}

uint64_t OUTLINED_FUNCTION_78_0(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_63_8()
{
  v3 = v0[18];
  v1[14] = v0[19];
  v1[15] = v3;
  v1[16] = v0[17];

  return outlined init with copy of SignalProviding((v0 + 51), (v1 + 17));
}

uint64_t OUTLINED_FUNCTION_63_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void OUTLINED_FUNCTION_63_14(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v3 + 144) = a2;
  *(v3 + 168) = v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = 0xEB00000000736472;
}

uint64_t OUTLINED_FUNCTION_63_15()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t outlined init with copy of MainFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MainFlow(0);
  type metadata accessor for GuardFlow();
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type MainFlow and conformance MainFlow, type metadata accessor for MainFlow);
  v5 = Flow.guarded<A>(by:)();
  outlined destroy of MainFlow(a2);

  *(v3 + 16) = v5;
  return v3;
}

uint64_t outlined destroy of MainFlow(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  OUTLINED_FUNCTION_66();
  v24 = v0;
  v2 = v1;
  v3 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  v18 = OUTLINED_FUNCTION_22_26(v17, static OSSignposter.siriPhone);
  OSSignpostIntervalState.signpostID.getter();
  v23 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v24 & 1) == 0)
  {
    if (v2)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v9, v3) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v9, v3);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v18, v23, v22, v2, v20, v21, 2u);
      OUTLINED_FUNCTION_8();

LABEL_15:

      (*(v12 + 8))(v16, v10);
      OUTLINED_FUNCTION_65();
      return;
    }

    __break(1u);
  }

  if (v2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v19)
  {
    if (v2 >> 16 <= 0x10)
    {
      v2 = &v25;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(v1 + 128) = 0xD000000000000015;
}

uint64_t OUTLINED_FUNCTION_44_5()
{
}

uint64_t OUTLINED_FUNCTION_44_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44_18()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_44_21()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t OUTLINED_FUNCTION_44_22(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, v2 | 0x8000000000000000, (v3 - 120));
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for Flow.execute() in conformance SentinelConditionalFlow<A>(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t SentinelConditionalFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(SentinelConditionalFlow.execute(), 0, 0);
}

uint64_t SentinelConditionalFlow.execute()()
{
  v0[2] = *(v0[4] + 16);
  type metadata accessor for ConditionalFlow();
  swift_getWitnessTable();
  static ExecuteResponse.complete<A>(next:)();
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for Flow.execute() in conformance RestrictionCheckGuardFlow(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v6(a1);
}

uint64_t RestrictionCheckGuardFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[32] = v2;
  v1[33] = v0;
  type metadata accessor for DialogPhase();
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for DeviceRestrictions();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v4 = type metadata accessor for Restrictions();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();

  return _swift_task_switch(RestrictionCheckGuardFlow.execute(), 0, 0);
}

{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[36];
  v4 = (v0[33] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.restrictedCommands.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.phoneFeaturesUnavailable.getter();
  lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, &type metadata accessor for DeviceRestrictions, &protocol conformance descriptor for DeviceRestrictions);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v3 + 8);
  v8(v1, v2);
  v9 = OUTLINED_FUNCTION_92();
  (v8)(v9);
  if (v7)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#RestrictionCheckFlow Encountered phoneFeaturesUnavailable restriction, serving unsupported dialog.", v13, 2u);
      OUTLINED_FUNCTION_26_0(v13);
    }

    v14 = v0[33];

    v15 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
    swift_beginAccess();
    *(v14 + v15) = 1;
    swift_retain_n();
    static DialogPhase.error.getter();
    outlined init with copy of SignalProviding(v4, (v0 + 17));
    type metadata accessor for DialogOutputFactory(0);
    swift_allocObject();
    v16 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
    v17 = (*(*v16 + 112))(v16);

    v0[31] = v17;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    v18 = OUTLINED_FUNCTION_92();
    v19(v18);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v20 = OUTLINED_FUNCTION_92();
    v21(v20);
    v22 = v0[10];
    v23 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v22);
    LOBYTE(v22) = DeviceState.isAuthenticatedForPhone.getter(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (v22)
    {
      goto LABEL_17;
    }

    v24 = Restrictions.restrictedCommands.getter();
    if (one-time initialization token for phoneCallCommand != -1)
    {
      OUTLINED_FUNCTION_1_99(&one-time initialization token for phoneCallCommand);
    }

    v25 = specialized Set.contains(_:)(static RestrictionCheckGuardFlow.phoneCallCommand, *algn_59A258, v24);

    if (v25 && (RestrictionCheckGuardFlow.isVoiceDialRestrictedRequest()() & 1) != 0)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.siriPhone);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v28))
      {
        v29 = OUTLINED_FUNCTION_65_0();
        *v29 = 0;
        OUTLINED_FUNCTION_15_3(&dword_0, v30, v31, "#RestrictionCheckFlow Encountered phoneCall command restriction, prompting user to unlock before continuing.");
        OUTLINED_FUNCTION_26_0(v29);
      }

      v32 = v0[33];

      v33 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
      swift_beginAccess();
      *(v32 + v33) = 0;
      v34 = v4[3];
      v35 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v34);
      (*(v35 + 104))(v34, v35);
      v37 = v0[15];
      v36 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v37);
      SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v37, v36);
      static ExecuteResponse.ongoing<A>(next:)();

      v38 = OUTLINED_FUNCTION_92();
      v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    else
    {
LABEL_17:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.siriPhone);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_65_0();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "#RestrictionCheckFlow All restrictions passed!", v43, 2u);
        OUTLINED_FUNCTION_26_0(v43);
      }

      v45 = v0[40];
      v44 = v0[41];
      v46 = v0[39];
      v47 = v0[33];

      v48 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
      swift_beginAccess();
      *(v47 + v48) = 0;
      static ExecuteResponse.complete()();
      (*(v45 + 8))(v44, v46);
    }
  }

  v49 = v0[1];

  return v49();
}

unint64_t OUTLINED_FUNCTION_19_15@<X0>(uint64_t a1@<X8>)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, a1 | 0x8000000000000000, (v1 - 128));
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_28()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

void OUTLINED_FUNCTION_19_31(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

void OUTLINED_FUNCTION_19_32()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2)
{

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a1, a2, type metadata accessor for SearchCallHistoryBinaryButtonModel);
}

uint64_t OUTLINED_FUNCTION_19_40(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  *(v3 - 168) = v2;
  return result;
}

void OUTLINED_FUNCTION_19_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_19_45()
{
}

uint64_t lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_83_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_83_3()
{
  result = *(v1 - 360);
  *(v1 - 472) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return outlined init with copy of SignalProviding(v1 - 128, v0 + 368);
}

uint64_t DeviceState.isAuthenticatedForPhone.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UnlockDevicePolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UnlockDevicePolicy.default.getter();
  v6 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_30_4(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2, &protocol conformance descriptor for TerminalOntologyNode<A>);
}

uint64_t OUTLINED_FUNCTION_30_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return static DialogPhase.summary.getter();
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), a11);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), a12);
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_30_13()
{
  *(v1 - 80) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_30_14()
{
  *(v0 - 200) = 0;
  *(v0 - 208) = 0;
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

id OUTLINED_FUNCTION_30_19(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_30_22()
{
  *(v1 + 64) = *(v0 + 48);

  return outlined init with copy of SignalProviding(v0 + 448, v1 + 72);
}

uint64_t OUTLINED_FUNCTION_30_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_26(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_30_31()
{

  return outlined destroy of PhoneSnippetDataModels(v0, type metadata accessor for PhoneSnippetDataModels);
}

void OUTLINED_FUNCTION_30_32()
{
  v2 = *(v0 + 2272);
}

uint64_t OUTLINED_FUNCTION_30_34()
{

  return type metadata accessor for SpeakableString();
}

void OUTLINED_FUNCTION_33_5(uint64_t a1@<X8>)
{
  v3[36] = v1;
  v3[39] = a1;
  v3[40] = v4;
  v3[41] = (v2 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_30_35()
{
}

uint64_t OUTLINED_FUNCTION_30_36()
{
}

void OUTLINED_FUNCTION_30_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_30_38(uint64_t a1, uint64_t a2)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_30_41(uint64_t a1)
{

  return static DialogPhase.completion.getter();
}

uint64_t _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t RestrictionCheckGuardFlow.exitValue.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RestrictionCheckGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for Flow.execute() in conformance MainFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return MainFlow.execute()(a1);
}

uint64_t MainFlow.execute()(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  type metadata accessor for CATOption();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for ExecuteResponse();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(MainFlow.execute(), 0, 0);
}

uint64_t MainFlow.execute()()
{
  v13 = v0;
  MainFlow.makeNextFlow()(v0 + 2);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  outlined init with copy of SignalProviding((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    swift_getDynamicType();
    v6 = _typeName(_:qualified:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "#MainFlow Pushing %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  outlined init with copy of SignalProviding((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0_pMd, &_s11SiriKitFlow0C0_pMR);
  type metadata accessor for AnyFlow();
  if (swift_dynamicCast())
  {
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    static ExecuteResponse.complete<A>(next:)();
  }

  (*(v0[23] + 32))(v0[19], v0[24], v0[22]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t MainFlow.makeNextFlow()@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v2 = v1;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v5);
  v70 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v60 - v12;
  v13 = type metadata accessor for MainFlow(0);
  __chkstk_darwin(v13 - 8);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
  outlined init with copy of MainFlow(v2, v17, type metadata accessor for MainFlow);
  v69 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v64 = v5;
    v23 = v22;
    v62 = swift_slowAlloc();
    v73 = v62;
    *v23 = 136315138;
    v60 = v8;
    v24 = *(v8 + 16);
    v61 = v21;
    v25 = v71;
    v24(v71, v17, v7);
    v26 = String.init(describing:)(v25);
    v27 = v2;
    v28 = v26;
    v63 = v10;
    v30 = v29;
    outlined destroy of MainFlow(v17, type metadata accessor for MainFlow);
    v31 = v28;
    v2 = v27;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v73);
    v10 = v63;

    *(v23 + 4) = v32;
    v33 = v60;
    _os_log_impl(&dword_0, v20, v61, "#MainFlow Executing MainFlow with parse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {

    outlined destroy of MainFlow(v17, type metadata accessor for MainFlow);
    v33 = v8;
    v24 = *(v8 + 16);
  }

  v24(v10, v2, v7);
  v34 = (*(v33 + 88))(v10, v7);
  if (v34 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_7;
  }

  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v33 + 96))(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "#MainFlow Encountered NLv3PlusServerConversion. This is unexpected!!!", v38, 2u);
    }

    v39 = v70;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v40);
    outlined destroy of MainFlow(v39, type metadata accessor for PhoneError);
    swift_willThrow();
    v41 = type metadata accessor for NLIntent();
    return (*(*(v41 - 8) + 8))(v10, v41);
  }

  else if (v34 == enum case for Parse.directInvocation(_:))
  {
    (*(v33 + 96))(v10, v7);
    v43 = v66;
    v42 = v67;
    v44 = v10;
    v45 = v68;
    (*(v67 + 32))(v66, v44, v68);
    MainFlow.makeFlowForDirectInvocation(_:)(v43, v72);
    return (*(v42 + 8))(v43, v45);
  }

  else
  {
    if (v34 == enum case for Parse.NLv4IntentOnly(_:) || v34 == enum case for Parse.uso(_:) || v34 == enum case for Parse.ifClientAction(_:))
    {
LABEL_7:
      (*(v33 + 8))(v10, v7);
      return MainFlow.makeFlowForIntent()(v72);
    }

    (*(v33 + 8))(v10, v7);
    v48 = v65;
    outlined init with copy of MainFlow(v2, v65, type metadata accessor for MainFlow);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73 = v52;
      *v51 = 136315138;
      v53 = v71;
      v24(v71, v48, v7);
      v54 = String.init(describing:)(v53);
      v56 = v55;
      outlined destroy of MainFlow(v48, type metadata accessor for MainFlow);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v73);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_0, v49, v50, "#MainFlow No flow for parse: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {

      outlined destroy of MainFlow(v48, type metadata accessor for MainFlow);
    }

    v58 = v70;
    *v70 = xmmword_42D060;
    *(v58 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v59);
    outlined destroy of MainFlow(v58, type metadata accessor for PhoneError);
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for PhoneError(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneError;
  if (!type metadata singleton initialization cache for PhoneError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of MainFlow(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t String.init(describing:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  (*(v4 + 16))(v8, a1, v2);
  v16 = OUTLINED_FUNCTION_43_3();
  if (v17(v16) == enum case for Parse.uso(_:))
  {
    v18 = OUTLINED_FUNCTION_43_3();
    v19(v18);
    (*(v11 + 32))(v15, v8, v9);
    strcpy(v34, ".uso parse: ");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v32 = type metadata accessor for Siri_Nlu_External_UserParse();
    v33 = lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    __swift_allocate_boxed_opaque_existential_1(&v30);
    USOParse.userParse.getter();
    v20 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v30 = v34[0];
    v31 = v34[1];
    v24 = String.init<A>(_:)();
    (*(v4 + 8))(a1, v2);
    v25 = OUTLINED_FUNCTION_14_6();
    v26(v25);
  }

  else
  {
    v27 = *(v4 + 8);
    v28 = OUTLINED_FUNCTION_43_3();
    v27(v28);
    v30 = 0;
    v31 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v24 = String.init<A>(_:)();
    (v27)(a1, v2);
  }

  return v24;
}

int8x16_t OUTLINED_FUNCTION_71_1(int8x16_t *a1)
{
  result = vextq_s8(*(v1 + 152), *(v1 + 152), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_71_7()
{

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_71_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v3;
  *(result + 72) = a2;
  *(result + 80) = 0x64657373694D7369;
  *(result + 88) = 0xE800000000000000;
  *(result + 96) = v2;
  *(result + 120) = a2;
  *(result + 128) = 0x74736574614C7369;
  *(result + 136) = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_10()
{
}

uint64_t OUTLINED_FUNCTION_71_11()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_71_12()
{
  result = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  return result;
}

id OUTLINED_FUNCTION_71_13()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

uint64_t outlined destroy of MainFlow(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MainFlow.makeFlowForDirectInvocation(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v117 = a2;
  v115 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v115);
  v116 = &v105[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v4 - 8);
  v109 = &v105[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  v110 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Parse.DirectInvocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v114 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v105[-v12];
  __chkstk_darwin(v14);
  v16 = &v105[-v15];
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.siriPhone);
  v17 = *(v9 + 16);
  v17(v16, a1, v8);
  v112 = v17;
  v113 = v9 + 16;
  v17(v13, a1, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v119 = a1;
  if (v20)
  {
    v21 = v8;
    v22 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v126[0] = v108;
    *v22 = 136315394;
    v107 = v18;
    v23 = Parse.DirectInvocation.identifier.getter();
    v25 = v24;
    v106 = v19;
    v26 = *(v9 + 8);
    v26(v16, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v126);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *&v123 = Parse.DirectInvocation.userData.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = v21;
    v26(v13, v21);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v126);
    a1 = v119;

    *(v22 + 14) = v32;
    v33 = v107;
    _os_log_impl(&dword_0, v107, v106, "#MainFlow Making flow for DirectInvocation(identifier=%s, payload=%s)", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = *(v9 + 8);
    v34(v13, v8);
    v35 = v16;
    v31 = v8;
    v34(v35, v8);
  }

  v36 = Parse.DirectInvocation.userData.getter();
  if (!v36)
  {
    v36 = Dictionary.init(dictionaryLiteral:)();
  }

  v37 = v36;
  v38 = Parse.DirectInvocation.identifier.getter();
  v40 = v39;
  v41 = v38 == 0xD000000000000034 && 0x8000000000452770 == v39;
  if (v41 || (v42 = v38, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    StartAudioCallDirectAction.init(from:)(v37, &v127);
    if (v128)
    {
      v132[0] = v127;
      v132[1] = v128;
      v133 = v129;
      v134 = v130;
      v135[0] = v131[0];
      *(v135 + 9) = *(v131 + 9);
      v43 = *(type metadata accessor for MainFlow(0) + 20);
      default argument 2 of static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(v126);
      v44 = static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(v132, (v118 + v43), v126);
      __swift_destroy_boxed_opaque_existential_1(v126);
      v45 = type metadata accessor for AnyFlow();
      v46 = v117;
      v117[3] = v45;
      v46[4] = &protocol witness table for AnyFlow;
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v127, &_s27PhoneCallFlowDelegatePlugin010StartAudioB12DirectActionVSgMd, &_s27PhoneCallFlowDelegatePlugin010StartAudioB12DirectActionVSgMR);
LABEL_38:
      *v46 = v44;
      return result;
    }

    goto LABEL_67;
  }

  v48 = v42 == 0xD000000000000034 && 0x8000000000452730 == v40;
  if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    *&v49 = StartCallDirectAction.init(from:)(v37);
    if (v50)
    {
      v51 = v49;
      v52 = v50;
      v53 = *(type metadata accessor for MainFlow(0) + 20);
      default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v126);
      v44 = static CarPlayDirectInvocationFlowFactory.makeStartCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(v51, v52, (v118 + v53), v126);

      __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_22:
      result = type metadata accessor for AnyFlow();
      v46 = v117;
      v117[3] = result;
      v46[4] = &protocol witness table for AnyFlow;
      goto LABEL_38;
    }

    goto LABEL_67;
  }

  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v54 = static IdentifyIncomingCallerDirectAction.identifier == v42 && *algn_599AD8 == v40;
  if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v111, static Logger.announceTelephony);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "#MainFlow CallKit announcement directInvocation received.", v57, 2u);
      a1 = v119;
    }

    v58 = v114;
    v112(v114, a1, v31);
    if (!_s27PhoneCallFlowDelegatePlugin34IdentifyIncomingCallerDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(v58, [objc_allocWithZone(CNContactStore) init]))
    {
      goto LABEL_67;
    }

    v59 = type metadata accessor for AnnounceCallFlow();
    v60 = type metadata accessor for MainFlow(0);
    outlined init with copy of SignalProviding(v118 + *(v60 + 20), v126);

    v62 = AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:)(v61, v126);
LABEL_36:
    v44 = v62;
    v46 = v117;
    v117[3] = v59;
    v46[4] = lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow, type metadata accessor for AnnounceCallFlow, &protocol conformance descriptor for AnnounceCallFlow);
    goto LABEL_37;
  }

  v63 = v42 == 0xD000000000000046 && 0x8000000000457B40 == v40;
  if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v64 = v114;
    v112(v114, a1, v31);
    v65 = _s27PhoneCallFlowDelegatePlugin016AnnounceIncomingB24NotificationDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(v64, [objc_allocWithZone(CNContactStore) init]);
    if (!v65)
    {
      goto LABEL_67;
    }

    v66 = v65;
    v59 = type metadata accessor for AnnounceCallFlow();
    v67 = type metadata accessor for MainFlow(0);
    outlined init with copy of SignalProviding(v118 + *(v67 + 20), v126);

    default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(&v123);
    v62 = AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:appFinder:)(v66, v126, &v123);
    goto LABEL_36;
  }

  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v68 = qword_599748;
  v69 = unk_599750;
  v126[0] = static AnnounceVoicemailDirectAction.identifier;

  v70._countAndFlagsBits = 46;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71._countAndFlagsBits = v68;
  v71._object = v69;
  String.append(_:)(v71);
  if (*&v126[0] == v42 && *(&v126[0] + 1) == v40)
  {

LABEL_55:

    v74 = Parse.DirectInvocation.userData.getter();
    v75 = v136;
    v76 = _s27PhoneCallFlowDelegatePlugin9DICodablePAAE4fromyxSDySSypGSgKFZAA29AnnounceVoicemailDirectActionC_Tt1g5(v74);

    v136 = v75;
    if (v75)
    {
      return result;
    }

    v77 = type metadata accessor for MainFlow(0);
    outlined init with copy of SignalProviding(v118 + *(v77 + 20), v126);
    v78 = one-time initialization token for instance;

    if (v78 != -1)
    {
      swift_once();
    }

    v79 = static SiriPhoneDefaults.instance;
    v80 = objc_allocWithZone(CNContactStore);
    v81 = v79;
    v82 = [v80 init];
    v83 = type metadata accessor for AnnounceVoicemailFlow();
    v44 = swift_allocObject();
    *(v44 + 56) = &type metadata for SiriPhoneDefaults;
    *(v44 + 64) = &protocol witness table for SiriPhoneDefaults;
    *(v44 + 32) = v79;
    *(v44 + 136) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
    *(v44 + 144) = &protocol witness table for CNContactStore;
    *(v44 + 112) = v82;
    *(v44 + 16) = v76;
    *(v44 + 24) = 0;
    outlined init with take of SPHConversation(v126, v44 + 72);
    v46 = v117;
    v117[3] = v83;
    v46[4] = lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow, type metadata accessor for AnnounceVoicemailFlow, &protocol conformance descriptor for AnnounceVoicemailFlow);
LABEL_37:

    goto LABEL_38;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v73)
  {
    goto LABEL_55;
  }

  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v84 = static AnnounceDropInCallDirectAction.identifier == v42 && unk_5996C0 == v40;
  if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v85 = AnnounceDropInCallDirectAction.init(from:)(v37);
    if ((v86 & 1) == 0)
    {
      v119 = v85;
      v92 = type metadata accessor for MainFlow(0);
      outlined init with copy of SignalProviding(v118 + *(v92 + 20), v126);
      v93 = type metadata accessor for AnnounceCallBellCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      v94 = CATWrapper.__allocating_init(options:globals:)();
      v95 = type metadata accessor for ResponseFactory();
      swift_allocObject();
      v96 = ResponseFactory.init()();
      v97 = type metadata accessor for AnnounceDropInCallFlow(0);
      v44 = swift_allocObject();
      v125 = &protocol witness table for AnnounceCallBellCATPatternsExecutor;
      v124 = v93;
      v122 = &protocol witness table for ResponseFactory;
      *&v123 = v94;
      v121 = v95;
      *&v120 = v96;

      static DialogPhase.completion.getter();
      OutputGenerationManifest.init(dialogPhase:_:)();
      *(v44 + 144) = v119;
      outlined init with copy of SignalProviding(v126, v44 + 104);
      type metadata accessor for AnnounceCallBellCATs(0);
      static CATOption.defaultMode.getter();
      v98 = CATWrapper.__allocating_init(options:globals:)();

      __swift_destroy_boxed_opaque_existential_1(v126);
      *(v44 + 16) = v98;
      outlined init with take of SPHConversation(&v123, v44 + 24);
      outlined init with take of SPHConversation(&v120, v44 + 64);
      v46 = v117;
      v117[3] = v97;
      result = lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow, type metadata accessor for AnnounceDropInCallFlow, &protocol conformance descriptor for AnnounceDropInCallFlow);
      v46[4] = result;
      goto LABEL_38;
    }

    goto LABEL_67;
  }

  if (v42 == 0xD00000000000002CLL && 0x800000000045BC20 == v40)
  {
  }

  else
  {
    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v100 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v101 = (v118 + *(type metadata accessor for MainFlow(0) + 20));
  v102 = v101[3];
  v103 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v104 = (*(v103 + 56))(v102, v103);
  LOBYTE(v102) = (*(*v104 + 216))(v104);

  if (v102)
  {
    v44 = static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(v101);
    goto LABEL_22;
  }

LABEL_67:
  v87 = Parse.DirectInvocation.identifier.getter();
  v88 = v116;
  *v116 = v87;
  *(v88 + 8) = v89;
  *(v88 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v90 = swift_allocError();
  PhoneError.logged()(v91);
  outlined destroy of MainFlow(v88, type metadata accessor for PhoneError);
  v136 = v90;
  return swift_willThrow();
}

PhoneCallFlowDelegatePlugin::StartCallDirectAction_optional __swiftcall StartCallDirectAction.init(from:)(Swift::OpaquePointer from)
{
  if (!*(from._rawValue + 2) || (v2 = OUTLINED_FUNCTION_0_116(), v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3), (v5 & 1) == 0))
  {
    v11 = 0u;
    v12 = 0u;

    goto LABEL_7;
  }

  outlined init with copy of Any(*(from._rawValue + 7) + 32 * v4, &v11);

  if (!*(&v12 + 1))
  {
LABEL_7:
    outlined destroy of Any?(&v11);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  v7 = v9;
  v8 = v10;
LABEL_9:
  result.value.appBundleId._object = v8;
  result.value.appBundleId._countAndFlagsBits = v7;
  result.is_nil = v6;
  return result;
}

__n128 *OUTLINED_FUNCTION_0_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x43746E6572727563;
  result[2].n128_u64[1] = 0xEB000000006C6C61;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters();
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 96) = a2;
  *(v2 + 120) = result;
  strcpy((v2 + 128), "participants");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_0_28(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v10 = (a1 + 32);

  return memcpy(v10, __srca, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  *(v3 - 152) = v2;
  *(v3 - 144) = v0;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_0_34()
{
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, a4);
  __swift_destroy_boxed_opaque_existential_1((v4 + 80));
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_51(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_52(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_0_53()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 192) = 0;
}

uint64_t OUTLINED_FUNCTION_0_56()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_57@<X0>(uint64_t *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a1[5];
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
}

uint64_t OUTLINED_FUNCTION_0_64(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_67(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_72(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_82()
{
}

void OUTLINED_FUNCTION_0_84()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1)
{

  return swift_once();
}

__n128 *OUTLINED_FUNCTION_0_103(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6C646E7542707061;
  result[2].n128_u64[1] = 0xEB00000000644965;
  return result;
}

__n128 *OUTLINED_FUNCTION_0_104(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F6365526C6C6163;
  result[2].n128_u64[1] = 0xEF746E756F436472;
  return result;
}

void OUTLINED_FUNCTION_0_105(float a1)
{
  *v2 = a1;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, v6, v7);
}

unint64_t OUTLINED_FUNCTION_0_106(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_111()
{
  *(v1 + 80) = v2;
  *(v1 + 88) = v0 & 1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_112()
{
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

double OUTLINED_FUNCTION_0_118(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  a1[1] = a9;
  a1[2] = a10;
  result = *&a11;
  a1[3] = a11;
  return result;
}

void OUTLINED_FUNCTION_0_120()
{
  strcpy((v0 + 80), "hasReference");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
}

uint64_t OUTLINED_FUNCTION_0_123()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_8();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a2, ...)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

double OUTLINED_FUNCTION_27_10()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 2, v2);

  return EmergencyDuringOngoingCallOfferFlow.state.setter(v3);
}

void OUTLINED_FUNCTION_27_14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, 0xD000000000000025, a3 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_27_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_27_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_27_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of SpeakableString?(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_27_24@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_25()
{
  __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_27_26(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_27_28()
{
  v2 = *(v0 + 2120);
}

__n128 *OUTLINED_FUNCTION_27_33(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6D6563696F567369;
  result[2].n128_u64[1] = 0xEB000000006C6961;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_35()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_36(float a1)
{
  *v1 = a1;

  return _typeName(_:qualified:)();
}

uint64_t OUTLINED_FUNCTION_27_38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

void *OUTLINED_FUNCTION_27_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (a1 + 16);

  return memcpy(v10, &a9, 0x68uLL);
}

__n128 *OUTLINED_FUNCTION_27_41@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[4].n128_u64[1] = v3;
  result[5].n128_u64[0] = v4;
  result[5].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t default argument 2 of AnnounceCallFlow.init(directAction:sharedGlobals:appFinder:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v2 = type metadata accessor for PhoneCallFeatureManager();
  v3 = OUTLINED_FUNCTION_67(v2);
  v17 = &type metadata for PhoneCallFeatureFlags;
  v18 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v4 = outlined init with take of SPHConversation(&v15, v3 + 16);
  OUTLINED_FUNCTION_77_2(v4, v5, v6, v7, v8, v9, v10, v11, v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_35_4(&one-time initialization token for instance);
  }

  v12 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  OUTLINED_FUNCTION_70();
  v13 = swift_allocObject();
  *a1 = v13;
  v13[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v13[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v13[4] = v3;
  v13[5] = v12;
  v13[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v13[3] = 0;
}

uint64_t sub_1893C()
{

  OUTLINED_FUNCTION_48_3();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_18A00()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_76_3()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_76_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_76_10()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_68_1()
{
}

uint64_t OUTLINED_FUNCTION_68_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return outlined init with copy of SignalProviding(a1, va);
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_68_10()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_12()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_68_13()
{

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_68_14()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t static CarPlayDirectInvocationFlowFactory.makeStartCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  memset(&v8[2], 0, 24);
  v9 = xmmword_42DD90;
  v10 = xmmword_42DD90;
  v11 = 1;

  v6 = static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(v8, a3, a4);
  outlined destroy of StartAudioCallDirectAction(v8);
  return v6;
}

uint64_t static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  v8 = a2[3];
  v9 = a2[4];
  v59 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v9 + 8);
  swift_bridgeObjectRetain_n();
  v10(v70, v8, v9);
  AnnotatedAppFinding.find(appQuery:device:)(v4, v5, _swiftEmptyArrayStorage, v70, v6, v7, &v65);

  __swift_destroy_boxed_opaque_existential_1(v70);
  v11 = v65;
  if (v65)
  {
    v12 = v69;
    v13 = v68;
    v14 = v66;
    v15 = v67;
    v16 = *(&v65 + 1);
  }

  else
  {
    type metadata accessor for App();
    v11 = App.__allocating_init(appIdentifier:)();

    v14 = 0;
    v15 = 0;
    v13 = 2;
    v16 = _swiftEmptySetSingleton;
    v12 = _swiftEmptySetSingleton;
  }

  v70[0] = v11;
  v70[1] = v16;
  v70[2] = v14;
  v70[3] = v15;
  v71 = v13;
  v72 = v12;
  v17 = v59[3];
  v18 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v17);
  (*(v18 + 152))(v62, v17, v18);
  v19 = v63;
  v20 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  (*(v20 + 8))(v70, v60, v19, v20);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v21 = [objc_allocWithZone(INStartCallIntent) init];
  v22 = [v21 _className];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  LOBYTE(v23) = specialized Set.contains(_:)(v23, v25, v16);

  if (v23)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_13_19();
      v62[0] = v22;
      *v15 = 136315138;
      *&v60[0] = v11;
      v29 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_49();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v30, v31, &protocol conformance descriptor for App);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v62);
      OUTLINED_FUNCTION_7_22();

      *(v15 + 4) = v29;
      OUTLINED_FUNCTION_14_22(&dword_0, v34, v35, "#CarPlayDirectActionFlowFactory Using INStartCallIntent, app: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_26_0(v15);
    }

    StartAudioCallDirectAction.startCallIntent.getter();
    v36 = OUTLINED_FUNCTION_6_28();
    _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo07INStartB6IntentC_Tt3g5(v36, v37, v38, v39);
    OUTLINED_FUNCTION_15_23();
    v62[0] = v59;
    v40 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd;
    v41 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR);
    v42 = &lazy protocol witness table cache variable for type CarPlayDirectInvocationFlow<INStartCallIntent> and conformance CarPlayDirectInvocationFlow<A>;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_13_19();
      v62[0] = v22;
      *v15 = 136315138;
      *&v60[0] = v11;
      v46 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_49();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v47, v48, &protocol conformance descriptor for App);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v62);
      OUTLINED_FUNCTION_7_22();

      *(v15 + 4) = v46;
      OUTLINED_FUNCTION_14_22(&dword_0, v51, v52, "#CarPlayDirectActionFlowFactory Using INStartAudioCallIntent, app: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_26_0(v15);
    }

    StartAudioCallDirectAction.startAudioCallIntent.getter();
    v53 = OUTLINED_FUNCTION_6_28();
    _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo012INStartAudioB6IntentC_Tt3g5(v53, v54, v55, v56);
    OUTLINED_FUNCTION_15_23();
    v62[0] = v59;
    v40 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd;
    v41 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR);
    v42 = &lazy protocol witness table cache variable for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>;
  }

  lazy protocol witness table accessor for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>(v42, v40, v41);
  v57 = Flow.eraseToAnyFlow()();

  return v57;
}

void OUTLINED_FUNCTION_11_14(uint64_t a1@<X8>)
{
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_11_20()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2 - 96, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t a1)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  v1 = *(v0 + 1160);
  __swift_project_boxed_opaque_existential_1((v0 + 1136), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
}

void OUTLINED_FUNCTION_11_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

unint64_t OUTLINED_FUNCTION_11_40()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_11_41(uint64_t a1, uint64_t a2)
{

  return String.index(_:offsetBy:limitedBy:)();
}

uint64_t OUTLINED_FUNCTION_11_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_50()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_11_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v32 - 152) = v30;
  *(v32 - 144) = v29;
  *(v32 - 200) = v31;

  _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_nTm(v28, v30, v31, v29, v27, v25, v26, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void OUTLINED_FUNCTION_11_54()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_11_55()
{
  *(v0 + v1[5]) = 0;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = v3;
  *(v0 + v1[8]) = v2;
  return v0;
}

void OUTLINED_FUNCTION_11_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_62()
{
}

uint64_t OUTLINED_FUNCTION_11_64(uint64_t a1)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_11_65()
{
  v2 = *(v0 + 48);

  return __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
}

uint64_t OUTLINED_FUNCTION_11_66()
{
}

uint64_t OUTLINED_FUNCTION_11_71(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t AppQuery.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8 = AppQuery.defaultAppId.getter(a1, a2, a3);
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    _StringGuts.grow(_:)(17);

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    String.append(_:)(v12);

    v10 = 0x6C7561666564202CLL;
    v6 = 0xEF3D644970704174;
  }

  v13._countAndFlagsBits = v10;
  v13._object = v6;
  String.append(_:)(v13);

  if (a2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15._countAndFlagsBits = AppResolutionSource.description.getter(v14);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x656372756F73202CLL;
  v17._object = 0xE90000000000003DLL;
  String.append(_:)(v17);

  return 0xD000000000000018;
}

uint64_t AppQuery.defaultAppId.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
  }

  return OUTLINED_FUNCTION_0();
}

unint64_t AppResolutionSource.description.getter(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x716552726573752ELL;
      break;
    case 3:
      result = 0x736165732ELL;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall App.isFirstParty()()
{
  App.appIdentifier.getter();
  if (v0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    v1 = BidirectionalCollection<>.starts<A>(with:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

BOOL specialized Sequence.contains(where:)()
{
  OUTLINED_FUNCTION_12_33();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

{
  OUTLINED_FUNCTION_12_33();
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *(v3 - 1);
    v6 = *v3;
    v19[0] = *(v3 - 2);
    v19[1] = v5;
    v20 = v6;
    v7 = OUTLINED_FUNCTION_11_30();
    outlined copy of CommonCallStatePredicate(v7, v8, v9);
    v10 = v1(v19);
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_11_30();
      outlined consume of CommonCallStatePredicate(v15, v16, v17);
      return v4 != 0;
    }

    v11 = v10;
    v3 += 24;
    v12 = OUTLINED_FUNCTION_11_30();
    outlined consume of CommonCallStatePredicate(v12, v13, v14);
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

{
  OUTLINED_FUNCTION_12_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    object = String.lowercased()()._object;
  }

  else
  {
    object = 0;
  }

  OUTLINED_FUNCTION_2_7();
  v5 = String.lowercased()()._object;
  if (!object)
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_39();
  v6 = v6 && object == v5;
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (a2)
    {
      v9 = String.lowercased()();
      a1 = v9._countAndFlagsBits;
      v10 = v9._object;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_74(&one-time initialization token for macFaceTimeBundleId);
    }

    v11 = String.lowercased()();
    if (!v10)
    {
      v8 = 0;
      goto LABEL_26;
    }

    if (a1 != v11._countAndFlagsBits || v10 != v11._object)
    {
      OUTLINED_FUNCTION_0();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_24:

LABEL_26:

      return v8 & 1;
    }

LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t PhoneCallFeatureManager.shouldEnableFaceTimeUninstall.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v4);
  OUTLINED_FUNCTION_1_6(v4);
  v1 = OUTLINED_FUNCTION_4_3();
  v2(v1);
  return OUTLINED_FUNCTION_3_67(v4);
}

uint64_t OUTLINED_FUNCTION_1_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x43746E6572727563;
  a1[2].n128_u64[1] = 0xEB000000006C6C61;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters();
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t result)
{
  v2[18] = v1;
  v2[21] = result;
  v2[22] = 0x646E497473727562;
  v2[23] = 0xEA00000000007865;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_27@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 96) = a2;
  *(v2 + 120) = result;
  strcpy((v2 + 128), "participants");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _print_unlocked<A, B>(_:_:)();
}

BOOL OUTLINED_FUNCTION_1_33()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_38()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return outlined init with copy of CallCancelSlotConfirmationButtonsBuilder(v2, va);
}

uint64_t OUTLINED_FUNCTION_1_43()
{
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 30.0);
}

void OUTLINED_FUNCTION_1_45()
{
  *(v3 - 72) = 1;
  *v1 = v2;
  v1[1] = v0;
}

uint64_t OUTLINED_FUNCTION_1_50()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_1_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return ConfirmationViewTemplate.Button.asConfirmationOption.getter();
}

uint64_t OUTLINED_FUNCTION_1_57()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_1_58@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_1_62(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_65()
{
  result = v0;
  *(v2 - 200) = *(v1 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_69(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_71(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_72()
{

  return DeviceState.idiom.getter();
}

uint64_t OUTLINED_FUNCTION_1_74()
{

  return OutputGenerationManifest.canUseServerTTS.setter();
}

uint64_t OUTLINED_FUNCTION_1_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_80(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_93(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, (v2 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_1_94(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

void OUTLINED_FUNCTION_1_96(void *a1)
{

  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(a1, 0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_97()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_99(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_100(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id OUTLINED_FUNCTION_1_101(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_1_105(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = _NSConcreteStackBlock;
  return result;
}

__n128 *OUTLINED_FUNCTION_1_106(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F6365526C6C6163;
  result[2].n128_u64[1] = 0xEA00000000006472;
  return result;
}

void OUTLINED_FUNCTION_1_109()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_1_115()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t OUTLINED_FUNCTION_1_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_1_126(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  a1[1] = a9;
  a1[2] = a10;
  result = a12;
  a1[3] = a12;
  return result;
}

__n128 *OUTLINED_FUNCTION_1_127(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_128(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_1_130(uint64_t a1, uint64_t a2)
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_1_131()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_1_133(uint64_t a1)
{
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = v1;

  return OutputGenerationManifest.init(dialogPhase:_:)();
}