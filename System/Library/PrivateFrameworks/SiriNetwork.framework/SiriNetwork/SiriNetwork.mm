id ConnectionInfo.init()()
{
  *&v0[OBJC_IVAR___SNConnectionInfoInternal_policy] = 0;
  *&v0[OBJC_IVAR___SNConnectionInfoInternal_policyRoute] = 0;
  ConnectionConfiguration.init()(__src);
  memcpy(&v0[OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration], __src, 0x204uLL);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

double ConnectionConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(1uLL);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 111) = 0;
  *(a1 + 128) = 1;
  OUTLINED_FUNCTION_12_12(vdupq_n_s64(0x4056800000000000uLL), 0);
  v2 = AFIsInternalInstall();
  ShouldUseTFO = 0;
  if (v2)
  {
    ShouldUseTFO = _AFPreferencesShouldUseTFO();
  }

  *(a1 + 200) = ShouldUseTFO;
  *(a1 + 201) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_7()
{

  return memcpy(&STACK[0x25C8], &STACK[0x2F58], 0x2C8uLL);
}

void OUTLINED_FUNCTION_0_10()
{

  JUMPOUT(0x223DE2180);
}

void OUTLINED_FUNCTION_0_11()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_0_17(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_0_20()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return outlined init with copy of ConnectionSnapshotReport?(a1, va, v62, v63);
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t result)
{
  if ((result - 1) < 0xA)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *(v1 - 1) = v2;
  return result;
}

id OUTLINED_FUNCTION_0_38(void *a1)
{

  return [a1 (v2 + 3483)];
}

uint64_t OUTLINED_FUNCTION_0_39@<X0>(uint64_t a1@<X8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *(v2 - 128) = a1;

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void *OUTLINED_FUNCTION_0_42()
{

  return memcpy((v0 + 2320), (v1 + 40), 0x139uLL);
}

void OUTLINED_FUNCTION_0_44()
{

  JUMPOUT(0x223DE2180);
}

void OUTLINED_FUNCTION_0_45()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_0_48()
{

  JUMPOUT(0x223DE2180);
}

void OUTLINED_FUNCTION_0_51()
{

  JUMPOUT(0x223DE2180);
}

void *OUTLINED_FUNCTION_0_52()
{

  return memcpy(&STACK[0x450], &STACK[0xB20], 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_0_53(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_54@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_0_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_14_1()
{

  return [v0 (v1 + 3960)];
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2()
{
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return type metadata accessor for URLComponents();
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x223DE38F0);
}

void *OUTLINED_FUNCTION_3_1()
{

  return memcpy(&STACK[0x2028], (v0 + 608), 0x139uLL);
}

void OUTLINED_FUNCTION_4()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_3_7@<X0>(uint64_t a1@<X8>)
{
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_3_8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + a1;
  result = __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  *(v5 + *(v3 + 20)) = 0;
  v7 = v5 + *(v3 + 24);
  *v7 = 0;
  *(v7 + 8) = v4;
  return result;
}

BOOL OUTLINED_FUNCTION_3_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return Double.write<A>(to:)();
}

void *OUTLINED_FUNCTION_3_22(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x139uLL);
}

void OUTLINED_FUNCTION_3_23()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_3_26@<X0>(int a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_3_27()
{
}

void OUTLINED_FUNCTION_3_28()
{
  *(v4 - 88) = v1;
  *(v4 - 80) = v2;
  *(v4 - 72) = v3;
  *(v4 - 64) = v0;
}

void OUTLINED_FUNCTION_3_29()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13_0()
{
  result = *(v0 + 1536);
  *(v0 + 1536) = 1;
  *(v0 + 1544) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return type metadata accessor for NWError();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_2_1()
{

  return memcpy(&STACK[0x25C8], &STACK[0x2F58], 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_2_3@<X0>(int a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *(v2 - 112) = a1;

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_2_7(void *a1)
{

  return [a1 (v1 + 1144)];
}

void OUTLINED_FUNCTION_2_8()
{

  Hasher._combine(_:)(0);
}

_OWORD *OUTLINED_FUNCTION_2_14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, uint64_t a6)
{
  v8 = v6[6] + 40 * a1;
  *v8 = a4;
  *(v8 + 16) = a5;
  *(v8 + 32) = a6;
  result = outlined init with take of Any((v7 - 120), (v6[7] + 32 * a1));
  ++v6[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_17()
{

  JUMPOUT(0x223DE38F0);
}

uint64_t OUTLINED_FUNCTION_2_21@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  result = v3[1];
  v2[25] = result;
  v6 = v3[2];
  v7 = v3[3];
  v2[6] = v5;
  v2[26] = v7;
  v2[7] = result;
  v2[8] = v6;
  v2[9] = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a2, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_2_31(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return String.init<A>(describing:)();
}

void OUTLINED_FUNCTION_11()
{

  JUMPOUT(0x223DE38F0);
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

Swift::Int OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, __int128);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  return specialized _NativeSet.update(with:isUnique:)(va, a1, va1);
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x223DE2070);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_bridgeObjectRelease_n();
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

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *OUTLINED_FUNCTION_40(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x168uLL);
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;

  return outlined init with copy of UMUserPersonProtocol(v1 + 56, v1 + 96);
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_9_13()
{
  v2 = v0;
  v3 = 0xE90000000000006DLL;

  return String.hasSuffix(_:)(*&v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_11()
{

  Hasher._combine(_:)(1u);
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  _s11SiriNetwork010ConnectionB6ReportVSgWOg(v0 + 2320);
}

id OUTLINED_FUNCTION_6_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ConnectionInfo.aceHost.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

void @objc ConnectionInfo.assistantIdentifier.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t outlined bridged method (pb) of @objc SAConnectionPolicy.policyId.getter(void *a1)
{
  v1 = [a1 policyId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SAConnectionPolicy.routes.getter(void *a1)
{
  v1 = [a1 routes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SAConnectionPolicyRoute();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ConnectionPolicyRoute.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = 1;
  if (!a1)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v56 = 1;
    v58 = 0;
    v59 = 0;
    v60 = 3;
    v62 = 0;
    v63 = v65;
    v64 = 5;
    result = outlined destroy of ConnectionPolicyRoute(&v51);
    *a2 = xmmword_2235EFB30;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    *(a2 + 56) = 0;
    return result;
  }

  v3 = a1;
  v4 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_routeId);
  v43 = v5;
  v44 = v4;
  v6 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_connectionId);
  v41 = v7;
  v42 = v6;
  v40 = [v3 priority];
  v39 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_cname);
  v38 = v8;
  v9 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_host);
  v36 = v10;
  v37 = v9;
  v11 = [v3 mptcp];
  if (v11)
  {
    v12 = v11;
    v35 = [v11 BOOLValue];
  }

  else
  {
    v35 = 1;
  }

  v14 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_resolver);
  v47 = v15;
  v48 = v14;
  v16 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_resolverProtocol);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v20 == v18 && v19 == v21)
    {
    }

    else
    {
      v23 = OUTLINED_FUNCTION_13_8(v20);

      if ((v23 & 1) == 0)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v29 == v18 && v19 == v30)
        {

          v24 = 2;
        }

        else
        {
          v32 = OUTLINED_FUNCTION_13_8(v29);

          if (v32)
          {
            v24 = 2;
          }

          else
          {
            v24 = 0;
          }
        }

        goto LABEL_16;
      }
    }

    v24 = 1;
LABEL_16:
    v46 = v24;
    goto LABEL_17;
  }

  v46 = 0;
LABEL_17:
  v25 = [v3 timeout];
  if (v25)
  {
    v26 = v25;
    *&v51 = 0;
    BYTE8(v51) = 1;
    MEMORY[0x223DE2370](v25, &v51);

    v27 = v51;
    if (BYTE8(v51))
    {
      v27 = 0;
    }

    v45 = v27;
  }

  else
  {
    v45 = 0;
  }

  v65 = 0;
  v28.value._countAndFlagsBits = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v3, &selRef_type);
  ConnectionPolicyType.init(fromRawValue:)(v28);

  v34 = v51;
  __src[0] = v44;
  __src[1] = v43;
  __src[2] = v42;
  __src[3] = v41;
  __src[4] = v40;
  __src[5] = v39;
  __src[6] = v38;
  __src[7] = v37;
  __src[8] = v36;
  LOBYTE(__src[9]) = v35;
  __src[10] = v48;
  __src[11] = v47;
  LOBYTE(__src[12]) = v46;
  __src[13] = v45;
  v33 = v65;
  LOBYTE(__src[14]) = v65;
  BYTE1(__src[14]) = v51;
  memcpy(a2, __src, 0x72uLL);
  *&v51 = v44;
  *(&v51 + 1) = v43;
  *&v52 = v42;
  *(&v52 + 1) = v41;
  *&v53 = v40;
  *(&v53 + 1) = v39;
  *&v54 = v38;
  *(&v54 + 1) = v37;
  v55 = v36;
  v56 = v35;
  *v57 = v67[0];
  *&v57[3] = *(v67 + 3);
  v58 = v48;
  v59 = v47;
  v60 = v46;
  *&v61[3] = *&v66[3];
  *v61 = *v66;
  v62 = v45;
  v63 = v33;
  v64 = v34;
  outlined init with copy of ConnectionPolicyRoute(__src, v49);
  return outlined destroy of ConnectionPolicyRoute(&v51);
}

uint64_t outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_14_3();
}

void specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v4, 0x72uLL);
  v5 = *v0;
  OUTLINED_FUNCTION_104_0(v19);
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)(v17);
  Hasher._finalize()();
  OUTLINED_FUNCTION_18_8();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((1 << (v6 & v8)) & *(*&v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v19, __dst, 0x72uLL);
      __src[0] = *v1;
      outlined init with copy of ConnectionPolicyRoute(v19, v17);
      specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v9, isUniquelyReferenced_nonNull_native);
      *v1 = __src[0];
      memcpy(v3, __dst, 0x72uLL);
      goto LABEL_7;
    }

    v10 = *(*&v5 + 48);
    v11 = 120 * v9;
    memcpy(v17, (v10 + 120 * v9), 0x72uLL);
    memcpy(__src, (v10 + 120 * v9), 0x72uLL);
    LOBYTE(v10) = static ConnectionPolicyRoute.== infix(_:_:)(__src, __dst);
    memcpy(v19, __src, 0x72uLL);
    outlined init with copy of ConnectionPolicyRoute(v17, v15);
    outlined destroy of ConnectionPolicyRoute(v19);
    if (v10)
    {
      break;
    }

    v6 = v9 + 1;
  }

  memcpy(v15, __dst, 0x72uLL);
  outlined destroy of ConnectionPolicyRoute(v15);
  v13 = *(*&v5 + 48);
  memcpy(__src, (v13 + v11), 0x72uLL);
  memcpy(v3, (v13 + v11), 0x72uLL);
  outlined init with copy of ConnectionPolicyRoute(__src, v14);
LABEL_7:
  OUTLINED_FUNCTION_47();
}

{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_89_0();
  if (v5)
  {
    Hasher.init(_seed:)();
    specialized BackgroundConnectionProtocol.hash(into:)(v37);
    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v9 = ~v8;
    while (1)
    {
      v10 = v7 & v9;
      if (((*(v4 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37[0] = *v3;

        specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v10, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29);
        *v3 = v37[0];
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_78_1(v34);
      OUTLINED_FUNCTION_78_1(v33);
      memcpy(__dst, (v2 + 40), 0x204uLL);
      memcpy(__src, (v2 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(v34, v31);
      outlined init with copy of ConnectionConfiguration(__dst, v31);
      v11 = static ConnectionConfiguration.== infix(_:_:)(v33, __src);
      memcpy(v36, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v36);
      memcpy(v37, v33, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v37);
      if (v11)
      {
        break;
      }

      v7 = v10 + 1;
    }

    *v0 = *(*(v4 + 48) + 8 * v10);

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_132();

  v6 = __CocoaSet.member(for:)();

  if (v6)
  {

    v36[0] = v6;
    type metadata accessor for BackgroundConnection();
    swift_dynamicCast();
    *v0 = v37[0];
LABEL_15:
    OUTLINED_FUNCTION_47();
    return;
  }

  v12 = __CocoaSet.count.getter();
  if (!__OFADD__(v12, 1))
  {
    _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11SiriNetwork20BackgroundConnectionC_Tt1g5(v1, v12 + 1);
    v21 = v20;
    v37[0] = v20;
    v22 = *(v20 + 16);
    if (*(v20 + 24) <= v22)
    {
      specialized _NativeSet.resize(capacity:)(v22 + 1, v13, v14, v15, v16, v17, v18, v19, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20]);
      v21 = v37[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)();

    *v3 = v21;
LABEL_13:
    *v0 = v2;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t OUTLINED_FUNCTION_22_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_22_2(void *a1)
{

  return memcpy(a1, &STACK[0x30D8], 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_22_8(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v4 << v1;
  *(*(v2 + 48) + 8 * v1) = v3;
  ++*(v2 + 16);
}

uint64_t getEnumTagSinglePayload for ConnectionPolicy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t ConnectionPolicy.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = 1;
  v52 = 0;
  v50 = 1;
  if (!a1)
  {
    *(&v55[1] + 1) = 0;
    memset(v55, 0, 22);
    LOBYTE(v55[2]) = v54;
    *(&v55[2] + 1) = 5228;
    LOBYTE(v55[3]) = v52;
    *(&v55[3] + 1) = 0;
    LOBYTE(v55[4]) = v50;
    *(&v55[4] + 1) = MEMORY[0x277D84FA0];
    result = outlined destroy of ConnectionPolicy(v55);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    return result;
  }

  v4 = a1;
  v5 = outlined bridged method (pb) of @objc SAConnectionPolicy.policyId.getter(v4);
  v7 = v6;
  v8 = [v4 disableMPTCP];
  if (v8)
  {
    v41 = OUTLINED_FUNCTION_2_7(v8);
  }

  else
  {
    v41 = 0;
  }

  v10 = [v4 enableOptimisticDNS];
  if (v10)
  {
    v40 = OUTLINED_FUNCTION_2_7(v10);
  }

  else
  {
    v40 = 0;
  }

  v11 = [v4 enableTLS13];
  if (v11)
  {
    v39 = OUTLINED_FUNCTION_2_7(v11);
  }

  else
  {
    v39 = 0;
  }

  v12 = [v4 enableTLS13ZeroRTT];
  if (v12)
  {
    v38 = OUTLINED_FUNCTION_2_7(v12);
  }

  else
  {
    v38 = 0;
  }

  v13 = [v4 enableTcpFastOpen];
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_2_7(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 enabled];
  v16 = [v4 globalTimeout];
  v17 = 1;
  if (v16)
  {
    OUTLINED_FUNCTION_0_21(1);
    MEMORY[0x223DE2370]();

    v42 = *&v55[0];
    v17 = BYTE8(v55[0]);
  }

  else
  {
    v42 = 0;
  }

  v54 = v17;
  v18 = [v4 mptcpFallbackPort];
  v19 = 1;
  if (v18)
  {
    OUTLINED_FUNCTION_0_21(1);
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();

    v37 = *&v55[0];
    v19 = BYTE8(v55[0]);
  }

  else
  {
    v37 = 0;
  }

  v52 = v19;
  v20 = [v4 timeToLive];
  v21 = 1;
  if (v20)
  {
    OUTLINED_FUNCTION_0_21(1);
    MEMORY[0x223DE2370]();

    v36 = *&v55[0];
    v21 = BYTE8(v55[0]);
  }

  else
  {
    v36 = 0;
  }

  v50 = v21;
  v48 = MEMORY[0x277D84FA0];
  v22 = outlined bridged method (pb) of @objc SAConnectionPolicy.routes.getter(v4);
  v43 = v15;
  if (!v22)
  {
    goto LABEL_40;
  }

  v23 = v22;
  result = specialized Array.count.getter(v22);
  if (!result)
  {

LABEL_40:

    v29 = MEMORY[0x277D84FA0];
    v30 = a2;
    goto LABEL_41;
  }

  v24 = result;
  v34 = a2;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v24; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x223DE2730](i, v23);
    }

    else
    {
      v26 = *(v23 + 8 * i + 32);
    }

    v27 = v26;
    v28 = v26;
    ConnectionPolicyRoute.init(from:)(v27, &v46);
    if (*(&v46 + 1) == 1)
    {
    }

    else
    {
      v55[0] = v46;
      memcpy(&v55[1], v47, 0x62uLL);
      specialized Set._Variant.insert(_:)();

      memcpy(__dst, __src, 0x72uLL);
      outlined destroy of ConnectionPolicyRoute(__dst);
    }
  }

  v29 = v48;
  v30 = v34;
LABEL_41:
  v33 = v29;
  __dst[0] = v5;
  __dst[1] = v7;
  LOBYTE(__dst[2]) = v41;
  BYTE1(__dst[2]) = v40;
  BYTE2(__dst[2]) = v39;
  BYTE3(__dst[2]) = v38;
  BYTE4(__dst[2]) = v14;
  BYTE5(__dst[2]) = v43;
  __dst[3] = v42;
  v35 = v54;
  LOBYTE(__dst[4]) = v54;
  *(&__dst[4] + 1) = *v53;
  HIDWORD(__dst[4]) = *&v53[3];
  __dst[5] = v37;
  v31 = v52;
  LOBYTE(__dst[6]) = v52;
  HIDWORD(__dst[6]) = *&v51[3];
  *(&__dst[6] + 1) = *v51;
  __dst[7] = v36;
  v32 = v50;
  LOBYTE(__dst[8]) = v50;
  HIDWORD(__dst[8]) = *&v49[3];
  *(&__dst[8] + 1) = *v49;
  __dst[9] = v29;
  memcpy(v30, __dst, 0x50uLL);
  *&v46 = v5;
  *(&v46 + 1) = v7;
  LOBYTE(v47[0]) = v41;
  BYTE1(v47[0]) = v40;
  BYTE2(v47[0]) = v39;
  BYTE3(v47[0]) = v38;
  BYTE4(v47[0]) = v14;
  BYTE5(v47[0]) = v43;
  v47[1] = v42;
  LOBYTE(v47[2]) = v35;
  *(&v47[2] + 1) = *v53;
  HIDWORD(v47[2]) = *&v53[3];
  v47[3] = v37;
  LOBYTE(v47[4]) = v31;
  HIDWORD(v47[4]) = *&v51[3];
  *(&v47[4] + 1) = *v51;
  v47[5] = v36;
  LOBYTE(v47[6]) = v32;
  *(&v47[6] + 1) = *v49;
  HIDWORD(v47[6]) = *&v49[3];
  v47[7] = v33;
  outlined init with copy of ConnectionPolicy(__dst, __src);
  return outlined destroy of ConnectionPolicy(&v46);
}

uint64_t ConnectionInfo.connectionPolicy.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policy);
  *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policy) = a1;
  v4 = a1;

  ConnectionPolicy.init(from:)(a1, __src);
  v5 = OUTLINED_FUNCTION_3_25(OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration);
  OUTLINED_FUNCTION_95(v5, v6);
  memcpy(__dst, (a1 + 320), sizeof(__dst));
  memcpy((a1 + 320), __src, 0x50uLL);
  return outlined destroy of ConnectionSnapshotReport?(__dst, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
}

uint64_t outlined destroy of ConnectionSnapshotReport?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t type metadata accessor for SAConnectionPolicyRoute()
{
  result = lazy cache variable for type metadata for SAConnectionPolicyRoute;
  if (!lazy cache variable for type metadata for SAConnectionPolicyRoute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAConnectionPolicyRoute);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_119(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22351A2A8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void Connection.sendCommand(_:with:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v18 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v9);
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v0;
  v19[4] = partial apply for closure #1 in Connection.sendCommand(_:with:);
  v19[5] = v10;
  OUTLINED_FUNCTION_1_1();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v19[2] = v11;
  v19[3] = &block_descriptor_10_2;
  v12 = _Block_copy(v19);

  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v13, v14, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v15);
  _Block_release(v12);
  v16 = OUTLINED_FUNCTION_3_2();
  v17(v16);
  (*(v7 + 8))(v1, v18);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22351A50C()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return type metadata accessor for NWError();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
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
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return type metadata accessor for DispatchQoS();
}

void OUTLINED_FUNCTION_8_4()
{

  JUMPOUT(0x223DE2180);
}

void *OUTLINED_FUNCTION_8_6()
{

  return memcpy(&STACK[0x328], (v0 + 16), 0x62uLL);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_8_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_10(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4;
}

void OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v1, a1);
}

void OUTLINED_FUNCTION_8_13()
{

  JUMPOUT(0x223DE2180);
}

void *OUTLINED_FUNCTION_8_15(void *a1)
{

  return memcpy(a1, (v1 + 2000), 0x121uLL);
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return type metadata accessor for NWError();
}

void *OUTLINED_FUNCTION_8_19()
{

  return memcpy(&STACK[0x450], &STACK[0xB48], 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_15_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_7_4(void *a1)
{

  return memcpy(a1, &STACK[0x2F58], 0x2C8uLL);
}

void OUTLINED_FUNCTION_7_5()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v3 = *(v0 + 8);
  *(v2 - 280) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 272) = v3;
  return result;
}

void *OUTLINED_FUNCTION_7_8()
{

  return memcpy(&STACK[0x318], (v0 + 320), 0x48uLL);
}

void OUTLINED_FUNCTION_5_3()
{

  JUMPOUT(0x223DE2460);
}

void OUTLINED_FUNCTION_7_13()
{

  JUMPOUT(0x223DE38F0);
}

void OUTLINED_FUNCTION_7_16()
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

void OUTLINED_FUNCTION_7_17()
{

  JUMPOUT(0x223DE2180);
}

void *OUTLINED_FUNCTION_7_24@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 200) = *(v1 + 400);
  *(v2 - 192) = a1;

  return memcpy((v2 - 184), (v1 + 416), 0x62uLL);
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

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall Connection.setSendPings(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_7_1();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  Connection.waitForActiveConnectionToExecute(_:)();
}

uint64_t sub_22351AE68()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *OUTLINED_FUNCTION_41_1(void *a1)
{

  return memcpy(a1, (v1 + 72), 0x599uLL);
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x223DE2180);
}

void Connection.waitForActiveConnectionToExecute(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v17 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = *(v0 + OBJC_IVAR___SNConnectionInternal_activeConnectionGroup);
  v18[4] = v5;
  v18[5] = v3;
  OUTLINED_FUNCTION_1_1();
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v18[3] = &block_descriptor_164_0;
  v11 = _Block_copy(v18);
  v12 = v10;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v13, v14, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v11);

  v15 = OUTLINED_FUNCTION_3_2();
  v16(v15);
  (*(v8 + 8))(v1, v17);

  OUTLINED_FUNCTION_47();
}

uint64_t NetworkActivityTracing.start(label:activate:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *a1;

  specialized NetworkActivityTracingInternal.start(label:activate:completion:)(v7, v6, a3, a4);
}

uint64_t specialized NetworkActivityTracingInternal.start(label:activate:completion:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 32);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a2;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.start(label:activate:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_82;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a3, a4);
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v15, v12, v19);
  _Block_release(v19);

  (*(v24 + 8))(v12, v10);
  (*(v22 + 8))(v15, v23);
}

uint64_t sub_22351B584()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void static NetworkManager.acquireDormancySuspendAssertion(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v12 = type metadata accessor for Logger();
    v35 = OUTLINED_FUNCTION_17(v12, static Logger.siriNetwork);
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v9))
    {
      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_14();
    *v10 = 0;
    v11 = "NetworkManager - Assertion: Assertion ref should not be nil.";
    goto LABEL_11;
  }

  if (!*a1)
  {
    type metadata accessor for OS_dispatch_queue();
    v14 = *MEMORY[0x277D851C8];
    v34 = *(v4 + 104);
    v34(v7, v14, v2);
    v15 = static OS_dispatch_queue.global(qos:)();
    v16 = *(v4 + 8);
    v16(v7, v2);
    v17 = _CTServerConnectionCreateOnTargetQueue();

    v35 = v17;
    if (!v17)
    {
      return;
    }

    v18 = MEMORY[0x223DE2070](0xD00000000000001ELL, 0x80000002235F9CF0);
    v34(v7, v14, v2);
    v19 = static OS_dispatch_queue.global(qos:)();
    v16(v7, v2);
    aBlock[4] = closure #1 in static NetworkManager.acquireDormancySuspendAssertion(_:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_18;
    v20 = _Block_copy(aBlock);
    v21 = _CTServerConnectionDormancySuspendAssertionCreateWithExpirationCB();
    _Block_release(v20);

    if (v21)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
      }

      v22 = type metadata accessor for Logger();
      v23 = OUTLINED_FUNCTION_17(v22, static Logger.siriNetwork);
      v24 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_15_1(v24))
      {
        goto LABEL_26;
      }

      v25 = swift_slowAlloc();
      *(OUTLINED_FUNCTION_4_30(v25, 1.5047e-36) + 10) = HIDWORD(v21);
      OUTLINED_FUNCTION_2_35();
      v31 = 14;
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
      }

      v32 = type metadata accessor for Logger();
      v23 = OUTLINED_FUNCTION_17(v32, static Logger.siriNetwork);
      v33 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_15_1(v33))
      {
        goto LABEL_26;
      }

      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_2_35();
      v31 = 2;
    }

    _os_log_impl(v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_12();
LABEL_26:

    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v8 = type metadata accessor for Logger();
  v35 = OUTLINED_FUNCTION_17(v8, static Logger.siriNetwork);
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v35, v9))
  {
    goto LABEL_12;
  }

  v10 = OUTLINED_FUNCTION_14();
  *v10 = 0;
  v11 = "NetworkManager - Assertion: Assertion already acquired.";
LABEL_11:
  _os_log_impl(&dword_223515000, v35, v9, v11, v10, 2u);
  OUTLINED_FUNCTION_12();
LABEL_12:
  v13 = v35;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

void *OUTLINED_FUNCTION_17_0()
{

  return memcpy(&STACK[0x3C0], &STACK[0x960], 0x599uLL);
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void *OUTLINED_FUNCTION_17_4(void *a1)
{

  return memcpy(a1, v1, 0x599uLL);
}

void OUTLINED_FUNCTION_17_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DE38F0);
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t result)
{
  *(v1 + 1504) = result;
  *(v1 + 1464) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_22351BCC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined destroy of Activity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork8Activity_pSgMd, &_s11SiriNetwork8Activity_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.start(label:activate:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char a5)
{
  LOBYTE(v5) = a5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    if (!specialized Dictionary.subscript.getter(a2, *(v10 + 16)))
    {
      if (one-time initialization token for siriNetwork == -1)
      {
        goto LABEL_8;
      }

      while (1)
      {
        swift_once();
LABEL_8:
        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.siriNetwork);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v38 = a4;
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v42[0] = v15;
          *v14 = 136315394;
          v16 = 0xE700000000000000;
          v17 = 0x64696C61766E69;
          switch(a2)
          {
            case 1:
              v16 = 0xE900000000000074;
              v17 = 0x7365757165526975;
              break;
            case 2:
              v16 = 0xED0000746E617473;
              v17 = 0x6973734164616F6CLL;
              break;
            case 3:
              v16 = 0xEE00676E696D6165;
              v17 = 0x7274536F69647561;
              break;
            case 4:
              v16 = 0xE600000000000000;
              v17 = 0x686365657073;
              break;
            case 5:
              v17 = 0x73746C75736572;
              break;
            case 6:
              v16 = 0xE500000000000000;
              v17 = 0x7972746572;
              break;
            case 7:
              v16 = 0x80000002235F8790;
              v17 = 0xD000000000000016;
              break;
            case 8:
              v18 = 2003790950;
              goto LABEL_21;
            case 9:
              v18 = 1668184435;
LABEL_21:
              v17 = v18 | 0x6D6D6F4300000000;
              v16 = 0xEB00000000646E61;
              break;
            case 10:
              v16 = 0xE400000000000000;
              v17 = 1953718636;
              break;
            default:
              break;
          }

          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v42);

          *(v14 + 4) = v19;
          *(v14 + 12) = 1024;
          *(v14 + 14) = v5 & 1;
          _os_log_impl(&dword_223515000, v12, v13, "NetworkActivity Tracing: Start %s activity. Activate: %{BOOL}d", v14, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x223DE38F0](v15, -1, -1);
          MEMORY[0x223DE38F0](v14, -1, -1);

          a4 = v38;
        }

        else
        {
        }

        if (a2 == 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMR);
          swift_allocObject();
          v20 = 1;
          v21 = 0;
        }

        else
        {
          v22 = specialized Dictionary.subscript.getter(1, *(v10 + 16));
          if (!v22)
          {
            goto LABEL_50;
          }

          v23 = *(v22 + 16);

          if (!v23)
          {
            if (a3)
            {
              goto LABEL_4;
            }

            goto LABEL_5;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMd, &_s11SiriNetwork0B8ActivityCy0B012NWConnectionCAD10NWActivityCGMR);
          swift_allocObject();
          v20 = a2;
          v21 = v23;
        }

        v24 = specialized NetworkActivity.init(label:parentActivity:)(v20, v21);
        swift_beginAccess();
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v10 + 16);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, isUniquelyReferenced_nonNull_native);
        *(v10 + 16) = v41;
        swift_endAccess();
        if (v5)
        {
          specialized NetworkActivity.activate()();
        }

        swift_beginAccess();

        v27 = specialized Set.isEmpty.getter(v26);

        if (v27)
        {
          goto LABEL_49;
        }

        v39 = v24;
        v37 = a3;
        v5 = *(v10 + 24);
        if ((v5 & 0xC000000000000001) != 0)
        {

          __CocoaSet.makeIterator()();
          type metadata accessor for NWConnection();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NWConnection and conformance NWConnection, MEMORY[0x277CD8E08], &protocol conformance descriptor for NWConnection);
          Set.Iterator.init(_cocoa:)();
          v5 = v42[0];
          a2 = v42[1];
          v28 = v42[2];
          a3 = v42[3];
          v29 = v42[4];
        }

        else
        {
          v30 = -1 << *(v5 + 32);
          a2 = v5 + 56;
          v28 = ~v30;
          v31 = -v30;
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          else
          {
            v32 = -1;
          }

          v29 = v32 & *(v5 + 56);

          a3 = 0;
        }

        if (v5 < 0)
        {
LABEL_38:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for NWConnection();
            swift_dynamicCast();
            v33 = v40;
            v34 = a3;
            a4 = v29;
            if (v40)
            {
              goto LABEL_46;
            }
          }

LABEL_48:
          outlined consume of Set<MessageCenterUser>.Iterator._Variant(v5);
          a3 = v37;
          v24 = v39;
LABEL_49:
          *(v24 + 34) = 1;

LABEL_50:
          if (a3)
          {
            goto LABEL_4;
          }

          goto LABEL_5;
        }

        while (1)
        {
          v35 = a3;
          v36 = v29;
          v34 = a3;
          if (!v29)
          {
            break;
          }

LABEL_45:
          a4 = (v36 - 1) & v36;
          v33 = *(*(v5 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v36)))));

          if (!v33)
          {
            goto LABEL_48;
          }

LABEL_46:
          specialized NetworkActivity.addConnection(_:)(v33);

          a3 = v34;
          v29 = a4;
          if (v5 < 0)
          {
            goto LABEL_38;
          }
        }

        while (1)
        {
          v34 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v34 >= ((v28 + 64) >> 6))
          {
            goto LABEL_48;
          }

          v36 = *(a2 + 8 * v34);
          v35 = (v35 + 1);
          if (v36)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
      }
    }

    if (a3)
    {
LABEL_4:
      a3();
    }

LABEL_5:
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v2 = a1;
  v3 = MEMORY[0x223DE2950](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v3 = MEMORY[0x223DE2960](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t outlined init with copy of Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork8Activity_pSgMd, &_s11SiriNetwork8Activity_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized NetworkActivity.init(label:parentActivity:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  if (specialized Array.count.getter(MEMORY[0x277D84F90]))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Network12NWConnectionC_Tt0g5(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *(v2 + 24) = v6;
  *(v2 + 32) = 11;
  *(v2 + 34) = 0;
  if (a1)
  {
    v7 = type metadata accessor for NWActivity();
    swift_allocObject();
    *(v2 + 16) = NWActivity.init(domain:label:)();

    if (a2)
    {
      v8 = &protocol witness table for NWActivity;
      v9 = a2;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    v12[0] = v9;
    v12[3] = v7;
    v12[4] = v8;

    NWActivity.parent.setter(v12);
    if (a2)
    {
      v10 = NWActivity.label.getter();

      NetworkActivityLabel.init(rawValue:)(v10);
      *(v3 + 32) = v12[0];
    }
  }

  else
  {
  }

  *(v3 + 35) = a1;
  return v3;
}

uint64_t NWActivity.parent.setter(uint64_t a1)
{
  outlined init with copy of Activity?(a1, v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork8Activity_pMd, &_s11SiriNetwork8Activity_pMR);
    swift_dynamicCast();
  }

  else
  {
    outlined destroy of Activity?(v3);
  }

  NWActivity.parentActivity.setter();
  return outlined destroy of Activity?(a1);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_2_19();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11SiriNetwork0D13ActivityLabelOAC0dE0Cy0D012NWConnectionCAH10NWActivityCGGMd, &_ss17_NativeDictionaryVy11SiriNetwork0D13ActivityLabelOAC0dE0Cy0D012NWConnectionCAH10NWActivityCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    goto LABEL_5;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    *(*(*v4 + 56) + 8 * v12) = a1;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    OUTLINED_FUNCTION_106_0();

    return specialized _NativeDictionary._insert(at:key:value:)(v18, v19, v20, v21);
  }
}

void OUTLINED_FUNCTION_100_1()
{

  BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(v0, (v1 & 1) == 0);
}

void closure #1 in Connection.sendCommand(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t), void (*a7)(void *, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    a5(a2);
    a6(a3, a4);
    a7(v14, a2, a3, a4);
  }
}

void BackgroundConnection.sendCommand(_:moreComing:with:)(void *a1, uint64_t a2, void (*a3)(void), unint64_t a4)
{
  v5 = v4;
  v270 = *MEMORY[0x277D85DE8];
  v268[0] = 0;
  v10 = [a1 serializedAceDataError_];
  v11 = v268[0];
  if (!v10)
  {
    v259 = a4;
    v48 = 0xD00000000000001CLL;
    v49 = v268[0];
    OUTLINED_FUNCTION_72_0();
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v51 = _convertErrorToNSError(_:)();
    v52 = [v51 domain];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v53 == 0xD00000000000001CLL && 0x80000002235F98C0 == v55)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (![v51 code])
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v145 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v145, static Logger.siriNetwork);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_15_1(v147))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_55_0();
        _os_log_impl(v148, v149, v150, v151, v152, 2u);
        v153 = OUTLINED_FUNCTION_7_2();
        MEMORY[0x223DE38F0](v153);
      }

      if (a3)
      {
        (a3)(0);
      }

      goto LABEL_46;
    }

LABEL_24:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v90, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v91 = v50;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = OUTLINED_FUNCTION_58_3();
      OUTLINED_FUNCTION_4_3();
      v96 = a3;
      v97 = swift_slowAlloc();
      v268[0] = v97;
      *v94 = 136315394;
      OUTLINED_FUNCTION_103_1();
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
      v106 = OUTLINED_FUNCTION_102(v98, v99, v100, v101, v102, v103, v104, v105);
      v48 = OUTLINED_FUNCTION_139(v106, v107, v108, v109, v110, v111, v112, v113, v248, v250, v251, v253, v255, v259, v261, v262, v263, v264, v265, v266, *v267, *&v267[8], *&v267[16]);

      *(v94 + 4) = v48;
      *(v94 + 12) = 2112;
      v114 = v50;
      v115 = _swift_stdlib_bridgeErrorToNSError();
      *(v94 + 14) = v115;
      *v95 = v115;
      _os_log_impl(&dword_223515000, v92, v93, "Background Connection - sendCommand. Error sending %s, error: %@", v94, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v95, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      __swift_destroy_boxed_opaque_existential_0(v97);
      a3 = v96;
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v116 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v116);
    }

    if (a3)
    {
      v117 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v118 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v117);
      OUTLINED_FUNCTION_72_2(v118, v119);
      *(v120 + 24) = xmmword_2235F01F0;
      v121 = v50;
      (a3)(v48);

LABEL_30:
      v122 = v48;
      goto LABEL_79;
    }

LABEL_46:

    return;
  }

  v12 = v10;
  v269 = type metadata accessor for OS_dispatch_data();
  v268[0] = v12;
  v13 = v11;
  v14 = Data.init(instance:)(v268);
  if (v15 >> 60 != 15)
  {
    v58 = v14;
    v59 = v15;
    v260 = a3;
    OUTLINED_FUNCTION_40_1(v5 + 1096, v267);
    outlined init with copy of MessageCenterBrowserProtocol?(v5 + 1096, v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v269)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v268, &v262);
      outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v60 = OUTLINED_FUNCTION_53();
      v61(v60);
      __swift_destroy_boxed_opaque_existential_0(&v262);
      if (a2)
      {
LABEL_17:
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v62, static Logger.siriNetwork);
        v63 = OUTLINED_FUNCTION_53();
        outlined copy of Data?(v63, v64);
        swift_unknownObjectRetain();
        v65 = OUTLINED_FUNCTION_53();
        outlined copy of Data?(v65, v66);
        v67 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_142();
        if (OUTLINED_FUNCTION_140())
        {
          v68 = swift_slowAlloc();
          OUTLINED_FUNCTION_4_3();
          v69 = swift_slowAlloc();
          v268[0] = v69;
          *v68 = 136315394;
          OUTLINED_FUNCTION_103_1();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
          v78 = OUTLINED_FUNCTION_102(v70, v71, v72, v73, v74, v75, v76, v77);
          v86 = OUTLINED_FUNCTION_139(v78, v79, v80, v81, v82, v83, v84, v85, v248, v250, v251, v253, v255, v260, v261, v262, v263, v264, v265, v266, *v267, *&v267[8], *&v267[16]);

          *(v68 + 4) = v86;
          *(v68 + 12) = 2048;
          switch(v59 >> 62)
          {
            case 1uLL:
              v194 = a4;
              v195 = OUTLINED_FUNCTION_53();
              outlined consume of Data?(v195, v196);
              LODWORD(v89) = HIDWORD(v58) - v58;
              if (!__OFSUB__(HIDWORD(v58), v58))
              {
                v89 = v89;
                goto LABEL_61;
              }

              __break(1u);
              OUTLINED_FUNCTION_0_8();
              swift_once();
              v131 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_58(v131, static Logger.siriNetwork);
              v132 = a2;
              v133 = Logger.logObject.getter();
              v134 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v133, v134))
              {
                OUTLINED_FUNCTION_6_5();
                v135 = swift_slowAlloc();
                v136 = OUTLINED_FUNCTION_58_3();
                *v135 = 138412290;
                v137 = a2;
                v138 = _swift_stdlib_bridgeErrorToNSError();
                *(v135 + 4) = v138;
                *v136 = v138;
                _os_log_impl(&dword_223515000, v133, v134, "Background Connection - Writter. Error compressing data: %@", v135, 0xCu);
                outlined destroy of NetworkConnectionProtocol?(v136, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v139 = OUTLINED_FUNCTION_4_0();
                MEMORY[0x223DE38F0](v139);
                OUTLINED_FUNCTION_2_2();
                MEMORY[0x223DE38F0]();
              }

              if (v69)
              {
                v140 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
                v48 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v140);
                *(v141 + 8) = 0;
                *(v141 + 16) = 0;
                *v141 = a2;
                *(v141 + 24) = xmmword_2235F01F0;
                v142 = a2;
                (v69)(v48);
                outlined consume of Data?(v256, v194);
                v143 = OUTLINED_FUNCTION_53();
                outlined consume of Data?(v143, v144);

                goto LABEL_30;
              }

              v225 = v256;
              v226 = v194;
              goto LABEL_76;
            case 2uLL:
              v189 = *(v58 + 16);
              v188 = *(v58 + 24);
              v190 = OUTLINED_FUNCTION_53();
              outlined consume of Data?(v190, v191);
              v89 = v188 - v189;
              if (!__OFSUB__(v188, v189))
              {
                goto LABEL_61;
              }

              __break(1u);
LABEL_58:
              v192 = OUTLINED_FUNCTION_53();
              outlined consume of Data?(v192, v193);
              v89 = 0;
LABEL_61:
              *(v68 + 14) = v89;
              v197 = OUTLINED_FUNCTION_53();
              outlined consume of Data?(v197, v198);
              OUTLINED_FUNCTION_55_4();
              _os_log_impl(v199, v200, v201, v202, v68, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v69);
              OUTLINED_FUNCTION_2_2();
              MEMORY[0x223DE38F0]();
              v203 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x223DE38F0](v203);
              break;
            case 3uLL:
              goto LABEL_58;
            default:
              v87 = OUTLINED_FUNCTION_53();
              outlined consume of Data?(v87, v88);
              v89 = BYTE6(v59);
              goto LABEL_61;
          }
        }

        else
        {
          v154 = OUTLINED_FUNCTION_53();
          outlined consume of Data?(v154, v155);
          v156 = OUTLINED_FUNCTION_53();
          outlined consume of Data?(v156, v157);
        }

        if (v260)
        {
          (v260)(0);
        }

        goto LABEL_64;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (a2)
      {
        goto LABEL_17;
      }
    }

    outlined init with copy of MessageCenterBrowserProtocol?(v5 + 1096, v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v269)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v268, &v262);
      outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v123 = v265;
      v124 = v266;
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v125 = (*(v124 + 136))(v123, v124);
      v127 = v126;
      __swift_destroy_boxed_opaque_existential_0(&v262);
      if (v127 >> 60 != 15)
      {
        outlined init with copy of MessageCenterBrowserProtocol?(v5 + 1096, v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        if (v269)
        {
          outlined init with copy of RPCOspreyConnectionProtocol(v268, &v262);
          outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          __swift_project_boxed_opaque_existential_1(&v262, v265);
          v257 = v125;
          v128 = OUTLINED_FUNCTION_32();
          v130 = v129(v128);
          v209 = v208;
          v252 = v130;
          v254 = v127;
          __swift_destroy_boxed_opaque_existential_0(&v262);
          v207 = v260;
          if (v209 >> 60 != 15)
          {
            if (one-time initialization token for siriNetwork != -1)
            {
              OUTLINED_FUNCTION_0_8();
              swift_once();
            }

            v229 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_58(v229, static Logger.siriNetwork);
            swift_unknownObjectRetain();
            v230 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            OUTLINED_FUNCTION_142();
            if (OUTLINED_FUNCTION_140())
            {
              OUTLINED_FUNCTION_6_5();
              v231 = swift_slowAlloc();
              OUTLINED_FUNCTION_4_3();
              v249 = swift_slowAlloc();
              v268[0] = v249;
              *v231 = 136315138;
              OUTLINED_FUNCTION_103_1();
              v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
              v240 = OUTLINED_FUNCTION_102(v232, v233, v234, v235, v236, v237, v238, v239);
              v242 = v209;
              v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v240, v241, v268);

              *(v231 + 4) = v243;
              v209 = v242;
              v207 = v260;
              _os_log_impl(&dword_223515000, v230, OS_LOG_TYPE_DEFAULT, "Background Connection - sendCommand. Sending %s and any buffered command.", v231, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v249);
              v244 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x223DE38F0](v244);
              OUTLINED_FUNCTION_2_2();
              MEMORY[0x223DE38F0]();
            }

            v269 = MEMORY[0x277CC9318];
            v268[0] = v252;
            v268[1] = v209;
            OUTLINED_FUNCTION_109();
            v245 = swift_allocObject();
            v245[2] = a1;
            v245[3] = v207;
            v245[4] = a4;
            swift_unknownObjectRetain();
            outlined copy of Data?(v252, v209);
            outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v207, a4);
            BackgroundConnection.sendData(_:with:)(v268, partial apply for closure #1 in BackgroundConnection.sendCommand(_:moreComing:with:));
            outlined consume of Data?(v252, v209);

            outlined consume of Data?(v257, v254);
            v246 = OUTLINED_FUNCTION_53();
            outlined consume of Data?(v246, v247);
            __swift_destroy_boxed_opaque_existential_0(v268);
            return;
          }

          v206 = v252;
        }

        else
        {
          v254 = v127;
          outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          v206 = 0;
          v209 = 0xF000000000000000;
          v207 = v260;
        }

        v210 = v125;
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v211 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v211, static Logger.siriNetwork);
        v212 = Logger.logObject.getter();
        v213 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_15_1(v213))
        {
          v214 = OUTLINED_FUNCTION_14();
          *v214 = 0;
          OUTLINED_FUNCTION_55_4();
          _os_log_impl(v215, v216, v217, v218, v214, 2u);
          v219 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v219);
        }

        if (!v207)
        {
          outlined consume of Data?(v206, v209);
          outlined consume of Data?(v125, v254);
LABEL_64:
          v204 = OUTLINED_FUNCTION_53();
          outlined consume of Data?(v204, v205);
          return;
        }

        v220 = lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
        v221 = OUTLINED_FUNCTION_60(&type metadata for BackgroundConnectionError, v220);
        *v222 = 3;
        *(v222 + 8) = 0;
        *(v222 + 16) = 0;
        *(v222 + 24) = 0;
        *(v222 + 32) = 4;
        v223 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        a2 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v223);
        *(v224 + 8) = 0;
        *(v224 + 16) = 0;
        *v224 = v221;
        *(v224 + 24) = xmmword_2235F01F0;
        v207();
        outlined consume of Data?(v206, v209);
        v225 = v210;
        v226 = v254;
LABEL_76:
        outlined consume of Data?(v225, v226);
LABEL_77:
        v227 = OUTLINED_FUNCTION_53();
        outlined consume of Data?(v227, v228);
        goto LABEL_78;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v268, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v158, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v159 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_142();
    if (OUTLINED_FUNCTION_140())
    {
      OUTLINED_FUNCTION_6_5();
      v160 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v161 = swift_slowAlloc();
      v268[0] = v161;
      *v160 = 136315138;
      OUTLINED_FUNCTION_103_1();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
      v170 = OUTLINED_FUNCTION_102(v162, v163, v164, v165, v166, v167, v168, v169);
      v178 = OUTLINED_FUNCTION_139(v170, v171, v172, v173, v174, v175, v176, v177, v248, v250, v251, v253, v255, v260, v261, v262, v263, v264, v265, v266, *v267, *&v267[8], *&v267[16]);

      *(v160 + 4) = v178;
      OUTLINED_FUNCTION_55_4();
      _os_log_impl(v179, v180, v181, v182, v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v161);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v183 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v183);
    }

    if (!v260)
    {
      goto LABEL_64;
    }

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v184 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
    OUTLINED_FUNCTION_91_1(v185, 6);
    *(v186 + 24) = xmmword_2235F01E0;
    a2 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
    *(v187 + 8) = 0;
    *(v187 + 16) = 0;
    *v187 = v184;
    *(v187 + 24) = xmmword_2235F01F0;
    v260();
    goto LABEL_77;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v16, static Logger.siriNetwork);
  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_142();
  if (OUTLINED_FUNCTION_140())
  {
    OUTLINED_FUNCTION_6_5();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v19 = swift_slowAlloc();
    v268[0] = v19;
    *v18 = 136315138;
    OUTLINED_FUNCTION_103_1();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
    v28 = OUTLINED_FUNCTION_102(v20, v21, v22, v23, v24, v25, v26, v27);
    v36 = OUTLINED_FUNCTION_139(v28, v29, v30, v31, v32, v33, v34, v35, v248, v250, v251, v253, v255, v258, v261, v262, v263, v264, v265, v266, *v267, *&v267[8], *&v267[16]);

    *(v18 + 4) = v36;
    OUTLINED_FUNCTION_40_6();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v42 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v42);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  if (a3)
  {
    v43 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    v44 = OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v43);
    *v45 = xmmword_2235F5140;
    *(v45 + 16) = 3;
    v46 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    a2 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v46);
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *v47 = v44;
    *(v47 + 24) = xmmword_2235F01F0;
    a3();
LABEL_78:
    v122 = a2;
LABEL_79:
  }
}

uint64_t sub_22351D900()
{
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t specialized Connection.accessPotentiallyActiveConnections(_:)(uint64_t a1, void *a2, void (*a3)(void), unint64_t a4)
{
  if (*(a1 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal) == 1)
  {
    if (!a3)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3, a4);
    }

LABEL_3:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v7 = swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 3;
    *(v8 + 24) = xmmword_2235F01E0;
    a3();

    goto LABEL_4;
  }

  if (*(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {

    BackgroundConnection.sendCommand(_:moreComing:with:)(a2, 0, a3, a4);
    swift_unknownObjectRelease();

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3, a4);
  }

  v11 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v12 = *(a1 + v11);

  result = specialized Set.isEmpty.getter(v13);
  if (result)
  {

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = a2;
  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundConnection();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
    result = Set.Iterator.init(_cocoa:)();
    v12 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v17 = v33;
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);
  }

  v21 = (v15 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (!v17)
    {
      break;
    }

LABEL_22:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v26)
    {
LABEL_28:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant(v12);
      goto LABEL_4;
    }

    while (1)
    {

      BackgroundConnection.sendCommand(_:moreComing:with:)(v27, 0, a3, a4);

      v16 = v24;
      v17 = v25;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for BackgroundConnection();
        swift_dynamicCast();
        v24 = v16;
        v25 = v17;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_28;
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

id @objc AceObject.serializedAceData()(void *a1)
{
  v1 = a1;
  v2 = AceObject.serializedAceData()();

  return v2;
}

uint64_t AceObject.serializedAceData()()
{
  result = static AceSerialization.aceDataForObject(_:)(v0);
  if (!v1)
  {
    v4 = v3;
    if (v3 >> 60 == 15)
    {
      lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      swift_allocError();
      *v5 = xmmword_2235F1900;
      *(v5 + 16) = 3;
      return swift_willThrow();
    }

    else
    {
      v6 = result;
      v7 = specialized Data.withUnsafeBytes<A>(_:)(result, v3);
      outlined consume of Data?(v6, v4);
      return v7;
    }
  }

  return result;
}

uint64_t static AceSerialization.aceDataForObject(_:)(id a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_10;
  }

  outlined bridged method (pb) of @objc AceObject._serializedData()(a1);
  if (v2 >> 60 == 15)
  {
    v3 = [a1 dictionary];
    if (v3)
    {
      v4 = v3;
      v32[0] = 0;
      v5 = [objc_opt_self() dataWithPropertyList:v3 format:200 options:0 error:v32];
      v6 = v32[0];
      if (!v5)
      {
        v30 = v6;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return OUTLINED_FUNCTION_6_1();
      }

      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = OUTLINED_FUNCTION_0_36();
      outlined copy of Data._Representation(v7, v8);
      goto LABEL_6;
    }

LABEL_10:
    v18 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v18);
    *v19 = xmmword_2235F3AA0;
    OUTLINED_FUNCTION_5_19(v19, 3);
    return OUTLINED_FUNCTION_6_1();
  }

LABEL_6:
  v9 = OUTLINED_FUNCTION_6_1();
  outlined copy of Data?(v9, v10);
  v11 = OUTLINED_FUNCTION_0_36();
  v12 = MEMORY[0x223DE13E0](v11);
  if (v12 > 4294967294)
  {
    v20 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v20);
    *v21 = xmmword_2235F1900;
    OUTLINED_FUNCTION_5_19(v21, 3);
    v22 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v22, v23);
    v24 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data?(v24, v25);
  }

  else
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    v32[0] = static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(3, v12);
    v32[1] = v13;
    if (v13 >> 60 != 15)
    {
      OUTLINED_FUNCTION_0_36();
      Data.append(_:)();
    }

    v14 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v14, v15);
    v16 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data?(v16, v17);
    v26 = OUTLINED_FUNCTION_6_1();
    outlined copy of Data?(v26, v27);
    v28 = OUTLINED_FUNCTION_6_1();
    outlined consume of Data?(v28, v29);
  }

  return OUTLINED_FUNCTION_6_1();
}

uint64_t outlined bridged method (pb) of @objc AceObject._serializedData()(void *a1)
{
  v1 = [a1 _serializedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Data.Deallocator();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = swift_slowAlloc();
  *v11 = 0x70403020100FFuLL >> (8 * a1);
  if (one-time initialization token for htonl != -1)
  {
    swift_once();
  }

  *(v11 + 1) = static Endian.htonl(a2);
  (*(v6 + 104))(v10, *MEMORY[0x277CC92A0], v4);
  Data.Deallocator._deallocator.getter();
  type metadata accessor for __DataStorage();
  swift_allocObject();

  v12 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
  v13 = MEMORY[0x223DE1390](v12, 5);

  (*(v6 + 8))(v10, v4);
  return v13;
}

uint64_t Data.init(instance:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for DispatchData();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  outlined init with copy of Any(a1, v22);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v22);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v11 + 32))(v1, v8, v9);
    (*(v11 + 16))(v6, v1, v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    v13 = Data.init(copying:)(v6);
    v15 = v14;
    (*(v11 + 8))(v1, v9);
    if (v15 >> 60 != 15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    outlined destroy of DispatchData?(v8);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = _bridgeAnythingToObjectiveC<A>(_:)();
  v17 = CFGetTypeID(v16);
  swift_unknownObjectRelease();
  if (v17 != CFDataGetTypeID())
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return 0;
  }

  outlined init with copy of Any(a1, v22);
  type metadata accessor for CFDataRef(0);
  swift_dynamicCast();
  v18 = v20[1];
  if (!CFDataGetBytePtr(v18))
  {

    goto LABEL_12;
  }

  v21 = xmmword_2235EF6F0;
  CFDataGetLength(v18);

  Data.append(_:count:)();
LABEL_2:
  v13 = v21;
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x22351E5C4);
      }

      a1 = a1;
      v4 = v6;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v4);
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v4);
    case 3uLL:
      a1 = 0;
      v2 = 0;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v2);
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v2);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x223DE1260]();
      DispatchData.init(bytes:)();
      v9 = DispatchData._bridgeToObjectiveC()();
      (*(v5 + 8))(v7, v4);
      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x223DE1260]();
      DispatchData.init(bytes:)();
      v9 = DispatchData._bridgeToObjectiveC()();
      (*(v5 + 8))(v7, v4);
      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x223DE1260]();
      DispatchData.init(bytes:)();
      v9 = DispatchData._bridgeToObjectiveC()();
      (*(v5 + 8))(v7, v4);
      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for OS_dispatch_data()
{
  result = lazy cache variable for type metadata for OS_dispatch_data;
  if (!lazy cache variable for type metadata for OS_dispatch_data)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_data);
  }

  return result;
}

uint64_t outlined init with copy of RPCOspreyConnectionProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of NetworkConnectionProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_71();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t OUTLINED_FUNCTION_65_1(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *v15 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, va);
}

void OUTLINED_FUNCTION_65_2()
{

  _StringGuts.grow(_:)(39);
}

void *OUTLINED_FUNCTION_65_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t __src)
{

  return memcpy(&STACK[0x460], &__src, 0x204uLL);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
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

void OUTLINED_FUNCTION_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_50_2()
{
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_task_alloc();
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_45_0(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](a1, v1, v2);
}

void OUTLINED_FUNCTION_45_1(CFStringRef headerField)
{

  CFHTTPMessageSetHeaderFieldValue(v2, headerField, v1);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return static _SetStorage.resize(original:capacity:move:)();
}

void *OUTLINED_FUNCTION_23(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_23_0(float a1)
{
  *v1 = a1;
}

double OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2)
{

  return specialized Dictionary.subscript.getter(a1, a2, v2, (v3 - 96));
}

BOOL OUTLINED_FUNCTION_57_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t CommunicationProtocolAce.getBufferedUncompressedDataToWrite()()
{
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_48_0();
  if (!(!v3 & v2))
  {
    v4 = *(v0 + 88);
    switch(v1 >> 62)
    {
      case 1uLL:
        v9 = v4;
        v10 = v4 >> 32;
        goto LABEL_7;
      case 2uLL:
        v9 = *(v4 + 16);
        v10 = *(v4 + 24);
LABEL_7:
        if (v9 == v10)
        {
          return OUTLINED_FUNCTION_32();
        }

        v11 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v11, v12);
        v6 = *(v0 + 88);
        v5 = *(v0 + 96);
        goto LABEL_10;
      case 3uLL:
        goto LABEL_4;
      default:
        v5 = v1;
        v6 = *(v0 + 88);
        if ((v1 & 0xFF000000000000) != 0)
        {
LABEL_10:
          *(v0 + 88) = xmmword_2235EF6F0;
          outlined consume of Data?(v6, v5);
        }

        else
        {
LABEL_4:
          v7 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v7, v8);
        }

        break;
    }
  }

  return OUTLINED_FUNCTION_32();
}

uint64_t (*CommunicationProtocolAce.bufferedUncompressedData.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

uint64_t CommunicationProtocolAce.bufferGeneralData(data:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  v3 = a3(v7);
  OUTLINED_FUNCTION_24_1();
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_2_13();
    Data.append(_:)();
  }

  return v3(v7, 0);
}

uint64_t ZlibDataCompressor.compressedDataForData(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_7:
      if (v8 == v9)
      {
        return 0;
      }

      v11 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v11, v12);
      goto LABEL_11;
    case 3uLL:
      goto LABEL_4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
LABEL_4:
        v6 = OUTLINED_FUNCTION_0();
        outlined consume of Data?(v6, v7);
        return 0;
      }

LABEL_11:
      v13 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v13, v14);

      v15 = OUTLINED_FUNCTION_0();
      specialized Data.withUnsafeBytes<A>(_:)(v15, v16, v2, a1, a2, v17);
      v18 = OUTLINED_FUNCTION_0();
      result = outlined consume of Data?(v18, v19);
      if (!v3)
      {
        result = v20;
      }

      break;
  }

  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];

  outlined copy of Data._Representation(a4, a5);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v19 = __DataStorage._bytes.getter();
      if (!v19)
      {
        goto LABEL_14;
      }

      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v21))
      {
LABEL_19:
        __break(1u);
      }

      v19 += a1 - v21;
LABEL_14:
      MEMORY[0x223DE1260]();
      v13 = a6;
      v12 = v19;
      v14 = a3;
      v15 = a4;
      v16 = a5;
LABEL_15:
      closure #1 in ZlibDataCompressor.compressedDataForData(_:)(v12, v14, v15, v16, v13);
LABEL_16:

      outlined consume of Data._Representation(a4, a5);

      return outlined consume of Data._Representation(a4, a5);
    case 2uLL:
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
      v19 = __DataStorage._bytes.getter();
      if (!v19)
      {
        goto LABEL_6;
      }

      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_18;
      }

      v19 += v18 - v20;
LABEL_6:
      if (!__OFSUB__(v17, v18))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_9:
      outlined copy of Data._Representation(a4, a5);

      specialized Data.InlineData.withUnsafeBytes<A>(_:)(0, 0, a3, a4, a5, a6);
      goto LABEL_16;
    case 3uLL:
      goto LABEL_9;
    default:
      v23 = a1;
      v24 = a2;
      v25 = BYTE2(a2);
      v26 = BYTE3(a2);
      v27 = BYTE4(a2);
      v28 = BYTE5(a2);
      v12 = &v23;
      v13 = a6;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      goto LABEL_15;
  }
}

{
  v29 = *MEMORY[0x277D85DE8];

  outlined copy of Data._Representation(a4, a5);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v19 = __DataStorage._bytes.getter();
      if (!v19)
      {
        goto LABEL_14;
      }

      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v21))
      {
LABEL_19:
        __break(1u);
      }

      v19 += a1 - v21;
LABEL_14:
      MEMORY[0x223DE1260]();
      v13 = a6;
      v12 = v19;
      v14 = a3;
      v15 = a4;
      v16 = a5;
LABEL_15:
      closure #1 in ZlibDataDecompressor.decompressedDataForData(_:)(v12, v14, v15, v16, v13);
LABEL_16:

      outlined consume of Data._Representation(a4, a5);

      return outlined consume of Data._Representation(a4, a5);
    case 2uLL:
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
      v19 = __DataStorage._bytes.getter();
      if (!v19)
      {
        goto LABEL_6;
      }

      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_18;
      }

      v19 += v18 - v20;
LABEL_6:
      if (!__OFSUB__(v17, v18))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_9:
      outlined copy of Data._Representation(a4, a5);

      specialized Data.InlineData.withUnsafeBytes<A>(_:)(0, 0, a3, a4, a5, a6);
      goto LABEL_16;
    case 3uLL:
      goto LABEL_9;
    default:
      v23 = a1;
      v24 = a2;
      v25 = BYTE2(a2);
      v26 = BYTE3(a2);
      v27 = BYTE4(a2);
      v28 = BYTE5(a2);
      v12 = &v23;
      v13 = a6;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      goto LABEL_15;
  }
}

uint64_t closure #1 in ZlibDataCompressor.compressedDataForData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, __int128 *a5@<X8>)
{
  v6 = v5;
  v31 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }

  v12 = MEMORY[0x223DE13E0](a3, a4);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  LODWORD(a4) = v12;
  if (HIDWORD(v12))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  swift_beginAccess();
  *(a2 + 24) = a4;
  v30 = xmmword_2235EF6F0;
  v13 = *(a2 + 128);
  while (1)
  {
    swift_beginAccess();
    *(a2 + 40) = v13;
    *(a2 + 48) = 0x2000;
    LODWORD(a4) = deflate((a2 + 16), 2);
    swift_endAccess();
    if (a4 > 1)
    {
      break;
    }

    v14 = *(a2 + 48);
    if (v14 == 0x2000)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
    }

    else
    {
      v17 = 0x2000 - v14;
      if (v14 >> 1 >= 0xFF9)
      {
        memset(__dst, 0, sizeof(__dst));
        v29 = -v14;
        memcpy(__dst, v13, v17);
        v15 = *__dst;
        v6 = v6 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v29 << 16)) << 32);
        v16 = v6;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v15 = v17 << 32;
        v16 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
      }
    }

    if (*(&v30 + 1) >> 60 != 15)
    {
      Data.append(_:)();
    }

    outlined consume of Data._Representation(v15, v16);
    if (a4 || *(a2 + 48))
    {
      v18 = v30;
      *a5 = v30;
      outlined copy of Data?(v18, *(&v18 + 1));
      return outlined consume of Data?(v18, *(&v18 + 1));
    }
  }

  result = *(a2 + 64);
  if (!result)
  {
    __break(1u);
    return result;
  }

  a5 = String.init(cString:)();
  v6 = v20;
  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_25;
  }

LABEL_19:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriNetwork);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *__dst = v25;
    *v24 = 67109378;
    *(v24 + 4) = a4;
    *(v24 + 8) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, v6, __dst);

    *(v24 + 10) = v26;
    _os_log_impl(&dword_223515000, v22, v23, "DataCompressor - Compression: Deflate finished with unexpected status %d %s", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DE38F0](v25, -1, -1);
    MEMORY[0x223DE38F0](v24, -1, -1);
  }

  else
  {
  }

  outlined consume of Data?(v30, *(&v30 + 1));
  v30 = xmmword_2235EF700;
  lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();
  swift_allocError();
  *v27 = a4;
  swift_willThrow();
  return outlined consume of Data?(v30, *(&v30 + 1));
}

uint64_t CommunicationProtocolAce.aceDelegate.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for CommunicationProtocolDelegateAce);
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of NetworkConnectionProtocol?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_71();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_6_7()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return outlined init with copy of ConnectionSnapshotReport?(a1, va, v62, v63);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_18()
{

  JUMPOUT(0x223DE2180);
}

void OUTLINED_FUNCTION_6_21()
{

  JUMPOUT(0x223DE2070);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
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

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
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

        v9 = (v7 + 32);
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

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
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

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_4_4(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{

  return outlined init with copy of ConnectionSnapshotReport?(a1, &STACK[0x2A0], v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1, uint64_t a2)
{
  *a2 = 15;
  *(a2 + 8) = 8;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_4_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v0, &async function pointer to partial apply for closure #1 in MessageCenterUserManager.start(), v1);
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_4_26(void *a1)
{

  return [a1 (v2 + 3483)];
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 8) = 1024;
  return result;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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

void (*OUTLINED_FUNCTION_48_1())(void **a1)
{

  return specialized Dictionary.subscript.modify(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

uint64_t (*OUTLINED_FUNCTION_11_4())(uint64_t a1)
{

  return RPCOspreyConnectionProvider.connectionMetrics.modify();
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  outlined bridged method (mbnn) of @objc NETSchemaNETError.domain.setter(v4, v5, v6, a4);
}

id OUTLINED_FUNCTION_29_1()
{

  return [v0 (v1 + 3960)];
}

void *OUTLINED_FUNCTION_104_0(void *a1)
{

  return memcpy(a1, v1, 0x72uLL);
}

void OUTLINED_FUNCTION_15_3()
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  v3 = *(*v0 + 16);

  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v3, v1);
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_7(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return outlined init with copy of ConnectionPolicyRoute(va, &a9);
}

uint64_t OUTLINED_FUNCTION_15_11()
{
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

id static NetworkWiFiManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NetworkWiFiManager.shared;

  return v1;
}

void specialized NetworkActivity.activate()()
{
  if (!*(v0 + 33))
  {
    specialized NetworkActivity.moveTo(_:)(1u);
    if (*(v0 + 33) == 1)
    {
      if (*(v0 + 16))
      {

        NWActivity.activate()();
      }
    }
  }
}

void specialized NetworkActivity.moveTo(_:)(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = *(v1 + 33);
  v41 = v17;
  switch(v17)
  {
    case 1:
      if (v3 - 1 >= 2)
      {
        specialized NetworkActivity.abort()("NetworkActivity: Network Activity %s %s Abort");
        goto LABEL_13;
      }

      break;
    case 2:
      if (v3 >= 2)
      {
        if (v3 == 2)
        {
          specialized NetworkActivity.abort()("NetworkActivity: Network Activity %s %s Restart");
LABEL_13:
          LOBYTE(v3) = 0;
        }
      }

      else
      {
        specialized NetworkActivity.abort()("NetworkActivity: Network Activity %s %s Abort", v39, v40);
      }

      break;
    case 3:
      if (v3 < 2)
      {
        LOBYTE(v3) = 0;
      }

      break;
    default:
      if (v3 >= 2)
      {
        LOBYTE(v3) = 0;
      }

      break;
  }

  *(v1 + 33) = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriNetwork);

  v42 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v19))
  {
    v39 = v5;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v20 = 136315906;
    v21 = *(v1 + 35);

    v22 = 0xE700000000000000;
    v23 = 0x64696C61766E69;
    switch(v21)
    {
      case 1:
        v22 = 0xE900000000000074;
        v23 = 0x7365757165526975;
        break;
      case 2:
        v22 = 0xED0000746E617473;
        v23 = 0x6973734164616F6CLL;
        break;
      case 3:
        v22 = 0xEE00676E696D6165;
        v23 = 0x7274536F69647561;
        break;
      case 4:
        v22 = 0xE600000000000000;
        v23 = 0x686365657073;
        break;
      case 5:
        v23 = 0x73746C75736572;
        break;
      case 6:
        v22 = 0xE500000000000000;
        v23 = 0x7972746572;
        break;
      case 7:
        v22 = 0x80000002235F8790;
        v23 = 0xD000000000000016;
        break;
      case 8:
        v25 = 2003790950;
        goto LABEL_31;
      case 9:
        v25 = 1668184435;
LABEL_31:
        v23 = v25 | 0x6D6D6F4300000000;
        v22 = 0xEB00000000646E61;
        break;
      case 10:
        v22 = 0xE400000000000000;
        v23 = 1953718636;
        break;
      default:
        break;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v45);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    specialized NetworkActivity.token.getter(v16);
    outlined init with copy of UUID?(v16, v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    else
    {
      v29 = v39;
      (*(v39 + 4))(v10, v14, v4);
      (*(v29 + 2))(v8, v10, v4);
      v27 = String.init<A>(describing:)();
      v28 = v30;
      (*(v29 + 1))(v10, v4);
    }

    outlined destroy of ConnectionSnapshotReport?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v45);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    v44 = v41;
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v45);

    *(v20 + 24) = v34;
    *(v20 + 32) = 2080;
    v43 = *(v2 + 33);
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v45);

    *(v20 + 34) = v37;
    _os_log_impl(&dword_223515000, v42, v19, "NetworkActivity: Network Activity %s %s moved from %s to %s", v20, 0x2Au);
    v38 = v40;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v38, -1, -1);
    MEMORY[0x223DE38F0](v20, -1, -1);
  }

  else
  {

    v24 = v42;
  }
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
    __swift_instantiateConcreteTypeFromMangledNameV2(_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork17ConnectionMetricsVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork17ConnectionMetricsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 1440);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[1440 * v8] <= v12)
    {
      memmove(v12, v13, 1440 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    v10 = MEMORY[0x277D84F90];
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

void OUTLINED_FUNCTION_5_7(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ConnectionSnapshotReport?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_5_19@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_5_20(int a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *(v2 - 128) = a1;
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

id OUTLINED_FUNCTION_5_26(void *a1)
{

  return [a1 (v1 + 3507)];
}

uint64_t specialized NetworkActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16) && (, v3 = NWActivity.isActivated.getter(), , (v3 & 1) != 0) && *(v1 + 16))
  {

    NWActivity.token.getter();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL specialized Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t objectdestroy_71Tm(uint64_t a1)
{

  if (*(v1 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_unknownObjectRelease();
}

uint64_t (*OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{

  return NetworkConnectionProvider.connectionMetrics.modify(&a9);
}

uint64_t OUTLINED_FUNCTION_12_11()
{
}

void OUTLINED_FUNCTION_12_12(__n128 a1, __n128 a2)
{
  *(v2 + 136) = a1;
  *(v2 + 152) = a2;
  *(v2 + 168) = a2;
  *(v2 + 184) = a2;
}

Swift::Bool __swiftcall NetworkWiFiManager.isWiFiEnabled()()
{
  v1 = *(v0 + OBJC_IVAR___SNNetworkWiFiManagerInternal_interface);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 powerOn];
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v4 = type metadata accessor for Logger();
    v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_223515000, v5, v6, "NetworkWiFiManager - WiFiEnabled: %{BOOL}d", v7, 8u);
      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void ConnectionPolicyRoute.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 88);
  v6 = *(v1 + 96);
  v9 = *(v1 + 104);
  v12 = *(v1 + 112);
  v7 = *(v1 + 113);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  MEMORY[0x223DE2980](v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v10);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v6 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x223DE2980](v6);
  }

  if (v12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x223DE29A0](v8);
  }

  if (v7 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x223DE2980](v7);
  }
}

uint64_t OUTLINED_FUNCTION_116()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_116_0()
{
}

void *specialized _NativeSet.insertNew(_:at:isUnique:)(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x72uLL);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      memcpy(v22, __src, 0x72uLL);
      Hasher.init(_seed:)();
      ConnectionPolicyRoute.hash(into:)(v21);
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = *(v15 + 48) + 120 * a2;
        memcpy(v21, v18, 0x72uLL);
        memcpy(__srca, v18, 0x72uLL);
        LOBYTE(v18) = static ConnectionPolicyRoute.== infix(_:_:)(__srca, __dst);
        memcpy(v22, __srca, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v21, v19);
        outlined destroy of ConnectionPolicyRoute(v22);
        if (v18)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 120 * a2), __dst, 0x72uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionPolicyRoute(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 114))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v16 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; ++v5[2])
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v3 + 48) + 120 * (v11 | (v6 << 6)));
      memcpy(__dst, v14, 0x72uLL);
      memcpy(v19, v14, sizeof(v19));
      Hasher.init(_seed:)();
      outlined init with copy of ConnectionPolicyRoute(__dst, v17);
      ConnectionPolicyRoute.hash(into:)(v18);
      Hasher._finalize()();
      v15 = _HashTable.nextHole(atOrAfter:)();
      *(v5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v15;
      result = memcpy((v5[6] + 120 * v15), __dst, 0x72uLL);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {

        v2 = v16;
        goto LABEL_16;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v5;
  }

  return result;
}

SiriNetwork::ConnectionPolicyType __swiftcall ConnectionPolicyType.init(fromRawValue:)(Swift::String_optional fromRawValue)
{
  v3 = v1;
  if (fromRawValue.value._object)
  {
    object = fromRawValue.value._object;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_1_25();
    v7 = v7 && v6 == object;
    if (v7)
    {

LABEL_10:

      v8 = 1;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_46(v5);
    OUTLINED_FUNCTION_2();
    if (v2)
    {
      goto LABEL_10;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_1_25();
    if (v7 && v10 == object)
    {

LABEL_19:

      v8 = 2;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_46(v9);
    OUTLINED_FUNCTION_2();
    if (v2)
    {
      goto LABEL_19;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_1_25();
    if (v7 && v13 == object)
    {

LABEL_27:

      v8 = 3;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_46(v12);
    OUTLINED_FUNCTION_2();
    if (v2)
    {
      goto LABEL_27;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_1_25();
    if (v7 && v16 == object)
    {

      v8 = 4;
    }

    else
    {
      v18 = OUTLINED_FUNCTION_0_46(v15);

      if (v18)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  *v3 = v8;
  return fromRawValue.value._countAndFlagsBits;
}

uint64_t ConnectionInfo.connectionPolicyRoute.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policyRoute);
  *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policyRoute) = a1;
  v4 = a1;

  ConnectionPolicyRoute.init(from:)(a1, __src);
  v5 = OUTLINED_FUNCTION_3_25(OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration);
  OUTLINED_FUNCTION_95(v5, v6);
  memcpy(__dst, (a1 + 400), 0x72uLL);
  memcpy((a1 + 400), __src, 0x72uLL);
  return outlined destroy of ConnectionSnapshotReport?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
}

uint64_t ConnectionInfo.imposePolicyBan.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 313) = v2;
  return result;
}

void *ConnectionInfo.connectionPolicy.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNConnectionInfoInternal_policy);
  v2 = v1;
  return v1;
}

uint64_t ConnectionInfo.languageCode.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t ConnectionInfo.connectionProtocolTechnology.getter()
{
  v1 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1(v0 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v3);
  return *(v0 + v1);
}

uint64_t ConnectionInfo.assistantIdentifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.skipPeer.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 97) = v2;
  return result;
}

uint64_t ConnectionInfo.timeout.setter(double a1)
{
  v3 = OUTLINED_FUNCTION_3_25(OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration);
  result = OUTLINED_FUNCTION_95(v3, v4);
  *(v1 + 120) = a1;
  *(v1 + 128) = 0;
  return result;
}

uint64_t ConnectionInfo.prefersWWAN.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 96) = v2;
  return result;
}

uint64_t ConnectionInfo.productTypePrefix.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
}

uint64_t ConnectionInfo.connectionProtocolTechnology.setter(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  result = OUTLINED_FUNCTION_95(v1 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration, v5);
  *(v1 + v3) = v2;
  return result;
}

id @objc ConnectionInfo.assistantIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x223DE2070](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ConnectionInfo.forceReconnect.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 113) = v2;
  return result;
}

uint64_t ConnectionInfo.assistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t ConnectionInfo.peerAssistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t ConnectionInfo.peerType.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
}

uint64_t ConnectionInfo.peerVersion.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
}

uint64_t ConnectionInfo.usesPeerManagedSync.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 515) = v2;
  return result;
}

void ConnectionInfo.skipPeerErrorReason.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_29(a1);
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t ConnectionInfo.usesProxyConnection.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 99) = v2;
  return result;
}

uint64_t ConnectionInfo.deviceIsInWalkaboutExperimentGroup.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 514) = v2;
  return result;
}

uint64_t ConnectionInfo.peerAssistantIdentifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

char *Connection.init(connectionInfo:connectionQueue:)(char *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] = 0;
  OUTLINED_FUNCTION_43_4(&v2[OBJC_IVAR___SNConnectionInternal_activeRoute], xmmword_2235EFB30);
  v2[OBJC_IVAR___SNConnectionInternal_isCanceled] = 0;
  v2[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] = 0;
  *&v2[OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory] = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR___SNConnectionInternal_networkManager;
  *&v2[OBJC_IVAR___SNConnectionInternal_networkManager] = 0;
  v6 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  memcpy(__dst, &a1[v6], 0x204uLL);
  memmove(&v2[OBJC_IVAR___SNConnectionInternal_connectionConfiguration], &a1[v6], 0x204uLL);
  *&v2[OBJC_IVAR___SNConnectionInternal_connectionQueue] = a2;
  v7 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR___SNConnectionInternal_pendingRoutes] = v7;
  *&v2[OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections] = v7;
  *&v2[OBJC_IVAR___SNConnectionInternal_comatoseRoutes] = v7;
  *&v2[OBJC_IVAR___SNConnectionInternal_scheduledRoutes] = v7;
  outlined init with copy of ConnectionConfiguration(__dst, v18);
  v8 = a2;
  v9 = dispatch_group_create();
  *&v2[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup] = v9;
  dispatch_group_enter(v9);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static NetworkManager.shared;
  v11 = *&v2[v5];
  *&v2[v5] = static NetworkManager.shared;
  v12 = v10;

  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    OUTLINED_FUNCTION_24_3();
    swift_once();
  }

  v13 = static NetworkAnalytics.sharedNetworkAnalytics;
  *&v2[OBJC_IVAR___SNConnectionInternal_networkAnalytics] = static NetworkAnalytics.sharedNetworkAnalytics;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for Connection();
  v14 = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork16ConnectionPolicyVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork21ConnectionPolicyRouteVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t ConnectionInfo.peerVersion.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.peerType.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.forceOnDeviceOnlyDictation.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 114) = v2;
  return result;
}

double ConnectionInfo.timeout.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);
  result = *(v1 + 120);
  if (*(v1 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t ConnectionInfo.connectionId.getter()
{
  v1 = v0 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1(v1, v4);
  if (*(v1 + 408) == 1 || *(v1 + 424) == 0)
  {
  }

  else
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.aceHost.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.useWiFiHint.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_2_29(a1);
  *(v1 + 98) = v2;
  return result;
}

uint64_t ConnectionInfo.languageCode.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);

  return OUTLINED_FUNCTION_41_0();
}

Swift::Void __swiftcall NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(Swift::Int wifiAssertionTypeRawValue)
{
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v6 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = wifiAssertionTypeRawValue;
  v19 = partial apply for closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:);
  v20 = v8;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v17 = v9;
  v18 = &block_descriptor_8;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v10);

  v12 = OUTLINED_FUNCTION_7_10();
  v13(v12);
  v14 = OUTLINED_FUNCTION_5_4();
  v15(v14);
}

uint64_t sub_2235232C4()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2235232F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *ConnectionInfo.policyRoute.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNConnectionInfoInternal_policyRoute);
  v2 = v1;
  return v1;
}

uint64_t Connection.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *ConnectionInfo.skipPeerErrorReason.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_27(a1);
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

uint64_t ConnectionInfo.connectionId.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_29(v3);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.tracingCancel(completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVy11SiriNetwork0C13ActivityLabelOAC0cD0Cy0C012NWConnectionCAH10NWActivityCG_GMd, &_sSD8_VariantVy11SiriNetwork0C13ActivityLabelOAC0cD0Cy0C012NWConnectionCAH10NWActivityCG_GMR);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    swift_beginAccess();
    *(v4 + 24) = MEMORY[0x277D84FA0];

    if (a2)
    {
      a2(v5);
    }
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t specialized NetworkActivityTracingInternal.tracingCancel(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_223515000, v13, v14, "NetworkActivity Tracing: Remove all activities, and connections.", v15, 2u);
    MEMORY[0x223DE38F0](v15, -1, -1);
  }

  v16 = *(v3 + 32);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.tracingCancel(completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_61;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1, a2);
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v11, v8, v19);
  _Block_release(v19);

  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);
}

uint64_t NetworkActivityTracing.tracingCancel(completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

unint64_t OUTLINED_FUNCTION_55_2(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_115()
{
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v0 + 80, v0 + 240, v1, v2);
}

void *OUTLINED_FUNCTION_114(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x139uLL);
}

uint64_t outlined init with take of RPCOspreyConnectionProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{

  a1(*(v1 + 24));
  if (*(v1 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

void closure #1 in BackgroundConnection.sendCommand(_:moreComing:with:)(void *a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v9 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_223515000, v7, v8, "Background Connection - sendCommand. Error sending %s and any buffered command, error: %@", v9, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DE38F0](v11, -1, -1);
      v17 = v9;
LABEL_10:
      MEMORY[0x223DE38F0](v17, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_223515000, v7, v19, "Background Connection - sendCommand. %s and any buffered command sent", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DE38F0](v21, -1, -1);
      v17 = v20;
      goto LABEL_10;
    }
  }

  if (a3)
  {
    a3(a1);
  }
}

uint64_t NetworkConnectionProvider.connectionIdentifier.getter()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, v12, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  v1 = v13;
  if (v13)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v3 = *(v1 - 8);
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_0_1();
    v6 = v5 - v4;
    (*(v3 + 16))(v5 - v4);
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v7 = NWConnection.identifier.getter();
    (*(v3 + 8))(v6, v1);
    v12[0] = v7;
    v8 = String.init<A>(describing:)();
    v10 = v9;
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x223DE2180](v8, v10);

  return v14;
}

void *OUTLINED_FUNCTION_84(void *a1)
{

  return memcpy(a1, (v1 + 152), 0x168uLL);
}

uint64_t BackgroundConnection.bufferGeneralData(data:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_36_5(v0 + 1096, v1, v2, v3, v4, v5, v6);
  v7 = outlined init with copy of MessageCenterBrowserProtocol?(v0 + 1096, v13, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (!v14)
  {
    return outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_101_1(v7, v8);
  outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  OUTLINED_FUNCTION_143(v12);
  v9 = OUTLINED_FUNCTION_32();
  v10(v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t (*CommunicationProtocolAce.bufferedGeneralOutputData.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

void BackgroundConnection.tryToWriteBufferedOutputData(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_121_1();
  a34 = v36;
  a35 = v37;
  v39 = v38;
  v41 = v40;
  if (!*(v35 + 1080))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v57, static Logger.siriNetwork);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_1(v59))
    {
      v60 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_40_2(v60);
      OUTLINED_FUNCTION_34_6(&dword_223515000, v61, v62, "Background Connection - Writter: No connection provider available.");
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    if (v41)
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
      OUTLINED_FUNCTION_91_1(v63, 3);
      *(v64 + 24) = xmmword_2235F01E0;
      v65 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
      OUTLINED_FUNCTION_72_2(v65, v66);
      *(v67 + 24) = xmmword_2235F01F0;
      v41();
      goto LABEL_15;
    }

LABEL_42:
    OUTLINED_FUNCTION_60_4();
    return;
  }

  v42 = (v35 + 1080);
  if ((*(v35 + 1186) & 1) == 0)
  {
    if (*(v35 + 1185) == 1)
    {
      v70 = *(v35 + 1088);
      OUTLINED_FUNCTION_40_1(v35 + 1096, &a16);
      outlined init with copy of MessageCenterBrowserProtocol?(v35 + 1096, &a19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (a21)
      {
        outlined init with copy of RPCOspreyConnectionProtocol(&a19, &a11);
        swift_unknownObjectRetain();
        outlined destroy of NetworkConnectionProtocol?(&a19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        v71 = a14;
        v72 = a15;
        __swift_project_boxed_opaque_existential_1(&a11, a14);
        v73 = (*(v72 + 120))(v71, v72);
        v75 = v74;
        __swift_destroy_boxed_opaque_existential_0(&a11);
        if (v75 >> 60 != 15)
        {
          if (one-time initialization token for writeBufferBegin != -1)
          {
            swift_once();
          }

          siri_kdebug_trace(static Constants.Signposts.writeBufferBegin);
          swift_getObjectType();
          v76 = swift_allocObject();
          v76[2] = v73;
          v76[3] = v75;
          v76[4] = v41;
          v76[5] = v39;
          v77 = *(v70 + 504);
          v78 = OUTLINED_FUNCTION_26();
          outlined copy of Data?(v78, v79);
          v80 = OUTLINED_FUNCTION_26();
          outlined copy of Data?(v80, v81);
          v82 = OUTLINED_FUNCTION_16_10();
          outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v82, v83);
          v84 = OUTLINED_FUNCTION_26();
          v77(v84);
          v85 = OUTLINED_FUNCTION_26();
          outlined consume of Data?(v85, v86);

          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_26();
          outlined consume of Data?(v87, v88);
          goto LABEL_42;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        outlined destroy of NetworkConnectionProtocol?(&a19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      }

      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v105, static Logger.siriNetwork);

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v106, v107))
      {
        OUTLINED_FUNCTION_6_5();
        v108 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v109 = swift_slowAlloc();
        a11 = v109;
        *v108 = 136315138;
        a19 = *v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26ConnectionProviderProtocol_pSgMd, &_s11SiriNetwork26ConnectionProviderProtocol_pSgMR);
        v110 = Optional.debugDescription.getter();
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &a11);

        *(v108 + 4) = v112;
        OUTLINED_FUNCTION_130(&dword_223515000, v113, v114, "Background Connection - Writter: %s is open, but there is not buffered output data to write.");
        __swift_destroy_boxed_opaque_existential_0(v109);
        v115 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v115);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      if (v41)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v102 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
        v103 = 6;
        goto LABEL_40;
      }
    }

    else
    {
      v89 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v89 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v90, static Logger.siriNetwork);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        OUTLINED_FUNCTION_6_5();
        v93 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v94 = swift_slowAlloc();
        a11 = v94;
        *v93 = 136315138;
        a19 = *v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26ConnectionProviderProtocol_pSgMd, &_s11SiriNetwork26ConnectionProviderProtocol_pSgMR);
        v95 = Optional.debugDescription.getter();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &a11);

        *(v93 + 4) = v97;
        OUTLINED_FUNCTION_130(&dword_223515000, v98, v99, "Background Connection - Writter: %s is not opened");
        __swift_destroy_boxed_opaque_existential_0(v94);
        v100 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v100);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      if (v41)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v102 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
        v103 = 4;
LABEL_40:
        OUTLINED_FUNCTION_91_1(v101, v103);
        *(v116 + 24) = xmmword_2235F01E0;
        v117 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
        *(v118 + 8) = 0;
        *(v118 + 16) = 0;
        *v118 = v102;
        *(v118 + 24) = xmmword_2235F01F0;
        v41();
        swift_unknownObjectRelease();

        goto LABEL_42;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v43 = one-time initialization token for siriNetwork;
  swift_unknownObjectRetain();
  if (v43 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v44, static Logger.siriNetwork);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_1(v46))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_37_4();
    _os_log_impl(v47, v48, v49, v50, v51, 2u);
    v52 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v52);
  }

  if (v41)
  {
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v53 = OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
    OUTLINED_FUNCTION_91_1(v54, 1);
    *(v55 + 24) = xmmword_2235F01E0;
    OUTLINED_FUNCTION_25_5(&type metadata for NetworkConnectionError);
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
    *v56 = v53;
    *(v56 + 24) = xmmword_2235F01F0;
    v41();
    swift_unknownObjectRelease();
LABEL_15:
    OUTLINED_FUNCTION_60_4();

    return;
  }

  OUTLINED_FUNCTION_60_4();

  swift_unknownObjectRelease();
}

uint64_t sub_223524DDC()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  if (v0[4])
  {
  }

  v1 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t CommunicationProtocolAce.getBufferedOutputDataToWrite()()
{
  v1 = v0;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v3 = v0[7];
  v2 = v0[8];
  switch(v2 >> 62)
  {
    case 1uLL:
      v7 = v3;
      v8 = v3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
LABEL_6:
      if (v7 == v8)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((v2 & 0xFF000000000000) != 0)
      {
LABEL_3:
        v4 = OUTLINED_FUNCTION_32();
        outlined copy of Data._Representation(v4, v5);
        v6 = 0;
      }

      else
      {
LABEL_7:
        OUTLINED_FUNCTION_40_1((v0 + 9), v23);
        OUTLINED_FUNCTION_48_0();
        if (!v10 & v9)
        {
          return OUTLINED_FUNCTION_32();
        }

        v11 = OUTLINED_FUNCTION_32();
        outlined copy of Data._Representation(v11, v12);
        v6 = 1;
      }

      v13 = OUTLINED_FUNCTION_32();
      if (specialized Collection.isEmpty.getter(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_32();
        outlined consume of Data._Representation(v15, v16);
      }

      else if (v6)
      {
        OUTLINED_FUNCTION_25_2();
        swift_beginAccess();
        v17 = v1[9];
        v18 = v1[10];
        *(v1 + 9) = xmmword_2235EF6F0;
        outlined consume of Data?(v17, v18);
      }

      else
      {
        OUTLINED_FUNCTION_40_1((v1 + 40), v25);
        if (v1[41] >> 60 != 15)
        {
          v19 = CommunicationProtocolAce.safetyNetBuffer.modify();
          OUTLINED_FUNCTION_24_1();
          if (!(!v10 & v9))
          {
            OUTLINED_FUNCTION_32();
            Data.append(_:)();
          }

          (v19)(v24, 0);
        }

        v20 = v1[7];
        v21 = v1[8];
        *(v1 + 7) = xmmword_2235EF6F0;
        outlined consume of Data._Representation(v20, v21);
      }

      return OUTLINED_FUNCTION_32();
  }
}

uint64_t NetworkConnectionProvider.send(data:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NWConnection.SendCompletion();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v4 + 16, &v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v24)
  {
    outlined destroy of NetworkConnectionProtocol?(&v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_5;
  }

  outlined init with take of RPCOspreyConnectionProtocol(&v23, v25);
  if (*(v4 + 2099))
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_5:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v15, v16);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v17, v18);
  }

  OUTLINED_FUNCTION_7_1();
  v20 = swift_allocObject();
  v25[6] = a2;
  v21 = v20;
  swift_weakInit();
  OUTLINED_FUNCTION_109();
  v22 = swift_allocObject();
  *(v22 + 2) = v21;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  *v14 = partial apply for closure #1 in NetworkConnectionProvider.send(data:completion:);
  v14[1] = v22;
  (*(v10 + 104))(v14, *MEMORY[0x277CD8DB0], v8);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  (*(v10 + 8))(v14, v8);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = a23;

  return __swift_mutable_project_boxed_opaque_existential_1(&a20, v24);
}

void OUTLINED_FUNCTION_87_1(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2 & 1;
  *(v1 + 8) = 2080;
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

void closure #1 in NetworkConnectionProvider.send(data:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61[-v8];
  v10 = type metadata accessor for NWError();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v61[-v15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  if (*(Strong + 2099) == 1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriNetwork);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v69 = v23;
      *v22 = 136315138;
      v24 = NetworkConnectionProvider.connectionIdentifier.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v69);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_223515000, v20, v21, "Provider - NetworkConnectionProvider [%s]: Failed to send. Connection was cancelled", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DE38F0](v23, -1, -1);
      MEMORY[0x223DE38F0](v22, -1, -1);
    }

    return;
  }

  outlined init with copy of NetworkConnectionProtocol?(a1, v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v16, v9, v10);
    if (one-time initialization token for siriNetwork == -1)
    {
LABEL_16:
      v68 = a4;
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.siriNetwork);
      v39 = *(v11 + 16);
      v39(v14, v16, v10);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v40, v41);
      v67 = v11 + 16;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v66 = a3;
        v44 = v43;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v69 = v65;
        *v44 = 136315394;
        v63 = v40;
        v45 = NetworkConnectionProvider.connectionIdentifier.getter();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v69);
        v62 = v41;
        v48 = v39;
        v49 = v47;

        *(v44 + 4) = v49;
        v39 = v48;
        *(v44 + 12) = 2112;
        lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        v48(v50, v14, v10);
        v51 = _swift_stdlib_bridgeErrorToNSError();
        v52 = *(v11 + 8);
        v52(v14, v10);
        *(v44 + 14) = v51;
        v53 = v64;
        *v64 = v51;
        v54 = v63;
        _os_log_impl(&dword_223515000, v63, v62, "Provider - NetworkConnectionProvider [%s]: Failed to send data with error: %@", v44, 0x16u);
        outlined destroy of NetworkConnectionProtocol?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v53, -1, -1);
        v55 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x223DE38F0](v55, -1, -1);
        v56 = v44;
        a3 = v66;
        MEMORY[0x223DE38F0](v56, -1, -1);
      }

      else
      {

        v52 = *(v11 + 8);
        v52(v14, v10);
      }

      lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v57 = swift_allocError();
      v39(v58, v16, v10);
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v59 = swift_allocError();
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      *v60 = v57;
      *(v60 + 24) = xmmword_2235F01F0;
      a3(v59, 1);

      v52(v16, v10);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  outlined destroy of NetworkConnectionProtocol?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v27 = *(v18 + 2080);
  v28 = __CFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v18 + 2080) = v29;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriNetwork);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v69 = v34;
    *v33 = 136315138;
    v35 = NetworkConnectionProvider.connectionIdentifier.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v69);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_223515000, v31, v32, "Provider - NetworkConnectionProvider [%s]: Sent data successfully", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223DE38F0](v34, -1, -1);
    MEMORY[0x223DE38F0](v33, -1, -1);
  }

  a3(0, 0);
}

void closure #1 in BackgroundConnection.tryToWriteBufferedOutputData(with:)(void *a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void *))
{
  if (one-time initialization token for writeBufferEnd != -1)
  {
    swift_once();
  }

  siri_kdebug_trace(static Constants.Signposts.writeBufferEnd);
  if (a2)
  {
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (v40 >> 60 == 10 && !v41)
      {
        v11 = v40 == 0xA000000000000000 && v38 == 1;
        if (v11 && v39 == 0)
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          __swift_project_value_buffer(v12, static Logger.siriNetwork);
          outlined copy of Data._Representation(a3, a4);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v13, v14))
          {
            outlined consume of Data._Representation(a3, a4);
            goto LABEL_30;
          }

          v15 = swift_slowAlloc();
          *v15 = 134217984;
          v16 = v15;
          v17 = 0;
          switch(a4 >> 62)
          {
            case 1uLL:
              LODWORD(v17) = HIDWORD(a3) - a3;
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_47;
              }

              v17 = v17;
LABEL_44:
              *(v15 + 4) = v17;
              outlined consume of Data._Representation(a3, a4);
              _os_log_impl(&dword_223515000, v13, v14, "Background Connection - Writter: Wrote %ld bytes failed because connection was cancelled", v16, 0xCu);
              v31 = v16;
              break;
            case 2uLL:
              v37 = *(a3 + 16);
              v36 = *(a3 + 24);
              v35 = __OFSUB__(v36, v37);
              v17 = v36 - v37;
              if (!v35)
              {
                goto LABEL_44;
              }

              goto LABEL_48;
            case 3uLL:
              goto LABEL_44;
            default:
              v17 = BYTE6(a4);
              goto LABEL_44;
          }

LABEL_29:
          MEMORY[0x223DE38F0](v31, -1, -1);
LABEL_30:

          if (!a5)
          {
            return;
          }

          v32 = a1;
          goto LABEL_38;
        }
      }

      outlined consume of NetworkConnectionError(v38, v39, *(&v39 + 1), v40, v41);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);
    v25 = a1;
    v13 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (!os_log_type_enabled(v13, v26))
    {
      goto LABEL_30;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = a1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_223515000, v13, v26, "Background Connection - Writter: Error writing data %@", v27, 0xCu);
    outlined destroy of NetworkConnectionProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v28, -1, -1);
    v31 = v27;
    goto LABEL_29;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriNetwork);
  outlined copy of Data._Representation(a3, a4);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = v21;
    v23 = 0;
    switch(a4 >> 62)
    {
      case 1uLL:
        LODWORD(v23) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          JUMPOUT(0x223525F34);
        }

        v23 = v23;
LABEL_35:
        *(v21 + 4) = v23;
        outlined consume of Data._Representation(a3, a4);
        _os_log_impl(&dword_223515000, v19, v20, "Background Connection - Writter: Wrote %ld bytes", v22, 0xCu);
        MEMORY[0x223DE38F0](v22, -1, -1);
        break;
      case 2uLL:
        v34 = *(a3 + 16);
        v33 = *(a3 + 24);
        v35 = __OFSUB__(v33, v34);
        v23 = v33 - v34;
        if (!v35)
        {
          goto LABEL_35;
        }

        goto LABEL_46;
      case 3uLL:
        goto LABEL_35;
      default:
        v23 = BYTE6(a4);
        goto LABEL_35;
    }
  }

  else
  {
    outlined consume of Data._Representation(a3, a4);
  }

  if (a5)
  {
    v32 = 0;
LABEL_38:
    a5(v32);
  }
}

void closure #1 in Connection.setSendPings(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*&Strong[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] && (Strong[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] & 1) == 0)
    {

      BackgroundConnection.setSendPings(_:)(a2 & 1);
    }

    else
    {
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_10_10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void OUTLINED_FUNCTION_51_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39(__n128 a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_39_0()
{
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 3;
}

void OUTLINED_FUNCTION_34_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_4()
{
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[19] = result;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v3[2] = v2;
  v3[20] = v5;
  v3[3] = result;
  v3[4] = v4;
  v3[5] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11()
{
}

uint64_t objectdestroy_155Tm(uint64_t (*a1)(void))
{

  swift_unknownObjectRelease();
  a1(*(v1 + 40));
  v3 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return type metadata accessor for NWError();
}

BOOL OUTLINED_FUNCTION_28_4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t type metadata accessor for NetworkConnectionProvider.StateUpdateHandler(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void OUTLINED_FUNCTION_43_1()
{

  JUMPOUT(0x223DE2460);
}

void OUTLINED_FUNCTION_43_4(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
}

uint64_t objectdestroy_3Tm()
{

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_0(float a1)
{
  *v1 = a1;
}

void OUTLINED_FUNCTION_20_1()
{
}

unint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

unint64_t OUTLINED_FUNCTION_20_5(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v1 + 48) + 8 * result) = v3;
  ++*(v1 + 16);
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v11 = (*(a1 + 48) + v10);
    v12 = v11[1];
    v13 = (*(a1 + 56) + v10);
    v15 = *v13;
    v14 = v13[1];
    *&v50 = *v11;
    *(&v50 + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v16 = OUTLINED_FUNCTION_3_11();
    v17 = outlined init with take of Any(v16, v49);
    OUTLINED_FUNCTION_5_12(v17, v18, v19, v20, v21, v22, v23, v24, v15, v14, v35, v37, v38, v40, v41, v43, v44, v45, v46, v47, v48);
    outlined init with take of Any(v49, &v50);
    v25 = AnyHashable._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v25) & ~*(v7 + 8 * (v25 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_7_11();
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        if (*(v7 + 8 * v26) != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_21:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_4_10();
    *(v7 + v30) |= v31;
    OUTLINED_FUNCTION_2_14(v32, v33, v34, v36, v39, v42);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    *&v49 = *v11;
    *(&v49 + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v14 = OUTLINED_FUNCTION_3_11();
    v15 = outlined init with take of Any(v14, v48);
    OUTLINED_FUNCTION_5_12(v15, v16, v17, v18, v19, v20, v21, v22, v31, v13, v34, v36, v37, v39, v40, v42, v43, v44, v45, v46, v47);
    outlined init with take of Any(v48, &v49);
    v23 = AnyHashable._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v23) & ~*(v7 + 8 * (v23 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_7_11();
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        if (*(v7 + 8 * v24) != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_21:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_4_10();
    *(v7 + v28) |= v29;
    OUTLINED_FUNCTION_2_14(v30, v32, v33, v35, v38, v41);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall BackgroundConnection.setSendPings(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_40_1(v1 + 1096, v5);
  outlined init with copy of MessageCenterBrowserProtocol?(v1 + 1096, &v6, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v7)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 152))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v6, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }
}

Swift::Void __swiftcall CommunicationProtocolAce.setSendPings(_:)(Swift::Bool a1)
{
  v3 = CommunicationProtocolAce.aceDelegate.getter();
  if (v3)
  {
    *(v1 + 248) = a1;
    if (a1)
    {
      if (*(v3 + 1185) == 1 && !*(v1 + 224))
      {
        CommunicationProtocolAce.resumePingTimer()();
      }
    }

    else if (*(v1 + 224))
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);
      v5 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v6 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_17_5();
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_40_2(v8);
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        v14 = OUTLINED_FUNCTION_1_2();
        MEMORY[0x223DE38F0](v14);
      }

      CommunicationProtocolAce.cancelPingTimer()();
    }

    swift_unknownObjectRelease();
  }
}

void *OUTLINED_FUNCTION_25(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{

  return outlined init with copy of MessageCenterEndpoint(v1 + 200, a1 + 16);
}

id OUTLINED_FUNCTION_30_0()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t type metadata accessor for CTServiceDescriptor(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v0 = OUTLINED_FUNCTION_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_71();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t PingInfo.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

Swift::Void __swiftcall CommunicationProtocolAce.resumePingTimer()()
{
  OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v101 = v5;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v87 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_5();
  v95 = v10;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v11);
  v99 = &v87 - v12;
  OUTLINED_FUNCTION_31();
  v102 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_0_0();
  v100 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v94 = v15;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v16);
  v103 = (&v87 - v17);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v18);
  v104 = &v87 - v19;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v20);
  v105 = (&v87 - v21);
  OUTLINED_FUNCTION_31();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v97 = v23;
  v98 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_1();
  v26 = v25 - v24;
  v27 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v96 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_1();
  v32 = v31 - v30;
  v33 = type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_0_0();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_1();
  v39 = v38 - v37;
  if (*(v0 + 248) == 1 && !*(v0 + 224))
  {
    v90 = v8;
    v91 = v3;
    v92 = v1;
    *(v0 + 240) = 0;

    v93 = type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x277D85CA0);
    v106[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_30_3();
    v89 = lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(v40, v41, MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v0;
    v43 = *(v0 + 32);
    v44 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v35 + 8))(v39, v33);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v46 = swift_allocObject();
    v93 = v42;
    swift_weakInit();
    v106[4] = partial apply for closure #1 in CommunicationProtocolAce.resumePingTimer();
    v106[5] = v46;
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 1107296256;
    v106[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v106[3] = &block_descriptor_99;
    v47 = _Block_copy(v106);

    static DispatchQoS.unspecified.getter();
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    v88 = ObjectType;
    v89 = v44;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v47);
    (*(v97 + 8))(v26, v98);
    (*(v96 + 8))(v32, v27);

    v48 = v105;
    Double.dispatchTimeInterval.getter(v105, 1.0);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v49, static Logger.siriNetwork);
    v50 = v100;
    v51 = *(v100 + 16);
    v52 = v104;
    v53 = v102;
    v51(v104, v48, v102);
    v54 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v55 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_6_5();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v58 = swift_slowAlloc();
      v106[0] = v58;
      *v57 = 136315138;
      v59 = v99;
      v51(v99, v52, v53);
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v53);
      v60 = v59;
      v61 = v95;
      outlined init with copy of DataDecompressing?(v60, v95, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v53);
      v63 = v90;
      if (EnumTagSinglePayload == 1)
      {
        v64 = 0xE100000000000000;
        v65 = 45;
      }

      else
      {
        v66 = v61;
        v67 = v103;
        (*(v50 + 32))(v103, v66, v53);
        v98 = v57;
        v51(v94, v67, v53);
        v57 = v98;
        v65 = String.init<A>(describing:)();
        v64 = v68;
        (*(v50 + 8))(v67, v53);
      }

      outlined destroy of NetworkConnectionProtocol?(v99, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
      v69 = v104;
      v104 = *(v50 + 8);
      (v104)(v69, v53);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v106);

      *(v57 + 4) = v70;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v71, v72, v73, v74, v75, v76);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v77 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v77);
      v78 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v78);

      v48 = v105;
    }

    else
    {

      v104 = *(v50 + 8);
      (v104)(v52, v53);
      v63 = v90;
    }

    static DispatchTime.now()();
    DispatchTime.advanced(by:)();
    v79 = v92;
    v80 = *(v91 + 8);
    v81 = OUTLINED_FUNCTION_58_0();
    v80(v81);
    v82 = v103;
    v83 = v88;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v103);
    v84 = v89;
    MEMORY[0x223DE2510](v63, v48, v82, v83);
    v85 = OUTLINED_FUNCTION_26();
    v86 = v104;
    (v104)(v85);
    (v80)(v63, v79);
    *(v93 + 224) = v84;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease_n();
    v86(v48, v53);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_2235277F0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void Double.dispatchTimeInterval.getter(uint64_t *a1@<X8>, double a2@<D0>)
{
  v3 = a2 * 1000.0;
  if (a2 * 1000.0 <= -9.22337204e18)
  {
    v6 = MEMORY[0x277D85178];
LABEL_11:
    v4 = 0x8000000000000000;
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    if (v3 <= -9.22337204e18)
    {
      __break(1u);
      goto LABEL_18;
    }

    v4 = v3;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = MEMORY[0x277D85178];
      goto LABEL_12;
    }
  }

  v5 = round(a2);
  if (v5 <= -9.22337204e18)
  {
    v6 = MEMORY[0x277D85188];
    goto LABEL_11;
  }

  if (v5 >= 9.22337204e18)
  {
    v6 = MEMORY[0x277D85188];
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v4 = v5;
  v6 = MEMORY[0x277D85188];
LABEL_12:
  *a1 = v4;
  v7 = *v6;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(*(v8 - 8) + 104);

  v9(a1, v7, v8);
}

uint64_t closure #1 in CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CommunicationProtocolAce.aceHeaderTimeoutFired(fromTimer:afterTimeout:)(a1, a3);
  }

  return result;
}

void CommunicationProtocolAce.aceHeaderTimeoutFired(fromTimer:afterTimeout:)(uint64_t a1, double a2)
{
  v3 = *(v2 + 192);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = CommunicationProtocolAce.aceDelegate.getter();
    if (v6)
    {
      v7 = v6;
      *(v2 + 192) = 0;
      swift_unknownObjectRelease();
      v15 = *(v2 + 200);
      v16 = __CFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        __break(1u);
        goto LABEL_43;
      }

      *(v2 + 200) = v17;
      OUTLINED_FUNCTION_37_1(v2 + 112, v8, v9, v10, v11, v12, v13, v14, v67);
      outlined init with copy of DataDecompressing?(v2 + 112, v68, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      if (v69)
      {
        swift_unknownObjectRelease();
        outlined destroy of NetworkConnectionProtocol?(v68, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
        return;
      }

      outlined destroy of NetworkConnectionProtocol?(v68, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      if (*(v7 + 1185) != 1 || *(v2 + 200) > 1uLL)
      {
LABEL_12:
        OUTLINED_FUNCTION_66_0();
        if (v4)
        {
LABEL_14:
          v18 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v18, static Logger.siriNetwork);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.error.getter();
          v21 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v21, v22))
          {
            OUTLINED_FUNCTION_17_5();
            v23 = swift_slowAlloc();
            OUTLINED_FUNCTION_11_7(v23);
            OUTLINED_FUNCTION_15_0();
            _os_log_impl(v24, v25, v26, v27, v28, 2u);
            v29 = OUTLINED_FUNCTION_6_15();
            MEMORY[0x223DE38F0](v29);
          }

          lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
          OUTLINED_FUNCTION_10_0();
          v30 = swift_allocError();
          OUTLINED_FUNCTION_79_0(v30, v31);
          v32 = OUTLINED_FUNCTION_68_1();
          BackgroundConnection.fallbackToNextConnectionMethod(error:)(v32);

LABEL_17:
          swift_unknownObjectRelease();
          return;
        }

LABEL_43:
        OUTLINED_FUNCTION_0_8();
        swift_once();
        goto LABEL_14;
      }

      if (BackgroundConnection.isUsingPop()())
      {
        OUTLINED_FUNCTION_66_0();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v33, static Logger.siriNetwork);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        v36 = OUTLINED_FUNCTION_16_0();
        if (!os_log_type_enabled(v36, v37))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_17_5();
        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = "CommunicationProtocol - Ace header: Ace header timeout while using POP Connection Method";
LABEL_29:
        _os_log_impl(&dword_223515000, v34, v35, v39, v38, 2u);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
LABEL_30:

        goto LABEL_12;
      }

      if (BackgroundConnection.isUsingFlorence()())
      {
        OUTLINED_FUNCTION_66_0();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v40, static Logger.siriNetwork);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        v41 = OUTLINED_FUNCTION_16_0();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_17_5();
        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = "CommunicationProtocol - Ace header: Ace header timeout while using Florence";
        goto LABEL_29;
      }

      if (BackgroundConnection.isUsingPeer()() && AFDeviceSupportsWiFiLPASMode() && BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality()())
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_66_0();
      if (!v4)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.siriNetwork);
      v44 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v45 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_17_5();
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v47);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v48, v49, v50, v51, v52, v53);
        v54 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v54);
      }

      CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(30.0 - a2);
      if ((*(v7 + 1185) & 1) == 0)
      {
        goto LABEL_17;
      }

      v55 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v56 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_17_5();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_7(v58);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        v64 = OUTLINED_FUNCTION_6_15();
        MEMORY[0x223DE38F0](v64);
      }

      lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
      OUTLINED_FUNCTION_10_0();
      v65 = swift_allocError();
      *v66 = 0u;
      *(v66 + 16) = 0u;
      *(v66 + 32) = 1;
      BackgroundConnection.didEncounterIntermediateError(_:)(v65);
      swift_unknownObjectRelease();
    }
  }
}

void specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_89_0();
  if (v35)
  {
    Hasher.init(_seed:)();
    v37 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v37);
    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v40 = ~v39;
    while (1)
    {
      v41 = v38 & v40;
      if (((*(v34 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v40)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = *v33;

        specialized _NativeSet.insertNew(_:at:isUnique:)(v48, v41, isUniquelyReferenced_nonNull_native);
        *v33 = v50;
        goto LABEL_13;
      }

      v42 = NWConnection.identifier.getter();
      v43 = NWConnection.identifier.getter();

      if (v42 == v43)
      {
        break;
      }

      v38 = v41 + 1;
    }

    *v30 = *(*(v34 + 48) + 8 * v41);

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_132();

  v36 = __CocoaSet.member(for:)();

  if (v36)
  {

    type metadata accessor for NWConnection();
    swift_dynamicCast();
    *v30 = a9;
LABEL_15:
    OUTLINED_FUNCTION_66_3();
    return;
  }

  v44 = __CocoaSet.count.getter();
  if (!__OFADD__(v44, 1))
  {
    _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Network12NWConnectionC_Tt1g5(v31, v44 + 1);
    v46 = v45;
    v49 = v45;
    if (*(v45 + 24) <= *(v45 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
      v46 = v49;
    }

    specialized _NativeSet._unsafeInsertNew(_:)();

    *v33 = v46;
LABEL_13:
    *v30 = v32;
    goto LABEL_15;
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();

        v16 = NWConnection.identifier.getter();
        MEMORY[0x223DE29A0](v16);
        result = Hasher._finalize()();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd, &_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();

        specialized BackgroundConnectionProtocol.hash(into:)(v24);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMd, &_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x223DE2980](v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v26);
        result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = *(v5 + 48) + 40 * v18;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_10:
      v13 = *v3;
      Hasher.init(_seed:)();
      v14 = NWConnection.identifier.getter();
      MEMORY[0x223DE29A0](v14);
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for NWConnection();

        v17 = NWConnection.identifier.getter();
        v18 = NWConnection.identifier.getter();

        if (v17 == v18)
        {
          goto LABEL_15;
        }

        v15 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd);
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = result;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }
}

{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_10:
      v15 = *v3;
      v16 = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        outlined init with copy of AnyHashable(*(v15 + 48) + 40 * a2, v19);
        v18 = MEMORY[0x223DE26B0](v19, result);
        outlined destroy of AnyHashable(v19);
        if (v18)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(result + 16);
  *v10 = *result;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(result + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v4;
}

uint64_t ConnectionType.stringRawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x69462D6957;
      break;
    case 2:
      result = 1312905047;
      break;
    case 3:
      result = 0x4E41525455;
      break;
    case 4:
      result = 0x31414D4443204732;
      break;
    case 5:
      result = 0x53525047204732;
      break;
    case 6:
      result = 0x65676445204732;
      break;
    case 7:
      result = 0x414D444357204733;
      break;
    case 8:
      v2 = 0x445348204733;
      goto LABEL_21;
    case 9:
      v2 = 0x555348204733;
LABEL_21:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x4150000000000000;
      break;
    case 0xA:
    case 0xB:
    case 0xC:
      result = 0x44564520414D4443;
      break;
    case 0xD:
      result = 1146114632;
      break;
    case 0xE:
      result = 4543564;
      break;
    case 0xF:
      result = 0x41534E524E204735;
      break;
    case 0x10:
      result = 0x524E204735;
      break;
    case 0x11:
      result = 0x504354504DLL;
      break;
    case 0x12:
      result = 0x796C6C654264654CLL;
      break;
    case 0x13:
      result = 5456969;
      break;
    case 0x14:
      result = 5263184;
      break;
    case 0x15:
      result = 0x65636E65726F6C46;
      break;
    case 0x16:
      result = 0x6C61636F4CLL;
      break;
    case 0x17:
      result = 0x504354504D574ELL;
      break;
    case 0x18:
      result = 0x6365737069;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_72_2(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
}

uint64_t lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined init with copy of ConnectionSnapshotReport?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void static NetworkManager.releaseDormancySuspendAssertion(_:)(uint64_t *a1)
{
  if (a1 && *a1)
  {
    swift_unknownObjectRelease();
    *a1 = 0;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v2 = type metadata accessor for Logger();
    oslog = OUTLINED_FUNCTION_17(v2, static Logger.siriNetwork);
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      *v4 = 0;
      _os_log_impl(&dword_223515000, oslog, v3, "NetworkManager - Assertion: Released dormancy suspension assertion.", v4, 2u);
      OUTLINED_FUNCTION_12();
    }
  }
}

void CommunicationProtocolAce.cancelPingTimer()()
{
  if (*(v0 + 224))
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
    v4 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v5 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_17_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v7);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v13);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v1 + 224) = 0;

    swift_unknownObjectRelease();
  }
}

void NetworkConnectionProvider.handleStateUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v139 = type metadata accessor for ConnectionAnalysisInfo(0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v8 = OUTLINED_FUNCTION_11_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_35_0();
  v124 = v10;
  OUTLINED_FUNCTION_31();
  v127 = type metadata accessor for NWError();
  OUTLINED_FUNCTION_0_0();
  v126 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
  v16 = OUTLINED_FUNCTION_11_1(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v117 - v18;
  v20 = type metadata accessor for NWConnection.State();
  OUTLINED_FUNCTION_0_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v117 - v27;
  v133 = NetworkConnectionProvider.connectionIdentifier.getter();
  v30 = v29;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.siriNetwork);
  v33 = *(v22 + 16);
  v136 = v3;
  v34 = v32;
  (v33)(v28, v3, v20);

  v132 = v34;
  v35 = Logger.logObject.getter();
  LODWORD(v34) = static os_log_type_t.default.getter();
  v135 = v1;

  v131 = v34;
  v36 = os_log_type_enabled(v35, v34);
  v134 = v22;
  v138 = v30;
  if (v36)
  {
    v119 = v35;
    OUTLINED_FUNCTION_4_3();
    v37 = swift_slowAlloc();
    v118 = OUTLINED_FUNCTION_116();
    v143 = v118;
    *v37 = 136315650;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v30, &v143);
    *(v37 + 12) = 2080;
    (v33)(v19, v28, v20);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v20);
    v41 = v130;
    outlined init with copy of NetworkConnectionProtocol?(v19, v130, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v20);
    v120 = v33;
    if (EnumTagSinglePayload == 1)
    {
      v43 = 0xE100000000000000;
      v44 = 45;
      v45 = v135;
      v46 = v134;
    }

    else
    {
      v46 = v134;
      v50 = v140;
      OUTLINED_FUNCTION_45();
      v51();
      (v33)(v128, v50, v20);
      OUTLINED_FUNCTION_80();
      v44 = String.init<A>(describing:)();
      v43 = v52;
      (*(v46 + 8))(v50, v20);
      v45 = v135;
    }

    outlined destroy of NetworkConnectionProtocol?(v19, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
    v53 = v28;
    v48 = *(v46 + 8);
    v48(v53, v20);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v143);
    OUTLINED_FUNCTION_115();
    *(v37 + 14) = v19;
    *(v37 + 22) = 2080;
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v45 + 16, v144, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    outlined init with copy of NetworkConnectionProtocol?(v144, &v145, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v146)
    {
      outlined init with take of RPCOspreyConnectionProtocol(&v145, v142);
      outlined init with copy of RPCOspreyConnectionProtocol(v142, &v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      __swift_destroy_boxed_opaque_existential_0(v142);
    }

    else
    {
      v56 = 0xE100000000000000;
      v54 = 45;
    }

    v49 = v120;
    outlined destroy of NetworkConnectionProtocol?(v144, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v143);
    OUTLINED_FUNCTION_104();

    *(v37 + 24) = v54;
    v57 = v119;
    _os_log_impl(&dword_223515000, v119, v131, "Provider - NetworkConnectionProvider [%s]: State updated to %s. Info: %s", v37, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v47 = v28;
    v48 = *(v22 + 8);
    v48(v47, v20);
    v45 = v135;
    v49 = v33;
  }

  v58 = v140;
  OUTLINED_FUNCTION_45();
  v49();
  v59 = ConnectionProviderState.init(from:)(v58);
  v60 = *(v45 + 1520);
  *(v45 + 1520) = v59;
  v61 = *(v45 + 1528);
  *(v45 + 1528) = v62;
  outlined consume of ConnectionProviderState(v60, v61);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v45 + 16, v144, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  v63 = v137;
  if (!*(&v144[1] + 1))
  {
    outlined destroy of NetworkConnectionProtocol?(v144, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of RPCOspreyConnectionProtocol(v144, &v145);
  if (*(v45 + 2099))
  {
    __swift_destroy_boxed_opaque_existential_0(&v145);
LABEL_16:
    v64 = v138;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_6_5();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v68 = swift_slowAlloc();
      *&v144[0] = v68;
      *v67 = 136315138;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v64, v144);
      OUTLINED_FUNCTION_115();
      *(v67 + 4) = v58;
      _os_log_impl(&dword_223515000, v65, v66, "Provider - NetworkConnectionProvider [%s]: Connection state updated, but connection does not exist or was cancelled", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    else
    {
    }

    goto LABEL_31;
  }

  v69 = v129;
  OUTLINED_FUNCTION_45();
  v49();
  v70 = v69;
  v71 = v134;
  v72 = (*(v134 + 88))(v70, v20);
  if (v72 == *MEMORY[0x277CD8DE8])
  {
    OUTLINED_FUNCTION_93();
    (*(v71 + 96))(v70, v20);
    v73 = v126;
    v74 = v127;
    (*(v126 + 32))(v63, v70, v127);
    OUTLINED_FUNCTION_34_1();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v75, 255, v76, MEMORY[0x277CD8FD0]);
    OUTLINED_FUNCTION_10_0();
    v77 = swift_allocError();
    v78 = *(v73 + 16);
    v78(v79, v63, v74);
    v80 = *(v45 + 2104);
    *(v45 + 2104) = v77;

    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_10_0();
      v81 = swift_allocError();
      v78(v82, v63, v74);
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      OUTLINED_FUNCTION_10_0();
      v83 = swift_allocError();
      *(v84 + 8) = 0;
      *(v84 + 16) = 0;
      *v84 = v81;
      *(v84 + 24) = xmmword_2235F0AA0;
      specialized BackgroundConnection.connectionProvider(_:received:)();
      swift_unknownObjectRelease();
    }

    (*(v73 + 8))(v63, v74);
  }

  else
  {
    v85 = v72;
    if (v72 == *MEMORY[0x277CD8DE0])
    {
      OUTLINED_FUNCTION_93();
      (*(v134 + 96))(v70, v20);
      v86 = v126;
      v87 = v125;
      v88 = v127;
      (*(v126 + 32))(v125, v70, v127);
      OUTLINED_FUNCTION_34_1();
      lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v89, 255, v90, MEMORY[0x277CD8FD0]);
      OUTLINED_FUNCTION_10_0();
      v91 = swift_allocError();
      (*(v86 + 16))(v92, v87, v88);
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      OUTLINED_FUNCTION_10_0();
      v93 = swift_allocError();
      *(v94 + 8) = 0;
      *(v94 + 16) = 0;
      *v94 = v91;
      *(v94 + 24) = xmmword_2235F0A90;
      NetworkConnectionProvider.closeWithError(_:)();

      (*(v86 + 8))(v87, v88);
    }

    else if (v72 == *MEMORY[0x277CD8DD8])
    {
      OUTLINED_FUNCTION_93();
    }

    else if (v72 == *MEMORY[0x277CD8DF8])
    {
      OUTLINED_FUNCTION_93();
      __swift_project_boxed_opaque_existential_1(&v145, v146);
      v95 = NWConnection.identifier.getter();
      OUTLINED_FUNCTION_95(v45 + 56, v144);
      *(v45 + 56) = v95;
      *(v45 + 64) = 0;
      NetworkConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
    }

    else if (v72 == *MEMORY[0x277CD8DD0])
    {
      *(v45 + 2101) = 1;
      specialized ConnectionProviderProtocol.setupStaleConnectionTimer()();
      NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()();
      outlined init with copy of RPCOspreyConnectionProtocol(&v145, v144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      if (swift_dynamicCast())
      {
        MEMORY[0x223DE1A50]();
        v96 = nw_connection_uses_multipath();
        swift_unknownObjectRelease();

        *(v45 + 2100) = v96;
      }

      v100 = v138;
      NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)();
      v101 = v45 + 2064;
      v102 = *(v45 + 2064);
      if (v102)
      {
        v103 = *(v45 + 2072);
        memset(v144, 0, 41);

        v102(v144);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v102, v103);
        v104 = *(v45 + 2064);
      }

      else
      {
        v104 = 0;
      }

      v105 = *(v45 + 2072);
      *v101 = 0;
      *(v45 + 2072) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v104, v105);

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v106, v107))
      {
        swift_slowAlloc();
        *&v144[0] = OUTLINED_FUNCTION_53_0();
        *v101 = 136315650;
        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v100, v144);

        *(v45 + 2068) = v108;
        *(v45 + 2076) = 1024;
        *(v45 + 2078) = *(v45 + 2100);

        *(v45 + 2082) = 2080;
        v109 = v124;
        specialized ConnectionProviderProtocol.connectionAnalysisInfo.getter(v124);
        v110 = v123;
        outlined init with copy of NetworkConnectionProtocol?(v109, v123, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        OUTLINED_FUNCTION_113(v110);
        if (v111)
        {
          v115 = 0xE700000000000000;
          v113 = 0x6E776F6E6B6E75;
        }

        else
        {
          v112 = v122;
          outlined init with take of ConnectionAnalysisInfo(v110, v122);
          outlined init with copy of ConnectionAnalysisInfo(v112, v121);
          OUTLINED_FUNCTION_50();
          v113 = String.init<A>(describing:)();
          v115 = v114;
          outlined destroy of ConnectionAnalysisInfo(v112);
        }

        outlined destroy of NetworkConnectionProtocol?(v124, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v144);

        *(v101 + 20) = v116;
        _os_log_impl(&dword_223515000, v106, v107, "Provider - NetworkConnectionProvider [%s]: isMPTCP %{BOOL}d, Analysis Info - %s", v101, 0x1Cu);
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      else
      {
      }
    }

    else
    {
      v97 = *MEMORY[0x277CD8DF0];
      OUTLINED_FUNCTION_93();
      if (v85 == v97)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        OUTLINED_FUNCTION_10_0();
        v98 = swift_allocError();
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *v99 = 1;
        *(v99 + 24) = xmmword_2235F01E0;
        NetworkConnectionProvider.closeWithError(_:)();
      }

      else
      {
        v48(v129, v20);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v145);
LABEL_31:
  OUTLINED_FUNCTION_47();
}